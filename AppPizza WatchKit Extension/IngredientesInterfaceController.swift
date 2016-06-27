//
//  IngredientesInterfaceController.swift
//  AppPizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/27/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {

    @IBOutlet var btningre: WKInterfaceButton!
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pina: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    var pizza = Pizzadata()
    
    @IBOutlet var cantidad: WKInterfaceLabel!
    var ingredientesdata = Set<String>()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        pizza = context as! Pizzadata
        pizza.mostrar()
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
    
    @IBAction func ejamon(value: Bool) {
        if( value == true){
            if( agregar("jamon") == false ){
                jamon.setOn(false)
            }
        }else{
            quitar("jamon")
        }
    }

    @IBAction func epepperoni(value: Bool) {
        if( value == true){
            if( agregar("pepperoni") == false ){
                pepperoni.setOn(false)
            }
        }else{
            quitar("pepperoni")
        }
    }
    
    @IBAction func epavo(value: Bool) {
        if( value == true){
            if( agregar("pavo") == false ){
                pavo.setOn(false)
            }
        }else{
            quitar("pavo")
        }
    }
    
    @IBAction func esalchicha(value: Bool) {
        if( value == true){
            if( agregar("salchicha") == false ){
                salchicha.setOn(false)
            }
        }else{
            quitar("salchicha")
        }
    }
    
    @IBAction func eaceituna(value: Bool) {
        if( value == true){
            if( agregar("aceituna") == false ){
                aceituna.setOn(false)
            }
        }else{
            quitar("aceituna")
        }
    }
    
    @IBAction func epimiento(value: Bool) {
        if( value == true){
            if( agregar("pimiento") == false ){
                pimiento.setOn(false)
            }
        }else{
            quitar("pimiento")
        }
    }
    
    @IBAction func epina(value: Bool) {
        if( value == true){
            if( agregar("pina") == false ){
                pina.setOn(false)
            }
        }else{
            quitar("pina")
        }
    }
    @IBAction func eanchoa(value: Bool) {
        if( value == true){
            if( agregar("anchoa") == false ){
                anchoa.setOn(false)
            }
        }else{
            quitar("anchoa")
        }
    }
    func agregar(ingr:String)->Bool{
        var resultAgregar:Bool = false
        if(ingredientesdata.count < 5){
            ingredientesdata.insert(ingr)
            resultAgregar = true
        }else{
            //ingredientesdata.insert(ingr)
            resultAgregar = false
            print("Estimado Cliente solo puede agregar hasta 5 ingredientes. Favor deshabilitar los otros")
        }
        cargar()
        
        return resultAgregar
        
    }
    
    func quitar(ingr:String){
        
        ingredientesdata.remove(ingr)
        cargar()
    }
    
    func cargar(){
        
        //cantidad.text = ingredientesdata.joinWithSeparator(",")
        cantidad.setText(String(ingredientesdata.count))
        pizza.ingredientes = ingredientesdata.joinWithSeparator(",")
        
        if(ingredientesdata.count > 0){
            btningre.setEnabled(true)
        }else{
            btningre.setEnabled(false)

        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return pizza
    }
}
