//
//  SingletonClass.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 22.05.2023.
//

import Foundation

class SingletonView {
    
    static let shared = SingletonView()
    
    var width : CGFloat = 0.0
    var height : CGFloat = 0.0
    
    private init(){}
    
}
