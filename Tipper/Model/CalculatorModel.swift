//
//  CalculatorModel.swift
//  Tipper
//
//  Created by Muhammad Irsyad Rafi on 29/06/21.
//
import  UIKit

struct CalculatorModel {
    
    var discount:Float? = 0.0
    var people:Float? = 2.0
    var price:Float? = 0.0
    
    mutating func setDiscount(_ discount :Float) {
        self.discount = discount
    }
    
    mutating func setPeople(_ people : Float){
        self.people = people
    }
    
    mutating func setPrice(_ price : Float){
        self.price = price * ( 1 + self.discount!) / self.people!
    }
}
