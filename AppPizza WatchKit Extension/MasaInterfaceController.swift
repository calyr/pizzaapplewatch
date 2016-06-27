//
//  MasaInterfaceController.swift
//  AppPizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    
    @IBOutlet var btnmasa: WKInterfaceButton!
    var pizza = Pizzadata()
    @IBOutlet var masa: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //let object = context as! [String:AnyObject]
        print(String(context))
        pizza = context as! Pizzadata
        pizza.tipomasa = "delgada"
        //object.tamaño = "Lo que sea"
        pizza.mostrar()
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func cambiarMasa(value: Float) {
        btnmasa.setEnabled(true)

        if(value == 1){
            masa.setText("delgada")
            pizza.tipomasa = "delgada"
        }else if(value == 2 ){
            masa.setText(" crujiente")
            pizza.tipomasa = "crujiente"

        }else if(value == 3){
            masa.setText(" gruesa")
            pizza.tipomasa = "gruesa"

        }else{
            pizza.tipomasa = ""
            btnmasa.setEnabled(false)

            masa.setText("Favor seleccionar")
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
