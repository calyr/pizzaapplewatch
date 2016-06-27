//
//  ConfirmacionInterfaceController.swift
//  AppPizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionInterfaceController: WKInterfaceController {
    @IBOutlet var tamanio: WKInterfaceLabel!

    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var lista: WKInterfaceLabel!
    
    var pizza = Pizzadata()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
     
        pizza = context as! Pizzadata
        pizza.mostrar()
        tamanio.setText(pizza.tamaño)
        masa.setText(pizza.tipomasa)
        queso.setText(pizza.tipoqueso)
        lista.setText(pizza.ingredientes)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
