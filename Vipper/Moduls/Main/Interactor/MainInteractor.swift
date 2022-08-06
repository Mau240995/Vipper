//
//  MainInteractor.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//

import Foundation
class MainInteractor: MainInteractorInputProtocols{
       var presenter: MainInteractorOutputProtocols?
       
       func getUser() {
           var listUser: [UserEntity] = []
           let user1 = UserEntity(nombre: "Juanita", edad: 20, disponible: false, imagen: "1", genero: "M")
           let user2 = UserEntity(nombre: "Maria", edad: 23, disponible: false, imagen: "2", genero: "M")
           let user3 = UserEntity(nombre: "Mayra", edad: 22, disponible: false, imagen: "3", genero: "M")
           let user4 = UserEntity(nombre: "Jose", edad: 21, disponible: false, imagen: "4", genero: "H")
           let user5 = UserEntity(nombre: "Manuel", edad: 25, disponible: false, imagen: "5", genero: "H")
           let user6 = UserEntity(nombre: "Ernesto", edad: 24, disponible: false, imagen: "6", genero: "H")
           listUser.append(user1)
           listUser.append(user2)
           listUser.append(user3)
           listUser.append(user4)
           listUser.append(user5)
           listUser.append(user6)
           
           presenter?.sendUser(user: listUser)
           
           
       }
       
       func getGenderUser(genero: Int) {
           
       }
       
       
   }
