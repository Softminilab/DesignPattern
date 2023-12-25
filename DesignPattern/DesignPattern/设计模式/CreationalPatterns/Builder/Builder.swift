//
//  Builder.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/11.
//

import Foundation

protocol Builder {
    func buildProductA()
    func buildProductB()
    func buildProductC()
}

class ConcreteBuilder1: Builder {
    private var product = Product1()
    
    func reset() {
        product = Product1()
    }
    
    func buildProductA() {
        product.addPart(part: #function)
    }
    
    func buildProductB() {
        product.addPart(part: #function)
    }
    
    func buildProductC() {
        product.addPart(part: #function)
    }
    
    func retrieveProduct() -> Product1 {
        let product = self.product
        reset()
        return product
    }
}

class Product1 {
    private var products = [String]()
    
    deinit {
        Swift.print(#function + "deinit...")
    }
    
    func addPart(part: String) {
        products.append(part)
    }
    
    func print() {
        products.forEach { Swift.print($0) }
    }
}

class Director {
    private var builder: Builder? = nil
    
    func update(builder: Builder) {
        self.builder = builder
    }
    
    func buildMinimalViableProduct() {
        builder?.buildProductA()
    }
    
    func buildFullFeaturedProduct() {
        builder?.buildProductA()
        builder?.buildProductB()
        builder?.buildProductC()
    }
}
