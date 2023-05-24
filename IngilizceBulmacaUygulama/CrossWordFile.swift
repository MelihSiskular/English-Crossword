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
    let TurkishWordS : Int //Veya String yapar direk kelimeleri burada eklerim!
    //Oranlar için bu değerler lazım Int olarak bu kalsın
    let TurkishWordsArray : [String] //kelimeleri tek tek hepsini burada gireceğiz!  Büyük küçük önemli değil sonra lower/uppercase ile ayarlarız!
}

let bulmacalar :[Bulmaca] = [
    Bulmaca(title: "Bulmaca 1", image: UIImage(named: "Bulmaca 1")!, score: 0, TurkishWordS: 11, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 2", image: UIImage(named: "Bulmaca 2")!, score: 0, TurkishWordS: 12, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 3", image: UIImage(named: "Bulmaca 3" )!, score: 0, TurkishWordS: 10, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 4", image: UIImage(named: "Bulmaca 4")!, score: 0, TurkishWordS: 11, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 5", image: UIImage(named: "Bulmaca 5")!, score: 0, TurkishWordS: 12, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 6", image: UIImage(named: "Bulmaca 6")!, score: 0, TurkishWordS: 9, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 7", image: UIImage(named: "Bulmaca 7")!, score: 0, TurkishWordS: 10, TurkishWordsArray: <#[String]#>),
    Bulmaca(title: "Bulmaca 8", image: UIImage(named: "Bulmaca 8")!, score: 0, TurkishWordS: 11, TurkishWordsArray: <#[String]#>)

]
