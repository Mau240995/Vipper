//
//  UserEntity.swift
//  Vipper
//
//  Created by user217123 on 8/5/22.
//


class UserEntity {
    var nombre: String
    var edad: Int
    var disponible : Bool
    var imagen: String
    var genero: String
    
    internal init(nombre: String,edad: Int,disponible: Bool
                  ,imagen: String,genero: String){
        self.nombre = nombre
        self.edad = edad
        self.disponible = disponible
        self.imagen = imagen
        self.genero = genero
    }
}
