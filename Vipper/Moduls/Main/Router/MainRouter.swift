//
//  MainRouter.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//

import Foundation
import UIKit
class MainRouter: MainRouterProtocols{
    static func createdModule() -> UIViewController {
            //return UIViewController()
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let view = storyboard.instantiateViewController(identifier: "Main") as! MainViewProtocols
            let presenter: MainPresenterProtocols & MainInteractorOutputProtocols = MainPresenter()
            var interactor: MainInteractorInputProtocols = MainInteractor()
        
            let router: MainRouterProtocols = MainRouter()
        
            //Conexiones
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            interactor.presenter = presenter
            
            return view as! UIViewController
        }
        
        func pushCreen() -> UIViewController {
            return UIViewController()
        }
        
        func getStoryboard() -> UIStoryboard{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            return storyboard
        }
    }

