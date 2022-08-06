//
//  MainPresenter.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//

import Foundation
import UIKit
class MainPresenter : MainPresenterProtocols, MainInteractorOutputProtocols{
    func responseInteractor() {
    }
    
    func sendUser(user: [UserEntity]) {
        view?.createdTable(user: user)
    }
    
    var router: MainRouterProtocols?
    
    var view: MainViewProtocols?
    
    var interactor: MainInteractorInputProtocols?
    
    func getUser() {
        interactor!.getUser()
    }
    
    func getGenderUser(genero: Int) {
        
    }
    
    func pushScreen() -> UIViewController {
        let vc = UIViewController()
        return vc
    }
    
    
}

