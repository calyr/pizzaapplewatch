//
//  QuesoInterfaceController.swift
//  AppPizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    var pickerData : [String] = [String]()
    var pizza = Pizzadata()
    @IBOutlet var itemPicker: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pickerData = ["mozarela", "cheddar", "parmesano", "sin queso"]
        
        let pickerItems: [WKPickerItem] = pickerData.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            pickerItem.caption = $0
            //pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        
        pizza = context as! Pizzadata
        pizza.tipoqueso = pickerData[0]
        pizza.mostrar()
        
        // Configure interface objects here.
    }

    @IBAction func seleccionQueso(value: Int) {
        pizza.tipoqueso = pickerData[value]
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return pizza
    }

}
