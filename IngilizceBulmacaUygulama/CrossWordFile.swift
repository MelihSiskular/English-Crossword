//
//  CrossWordFile.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 24.05.2023.
//

import Foundation
import UIKit

struct Bulmaca{
    let title: String
    let image : UIImage
    let score : Int
    let TurkishWordsArray : [[String]] //kelimeleri tek tek hepsini burada gireceğiz!  Büyük küçük önemli değil sonra lower/uppercase ile ayarlarız!
}

let bulmacalar :[Bulmaca] = [
    Bulmaca(title: "Günler", image: UIImage(named: "Bulmaca 1")!, score: 0, TurkishWordsArray: [["Pazartesi","Monday"],["Salı","Tuesday"],["Çarşamba","Wednesday"],["Perşembe","Thursday"],["Cuma","Friday"],["Cumartesi","Saturday"],["Pazar","Sunday"],["Hafta İçi","Weekdays"],["Hafta Sonu","Weekend"],["Dün","Yesterday"],["Bugün","Today"],["Yarın","Tomorrow"],["Gün","Day"],["Günlük","Daily"],["Haftalık","Weekly"],["Hafta","Week"]
                                                                                    ]),
                                                                    
    Bulmaca(title: "Bulmaca 2", image: UIImage(named: "Bulmaca 2")!, score: 0, TurkishWordsArray: [
    ["Key","Value"]
    ]),
    
    
    Bulmaca(title: "Bulmaca 3", image: UIImage(named: "Bulmaca 3" )!, score: 0, TurkishWordsArray: [
        ["Key","Value"]
        ]),
    
    
    Bulmaca(title: "Bulmaca 4", image: UIImage(named: "Bulmaca 4")!, score: 0, TurkishWordsArray: [
        ["Key","Value"]
        ]),
    
    
    Bulmaca(title: "Bulmaca 5", image: UIImage(named: "Bulmaca 5")!, score: 0, TurkishWordsArray: [
        ["Key","Value"]
        ]),
    
    
    Bulmaca(title: "Bulmaca 6", image: UIImage(named: "Bulmaca 6")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
        ]),
    
    
    Bulmaca(title: "Bulmaca 7", image: UIImage(named: "Bulmaca 7")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
        ]),
    
    
    Bulmaca(title: "Bulmaca 8", image: UIImage(named: "Bulmaca 8")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
        ])

]
