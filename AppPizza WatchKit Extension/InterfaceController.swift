//
//  InterfaceController.swift
//  AppPizza WatchKit Extension
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btntam: WKInterfaceButton!
    @IBOutlet var tamaño: WKInterfaceLabel!
    var tamañodata : [String:String] = [ "tamano":"Chica" ]
    var pizza = Pizzadata()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza.tamaño = "Chica"
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func tamañoPizza(value: Float) {
        btntam.setEnabled(true)

        if(value == 1){
            tamaño.setText("Chica")
            pizza.tamaño =  "Chica"
        }else if(value == 2 ){
           tamaño.setText("Mediana")
            pizza.tamaño =  "Mediana"

        }else if(value == 3){
            tamaño.setText("Grande")
            pizza.tamaño =  "Grande"
        }else{
            pizza.tamaño = ""
            tamaño.setText("Favor seleccionar")
             btntam.setEnabled(false)
        }
        
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        
        return pizza
    }

}
