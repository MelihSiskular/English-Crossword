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
    let locationXY : [[CGFloat]] ///  İlk değer = X      İkinci değer = Y
    let isVerticalArrays : [Bool]
}

let width = SingletonView.shared.width
let height = SingletonView.shared.height

let bulmacalar :[Bulmaca] = [
    Bulmaca(title: "Günler", image: UIImage(named: "Bulmaca 1")!, score: 0, TurkishWordsArray: [["Pazartesi","Monday"],["Salı","Tuesday"],["Çarşamba","Wednesday"],["Perşembe","Thursday"],["Cuma","Friday"],["Cumartesi","Saturday"],["Pazar","Sunday"],["Hafta İçi","Weekdays"],["Hafta Sonu","Weekend"],["Dün","Yesterday"],["Bugün","Today"],["Yarın","Tomorrow"],["Gün","Day"],["Günlük","Daily"],["Haftalık","Weekly"],["Hafta","Week"]
                                                                                    ],
            locationXY: [
               
    [width * 0.1,width * 0.84],
    [width * 0.45,width * 1.54],
    [width * 0.31,width * 0.98],
    [width * 1.15,width * 0.91],
    [width * 0.1,width * 1.4],
    [width * 0.87,width * 1.12],
    [width * 0.73,width * 1.33],
    [width * 0.17,width * 1.12],
    [width * 0.31,width * 0.98],
    [width * 0.87,width * 0.98],
    [width * 0.1,width * 0.7],
    [width * 0.17,width * 0.63],
    [width * 1.15,width * 1.26],
    [width * 0.87,width * 1.4],
    [width * 0.38,width * 1.68],
    [width * 0.24,width * 1.26]
            ],
            isVerticalArrays: [false,false,false,true,false,false,true,false,true,true,false,true,false,false,false,false]),
                    
    
    
    
    Bulmaca(title: "Sayılar", image: UIImage(named: "Bulmaca 2")!, score: 0, TurkishWordsArray: [
        ["Sıfır","Zero"],["Bir","One"],["İki","Two"],["Üç","Three"],["Dokuz","Nine"],["On","Ten"],["On Bir","Eleven"],["On İki","Twelve"],["On Beş","Fifteen"],[" Yirmi ","Twenty"],["Yirmi Üç","TwentyThree"],["Kırk Dört","FortyFour"],["Seksen","Eighty"],["Yüz","OneHundred"],["Birinci","First"],["Yedinci","Seventh"]],
            
            locationXY: [[SingletonView.shared.width * 0.1]],
            isVerticalArrays: []
           ),
    
    
    
    
    Bulmaca(title: "Bulmaca 3", image: UIImage(named: "Bulmaca 3" )!, score: 0, TurkishWordsArray: [
        ["Key","Value"]], locationXY: [[]],
            isVerticalArrays: []
           
           ),
    
    
    
    
    
    Bulmaca(title: "Bulmaca 4", image: UIImage(named: "Bulmaca 4")!, score: 0, TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: []
           ),
    
    
    
    
    
    
    Bulmaca(title: "Bulmaca 5", image: UIImage(named: "Bulmaca 5")!, score: 0, TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: []
           ),
    
    
    
    
    
    
    Bulmaca(title: "Bulmaca 6", image: UIImage(named: "Bulmaca 6")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: []
           ),
    
    
    
    
    
    
    Bulmaca(title: "Bulmaca 7", image: UIImage(named: "Bulmaca 7")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: []
           ),
    
    
    
    
    
    
    Bulmaca(title: "Bulmaca 8", image: UIImage(named: "Bulmaca 8")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: [])

]
