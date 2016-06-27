//
//  Pizzadata.swift
//  AppPizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit

class Pizzadata: NSObject {
    
    var tamaño = ""
    var tipomasa = ""
    var tipoqueso = ""
    var ingredientes = ""
    
    func mostrar(){
        print("Tamaño = \(tamaño)")
        print("Tipo masa = \(tipomasa)")
        print("Tipo queso = \(tipoqueso)")
        print("Ingredientes = \(ingredientes)")
    }
    
}
