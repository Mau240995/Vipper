//
//  MainView.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//

import UIKit

class MainView: UIViewController {

    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var key: UIBarButtonItem!
    @IBOutlet weak var selected: UISegmentedControl!
    var cantidadLlaves: Int = 3
    var presenter : MainPresenterProtocols?
    static var listUsers: [UserEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configView()
        // Do any additional setup after loading the view.
    }
    private func configView(){
        self.key.title = "\(cantidadLlaves) 🔑"
        self.presenter?.getUser()
    }
    private func startViewData(users:[UserEntity]){
        MainView.listUsers = users
        self.collection.reloadData()
    }

    @IBAction func selectGender(_ sender: Any) {
       let selection = selected.selectedSegmentIndex
        self.presenter?.getGenderUser(genero: selection)
        
        
    }
   

}
extension MainView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MainView.listUsers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var user: UserEntity?
        user = MainView.listUsers[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.lblLastTime.text = "1hr ago"
        cell.lblYears.text = user?.nombre
        cell.imagFirst.image = UIImage(named: user!.imagen)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowLayout?.minimumInteritemSpacing ?? 0.0) +
        (flowLayout?.sectionInset.left ?? 0.0) +
        (flowLayout?.sectionInset.right ?? 0.0)
        
        let size: CGFloat = (collection.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size + 150)
    }
}

extension MainView: MainViewProtocols{
    func showError() {
    }
    
    func showSucces() {
    }
    
    func createdTable(user: [UserEntity]) {
        self.startViewData(users: user)
    }
    
    
}
