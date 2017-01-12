//
//  ViewController.swift
//  09_Swift
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPrueba: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var persona:Persona;
        persona = Persona();
        persona.nombre = "Pepe";
        persona.apellidos = "Flores"
        persona.edad = 33;
        persona.telefono = "3213213123";
        persona.casado = false;
        persona.peso=33.9;
        persona.imprimirDatos();
        
        let persona2 = Persona(nombre: "Irene", apellidos: "Paca", telefono: "8738912739", edad: 22, peso: 333, casado: false);
        persona2.imprimirDatos()
        
        var i = 0
        while i<=10 {
            print(i)
            i += 1
            
        }
        print("-----")
        for i in 1...10 {
            print(i)
        }
        
        //Arrays
        let listaDeNumeros = [1,2,3,4,5]
        var listaDeNombres:[String] = ["Pepe","Mari","Pili", "Antonia"]
        
        for numeros in listaDeNumeros {
            print(numeros)
        }
        for nombre in listaDeNombres {
            print(nombre)
        }
        listaDeNombres.append("Maria")
        listaDeNombres.remove(at: 0)
        listaDeNombres[0] = "Silvia Cambiada"
        for nombre in listaDeNombres {
            print(nombre)
        }
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pulsado(_ sender: Any) {
        print("Holaaaaa")
    }
    @IBAction func pulsarBoton(sender:AnyObject){
        print("Hola")
    }
}

