//
//  MainProtocols.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//
import UIKit

protocol MainViewProtocols: AnyObject{
    var presenter: MainPresenterProtocols? {get set}
    func showError()
    func showSucces()
    func createdTable(user: [UserEntity])
}

protocol MainPresenterProtocols: AnyObject{
    var router: MainRouterProtocols?{get set}
    var view: MainViewProtocols? {get set}
    var interactor: MainInteractorInputProtocols? {get set}
    func getUser()
    func getGenderUser(genero: Int)
    func pushScreen() -> UIViewController
}

protocol MainRouterProtocols: AnyObject{
//Este es el protocolo del Router del Módulo Main
    static func createdModule() -> UIViewController
    func pushCreen() -> UIViewController
    
}

protocol MainInteractorOutputProtocols{
    func responseInteractor()
    func sendUser(user: [UserEntity])
}

protocol MainInteractorInputProtocols{
    var presenter: MainInteractorOutputProtocols? {get set} //Recetazo
    func getUser()
    func getGenderUser(genero: Int)
    
}
