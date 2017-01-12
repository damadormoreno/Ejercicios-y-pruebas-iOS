//
//  Persona.swift
//  09_Swift
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import Foundation

class Persona{
    
    var id:Int!; //Si no lleva admirción no puede apuntar a nulo
    var nombre:String!;
    var apellidos:String!;
    var telefono:String!;
    var edad:Int!;
    var peso:Double!;
    var casado:Bool!;
    
    //constructores empiezan por init:
    init() {
        self.nombre = ""
        
    }
    init(nombre:String,apellidos:String,telefono:String,edad:Int,peso:Double,casado:Bool) {
        self.nombre=nombre;
        self.apellidos=apellidos;
        self.telefono=telefono;
        self.edad=edad;
        self.peso=peso;
        self.casado=casado;
        
    }
    
    func getDatos() -> String {
        //let dato1:String = nombre + "," + apellidos;
        let datoInterpolado = "El nombre es: \(nombre) - Los apellidos: \(apellidos) - \(telefono) -\(edad) -\(peso) -\(casado)";
        
        return datoInterpolado;
    }
    
    func imprimirDatos(){
        let datos = getDatos();
        NSLog("%@",datos);
        
    }
    
    func delegate() -> String {
        return getDatos();
    }
    
    
}
