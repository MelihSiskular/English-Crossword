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
    var score : Int
    let TurkishWordsArray : [[String]] //kelimeleri tek tek hepsini burada gireceğiz!  Büyük küçük önemli değil sonra lower/uppercase ile ayarlarız!
    let locationXY : [[CGFloat]] ///  İlk değer = X      İkinci değer = Y
    let isVerticalArrays : [Bool]
    var isCrosswordSolved : Int
}

let width = SingletonView.shared.width
let height = SingletonView.shared.height

var bulmacalar :[Bulmaca] = [
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
            isVerticalArrays: [false,false,false,true,false,false,true,false,true,true,false,true,false,false,false,false], isCrosswordSolved: 0),
                    
    
    
    
    Bulmaca(title: "Sayılar", image: UIImage(named: "Bulmaca 2")!, score: 0, TurkishWordsArray: [
        ["Sıfır","Zero"],["Bir","One"],["İki","Two"],["Üç","Three"],["Dokuz","Nine"],["On","Ten"],["On Bir","Eleven"],["On İki","Twelve"],["On Beş","Fifteen"],[" Yirmi ","Twenty"],["Yirmi Üç","TwentyThree"],["Kırk Dört","FortyFour"],["Seksen","Eighty"],["Yüz","OneHundred"],["Birinci","First"],["Yedinci","Seventh"]],
            
            locationXY: [[width * 0.87,width * 1.05],
                         [width * 0.52,width * 0.7],
                         [width * 0.1,width * 0.91],
                         [width * 0.45,width * 0.91],
                         [width * 0.24,width * 0.77],
                         [width * 0.1,width * 0.91],
                         [width * 0.59,width * 1.33],
                         [width * 0.45,width * 1.47],
                         [width * 0.17,width * 1.68],
                         [width * 0.73,width * 0.91],
                         [width * 0.73,width * 0.63],
                         [width * 1.08,width * 0.63],
                         [width * 0.24,width * 0.98],
                         [width * 0.17,width * 0.77],
                         [width * 0.59,width * 1.19],
                         [width * 0.52,width * 1.33]
                        ],
            isVerticalArrays: [false,true,true,true,true,false,true,false,false,false,true,true,false,false,false,false], isCrosswordSolved: 0
           ),
    
    
    
    
    Bulmaca(title: "Ülkeler/Kıtalar", image: UIImage(named: "Bulmaca 3" )!, score: 0, TurkishWordsArray: [
        ["Arjantin","Argentina"],["Asya","Asia"],["Avustralya","Australia"],["Mısır","Egypt"],["İngiltere","England"],["Avrupa","Europe"],["Fransa","France"],["Almanya","Germany"],["Macaristan","Hungary"],["İrlanda","Ireland"],["Japonya","Japan"],["Meksika","Mexico"],["Polonya","Poland"],["Rusya","Russia"],["İskoçya","Scotland"],["İsviçre","Switzerland"]
    ],
            locationXY: [[width * 0.59,width * 1.61],
                         [width * 0.59,width * 1.4],
                         [width * 0.87,width * 1.26],
                         [width * 0.17,width * 1.68],
                         [width * 1.15,width * 0.63],
                         [width * 0.17,width * 1.33],
                         [width * 1.43,width * 1.12],
                         [width * 1.15,width * 0.77],
                         [width * 0.24,width * 0.77],
                         [width * 0.87,width * 0.98],
                         [width * 0.38,width * 1.4],
                         [width * 1.08,width * 0.63],
                         [width * 0.1,width * 1.54],
                         [width * 0.59,width * 0.77],
                         [width * 0.45,width * 1.05],
                         [width * 0.45,width * 1.05]
                        ],
            isVerticalArrays: [false,true,false,false,true,true,true,false,false,true,false,false,false,true,true,false], isCrosswordSolved: 0
           
           ),
    
    
    
    
    
    Bulmaca(title: "Sıfatlar-1", image: UIImage(named: "Bulmaca 4")!, score: 0, TurkishWordsArray: [
        ["Güzel","Beautiful"],["Büyük","Big"],["Ucuz","Cheap"],["Temiz","Clean"],["Soğuk","Cold"],["Tehlikeli","Dangerous"],["Karanlık","Dark"],["Farklı","Different"],["Zor","Difficult"],["Kirli","Dirty"],["Kolay","Easy"],["Boş","Empty"],["Pahalı","Expensive"],["Hızlı","Fast"],["Şişman","Fat"],["İyi","Good"]
    ],
            locationXY: [[width * 0.17,width * 0.63],
                         [width * 0.1,width * 0.98],
                         [width * 0.59,width * 0.98],
                         [width * 0.1,width * 1.19],
                         [width * 0.1,width * 1.19],
                         [width * 0.8,width * 0.91],
                         [width * 1.01,width * 1.12],
                         [width * 0.1,width * 1.4],
                         [width * 0.59,width * 0.63],
                         [width * 0.1,width * 1.61],
                         [width * 0.52,width * 1.4],
                         [width * 0.38,width * 0.7],
                         [width * 0.17,width * 0.7],
                         [width * 0.31,width * 1.4],
                         [width * 0.59,width * 0.84],
                         [width * 0.8,width * 1.12]],
            isVerticalArrays: [true,false,false,false,true,true,true,false,true,false,true,true,false,true,false,false], isCrosswordSolved: 0
           ),
    
    
    
    
    
    
    Bulmaca(title: "Sıfatlar-2", image: UIImage(named: "Bulmaca 5")!, score: 0, TurkishWordsArray: [
        ["Harika","Great"],["Yüksek","High"],["Sıcak","Hot"],["Aydınlık","Light"],["Uzun","Long"],["Alçak","Low"],["Yeni","New"],["Eski","Old"],["Yoksul","Poor"],["Zengin","Rich"],["Güvenli","Safe"],["Kısa","Short"],["Yavaş","Slow"],["Küçük","Small"],["Güçlü","Strong"],["Uzun","Tall"]
    ],
            locationXY: [[width * 0.52,width * 0.7],
                         [width * 0.17,width * 1.33],
                         [width * 0.38,width * 1.33],
                         [width * 0.1,width * 1.19],
                         [width * 0.59,width * 1.47],
                         [width * 0.38,width * 0.63],
                         [width * 0.87,width * 0.77],
                         [width * 0.66,width * 0.98],
                         [width * 0.52,width * 1.54],
                         [width * 0.17,width * 1.12],
                         [width * 0.66,width * 0.84],
                         [width * 0.38,width * 0.91],
                         [width * 0.66,width * 0.84],
                         [width * 0.38,width * 0.91],
                         [width * 0.17,width * 0.7],
                         [width * 0.38,width * 1.47]],
            isVerticalArrays: [true,false,true,false,true,true,true,false,false,true,false,true,true,false,false,false], isCrosswordSolved: 0
           ),
    
    
    
    
    
    
    Bulmaca(title: "Sıfatlar-3", image: UIImage(named: "Bulmaca 6")!, score: 0,  TurkishWordsArray: [
        ["Berbat","Terrible"],["Çirkin","Ugly"],["Çok","Very"],["Zayıf","Weak"],["Yanlış","Wrong"],["Genç","Young"],["Kızgın","Angry"],["Sıkıcı","Boring"],["Korkutucu","Frightening"],["Mutlu","Happy"],["Lezzetli","Delicious"],["Aç","Hungry"],["Üzgün","Sad"],["Susamış","Thirsty"],["Yorucu","Tiring"],["Endişeli","Worried"]
    ],
            locationXY: [[width * 0.24,width * 0.91],
                         [width * 1.01,width * 1.05],
                         [width * 0.17,width * 1.61],
                         [width * 0.73,width * 1.47],
                         [width * 0.52,width * 0.63],
                         [width * 0.24,width * 1.33],
                         [width * 1.01,width * 1.4],
                         [width * 0.1,width * 1.12],
                         [width * 0.31,width * 1.54],
                         [width * 0.73,width * 1.26],
                         [width * 0.52,width * 1.05],
                         [width * 0.38,width * 1.26],
                         [width * 0.94,width * 1.4],
                         [width * 0.24,width * 0.91],
                         [width * 0.38,width * 0.77],
                         [width * 0.52,width * 0.63]],
            isVerticalArrays: [false,true,false,true,false,false,true,false,false,false,false,true,false,true,false,true], isCrosswordSolved: 0
           ),
    
    
    
    
    
    
    Bulmaca(title: "Renkler", image: UIImage(named: "Bulmaca 7")!, score: 0,  TurkishWordsArray: [
        ["Mavi","Blue"],["Kırmızı","Red"],["Sarı","Yellow"],["Beyaz","White"],["Siyah","Black"],["Yeşil","Green"],["Turuncu","Orange"],["Pembe","Pink"],["Kahverengi","Brown"],["Mor","Purple"],["Gümüş","Silver"],["Altın","Gold"],["Lacivert","NavyBlue"],["Açık Mavi","LightBlue"],["Koyu Kırmızı","DarkRed"],["Gri(UK)","Grey"]
    ],
            locationXY: [[width * 0.8,width * 1.47],
                         [width * 0.24,width * 1.54],
                         [width * 0.59,width * 1.54],
                         [width * 0.31,width * 1.26],
                         [width * 0.73,width * 1.12],
                         [width * 0.59,width * 1.33],
                         [width * 0.1,width * 1.05],
                         [width * 0.31,width * 0.91],
                         [width * 0.1,width * 0.91],
                         [width * 0.45,width * 1.68],
                         [width * 0.24,width * 1.4],
                         [width * 0.73,width * 0.91],
                         [width * 0.38,width * 0.77],
                         [width * 0.73,width * 0.77],
                         [width * 0.45,width * 0.7],
                         [width * 0.59,width * 1.33]],
            isVerticalArrays: [true,false,false,true,false,false,false,true,true,false,false,false,false,true,true,true], isCrosswordSolved: 0
           ),
    
    
    
    
    
    
    Bulmaca(title: "Eşyalar-1", image: UIImage(named: "Bulmaca 8")!, score: 0,  TurkishWordsArray: [
        ["Çanta","Bag"],["Kitap","Book"],["Madeni Para ","Coin"],["Şarj Aleti","Charger"],["Kredi Kartı","CreditCard"],["Günlük","Diary"],["Sözlük","Dictionary"],["Dosya","File"],["Gözlük","Glasses"],["Kulaklık","HeadPhones"],["Kimlik Kartı","İdentityCard"],["Anahtar","Key"],["Makas","Scissors"],["Güneş Gözlüğü","Sunglasses"],["Kağıt Mendil","Tissue"],["Cüzdan","Wallet"]
    ],
            locationXY: [[width * 1.29,width * 0.84],
                         [width * 0.24,width * 0.7],
                         [width * 0.31,width * 0.63],
                         [width * 0.17,width * 1.54],
                         [width * 0.8,width * 0.91],
                         [width * 0.38,width * 1.33],
                         [width * 0.45,width * 1.19],
                         [width * 1.08,width * 0.84],
                         [width * 0.59,width * 0.63],
                         [width * 0.17,width * 1.33],
                         [width * 1.43,width * 0.84],
                         [width * 1.64,width * 1.4],
                         [width * 0.8,width * 0.84],
                         [width * 0.17,width * 0.84],
                         [width * 1.43,width * 1.26],
                         [width * 1.36,width * 1.47]],
            isVerticalArrays: [true,false,true,false,false,true,false,true,true,false,true,true,true,false,false,false], isCrosswordSolved: 0),
    
    
    
    
    Bulmaca(title: "Fiiller-1", image: UIImage(named: "Bulmaca 9")!, score: 0,  TurkishWordsArray: [
        ["Sahip Olmak","Have"],["Söylemek","Say"],["Yapmak","Make"],["Bilmek","Know"],["Düşünmek","Think"],["Almak ","Take"],["Görmek","See"],["Gelmek","Come"],["İstemek","Want"],["Bakmak","Look"],["Kast Etmek","Mean"],["Bulmak","Find"],["Vermek","Give"],["Anlatmak","Tell"],["Çalışmak(iş)","Work"],["Aramak","Call"]
    ],
            locationXY: [[width * 0.59,width * 0.98],
                         [width * 0.24,width * 1.26],
                         [width * 0.73,width * 0.63],
                         [width * 0.59,width * 1.4],
                         [width * 0.52,width * 0.98],
                         [width * 0.38,width * 1.19],
                         [width * 0.24,width * 1.26],
                         [width * 0.52,width * 1.54],
                         [width * 0.52,width * 0.77],
                         [width * 0.38,width * 1.4],
                         [width * 0.73,width * 0.63],
                         [width * 0.66,width * 0.91],
                         [width * 0.73,width * 1.33],
                         [width * 0.38,width * 1.19],
                         [width * 0.52,width * 0.77],
                         [width * 0.17,width * 1.33]
                        ],
            isVerticalArrays: [true,true,true,true,false,false,false,false,true,false,false,true,true,true,false,false], isCrosswordSolved: 0),
    
    
    
    
    Bulmaca(title: "Fiiller-2", image: UIImage(named: "Bulmaca 10")!, score: 0,  TurkishWordsArray: [
        ["Denemek","Try"],["Sormak","Ask"],["İhtiyaç Duymak","Need"],["Hissetmek","Feel"],["Haline Gelmek","Become"],["Ayrılmak","Leave"],["Koymak","Put"],["Kullanmak","Use"],["İzin Vermek","Let"],["Başlamak","Begin"],["Yardım İstemek","Help"],["Konuşmak","Talk"],["Döndürmek","Turn"],["Başlatmak","Start"],["Göstermek","Show"],["Duymak","Hear"]
    ],
            locationXY: [[width * 0.52,width * 1.19],
                         [width * 0.38,width * 1.33],
                         [width * 0.87,width * 0.84],
                         [width * 0.45,width * 0.84],
                         [width * 0.38,width * 0.91],
                         [width * 0.73,width * 0.63],
                         [width * 0.52,width * 1.05],
                         [width * 0.59,width * 0.7],
                         [width * 0.73,width * 0.63],
                         [width * 1.01,width * 0.77],
                         [width * 0.31,width * 1.05],
                         [width * 0.38,width * 1.26],
                         [width * 0.87,width * 0.63],
                         [width * 0.1,width * 1.26],
                         [width * 0.1,width * 1.26],
                         [width * 0.31,width * 1.05],
                         ],
            isVerticalArrays: [false,false,false,true,false,true,true,false,false,true,false,true,true,false,true,true], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Fiiller-3", image: UIImage(named: "Bulmaca 11")!, score: 0,  TurkishWordsArray: [
        ["Oynamak","Play"],["Koşmak","Run"],["Takip Etmek","Follow"],["Beğenmek","Like"],["Yaşamak","Live"],["İnanmak","Believe"],["Tutmak","Hold"],["Getirmek","Bring"],["Meydana Gelmek","Happen"],["Yazmak","Write"],["Sağlamak","Provide"],["Oturmak","Sit"],["Ayakta Durmak","Stand"],["Kaybetmek","Lose"],["Kazanmak","Win"],["Ödemek","Pay"]
    ],
            locationXY: [[width * 0.24,width * 1.26],
                         [width * 0.8,width * 1.19],
                         [width * 0.24,width * 0.84],
                         [width * 1.29,width * 0.63],
                         [width * 1.08,width * 0.84],
                         [width * 0.52,width * 1.12],
                         [width * 1.08,width * 0.7],
                         [width * 0.52,width * 1.12],
                         [width * 0.94,width * 0.84],
                         [width * 0.59,width * 0.84],
                         [width * 0.24,width * 1.26],
                         [width * 0.52,width * 0.98],
                         [width * 0.8,width * 0.91],
                         [width * 0.38,width * 1.19],
                         [width * 1.22,width * 0.7],
                         [width * 0.1,width * 1.47]],
            isVerticalArrays: [true,false,false,true,false,false,true,true,true,true,false,false,false,true,false,false], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Fiiller-4", image: UIImage(named: "Bulmaca 12")!, score: 0,  TurkishWordsArray: [
        ["Buluşmak","Meet"],["İçermek","include"],["Devam Etmek","Continue"],["Kurmak","Set"],["Öğrenmek","Learn"],["Değiştirmek","Change"],["Yol Göstermek","Lead"],["Anlamak","Understand"],["İzlemek","Watch"],["Hareket Etmek","Move"],["Durmak","Stop"],["Oluşturmak","Create"],["Konuşmak","Speak"],["Okumak","Read"],["İzin Vermek","Allow"],["Eklemek","Add"]
    ],
            locationXY: [[width * 0.31,width * 1.26],
                         [width * 0.31,width * 1.12],
                         [width * 0.38,width * 0.77],
                         [width * 0.73,width * 0.7],
                         [width * 0.59,width * 0.98],
                         [width * 0.38,width * 0.77],
                         [width * 1.29,width * 1.26],
                         [width * 0.87,width * 0.91],
                         [width * 0.73,width * 1.33],
                         [width * 0.31,width * 1.26],
                         [width * 1.15,width * 1.05],
                         [width * 0.8,width * 1.19],
                         [width * 1.15,width * 1.05],
                         [width * 0.66,width * 0.91],
                         [width * 1.15,width * 1.26],
                         [width * 0.73,width * 1.54]],
            isVerticalArrays: [false,false,true,true,false,false,true,true,false,true,false,false,true,true,false,false], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Hava Durumu-1", image: UIImage(named: "Bulmaca 13")!, score: 0,  TurkishWordsArray: [
        ["Hava Durumu","Weather"],["Hava Raporu","WeatherForecast"],["Küresel Isınma","GlobalWarming"],["Yağmurlu","Rainy"],["Sel","Flood"],["Sağnak","DownPour"],["Gökkuşağı","Rainbow"],["Islak","Wet"],["Su Birikintisi","Puddle"],["Bulutlu","Cloudy"],["Parçalı Bulutlu","PartlyCloudy"],["Kasvetli","Gloomy"],["Sisli","Foggy"],["Puslu","Hazy"],["Şimşek","Lightning"]
    ],
            locationXY: [[width * 0.45,width * 0.63],
                         [width * 0.24,width * 0.84],
                         [width * 0.73,width * 1.47],
                         [width * 0.87,width * 0.84],
                         [width * 0.73,width * 0.84],
                         [width * 0.66,width * 1.05],
                         [width * 1.15,width * 1.05],
                         [width * 0.24,width * 0.84],
                         [width * 0.17,width * 1.4],
                         [width * 0.45,width * 1.33],
                         [width * 0.1,width * 1.68],
                         [width * 0.87,width * 1.33],
                         [width * 1.29,width * 1.19],
                         [width * 1.43,width * 1.26],
                         [width * 1.43,width * 1.05],
                         ],
            isVerticalArrays: [true,false,false,true,true,false,true,true,false,true,false,true,false,false,true], isCrosswordSolved: 0),
    
    Bulmaca(title: "Hava Durumu-2", image: UIImage(named: "Bulmaca 14")!, score: 0,  TurkishWordsArray: [
        ["Gök Gürültüsü","Thunder"],["Soğuk","Cold"],["Serin","Chilly"],["Dolu","Hail"],["Karlı","Snowy"],["Tipi","Blizzard"],["Buz","Ice"],["Kış","Winter"],["Yaz","Summer"],["Sonbahar","Autumn"],["İlkbahar","Spring"],["Rüzgarlı","Windy"],["Esinti","Breeze"],["Kasırga","Hurricane"],["Hortum","Tornado"],["Fırtınalı","Stormy"]
    ],
            locationXY: [[width * 0.45,width * 0.84],
                         [width * 1.08,width * 0.91],
                         [width * 0.24,width * 1.05],
                         [width * 0.8,width * 1.26],
                         [width * 1.22,width * 0.7],
                         [width * 0.87,width * 0.77],
                         [width * 0.73,width * 0.98],
                         [width * 0.66,width * 1.33],
                         [width * 0.8,width * 1.26],
                         [width * 0.31,width * 1.47],
                         [width * 0.52,width * 1.68],
                         [width * 0.66,width * 1.33],
                         [width * 0.87,width * 0.77],
                         [width * 0.31,width * 1.05],
                         [width * 0.17,width * 1.26],
                         [width * 0.17,width * 1.19]],
            isVerticalArrays: [false,false,false,true,true,false,false,true,false,false,false,false,true,true,false,true], isCrosswordSolved: 0),
    
    Bulmaca(title: "Hava Durumu-3", image: UIImage(named: "Bulmaca 15")!, score: 0,  TurkishWordsArray: [
        ["Ilık","Warm"],["Sıcak","Hot"],["Güneş","Sun"],["Güneşli","Sunny"],["Güneş Işığı","Sunshine"],["Gün Doğumu","Sunrise"],["Gün Batımı","Sunset"],["Gökyüzü","Sky"],["Ay","Moon"],["Yıldız","Star"],["Hava","Air"],["Kurak","Drought"]
    ],
            locationXY: [[width * 0.17,width * 1.12],
                         [width * 0.8,width * 0.7],
                         [width * 0.45,width * 0.84],
                         [width * 0.52,width * 1.33],
                         [width * 0.31,width * 0.98],
                         [width * 0.52,width * 0.98],
                         [width * 0.45,width * 0.84],
                         [width * 0.8,width * 1.19],
                         [width * 0.17,width * 1.33],
                         [width * 0.31,width * 0.98],
                         [width * 0.17,width * 1.19],
                         [width * 0.45,width * 0.7]],
            isVerticalArrays: [true,true,true,false,false,true,false,true,false,true,false,false], isCrosswordSolved: 0),
    
        Bulmaca(title: "Meslekler-1", image: UIImage(named: "Bulmaca 16")!, score: 0,  TurkishWordsArray: [
        ["Aşçı","Cook"],["Denizci","Sailor"],["Dalgıç","Diver"],["Ev Hanımı","Housewife"],["Kameraman","Cameraman"],["Profesör","Professor"],["Cerrah","Surgeon"],["Kütüphaneci","Librarian"],["Boksör","Boxer"],["Palyaço","Clown"],["Asker","Soldier"],["Şair","Poet"],["Yargıç","Judge"],["Atlet","Athlete"],["Araştırmacı","Researcher"],["Tur Rehberi","TravelGuide"]
    ],
                locationXY: [[width * 0.66,width * 0.91],
                         [width * 0.1,width * 0.77],
                         [width * 0.87,width * 0.63],
                         [width * 0.38,width * 0.7],
                         [width * 1.29,width * 0.63],
                         [width * 0.1,width * 1.26],
                         [width * 1.15,width * 0.91],
                         [width * 0.8,width * 0.7],
                         [width * 0.59,width * 1.05],
                         [width * 1.57,width * 0.63],
                         [width * 0.52,width * 1.26],
                         [width * 0.1,width * 1.26],
                         [width * 0.38,width * 1.47],
                         [width * 1.29,width * 1.12],
                         [width * 0.24,width * 0.91],
                         [width * 1.71,width * 0.84]],
            isVerticalArrays: [true,false,true,true,true,false,false,false,false,true,true,true,false,false,false,true], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Meslekler-2", image: UIImage(named: "Bulmaca 17")!, score: 0,  TurkishWordsArray: [
        ["Dadı","Nanny"],["Postacı","Postman"],["Bahçıvan","Gardener"],["Dansçı","Dancer"],["Temizlikçi","Cleaner"],["Eczacı","Pharmacist"],["Taksi Şoförü","TaxiDriver"],["Kuaför","Hairdresser"],["Politikacı","Politician"],["Çiçekçi","Florist"],["Ressam","Painter"],["Müzisyen","Musician"],["Can Kurtaran","Lifeguard"],["Gazeteci","Journalist"],["Tasarımcı","Designer"],["Avukat","Lawyer"]
    ],
            locationXY: [[width * 1.22,width * 0.98],
                         [width * 1.08,width * 1.26],
                         [width * 1.43,width * 1.19],
                         [width * 1.08,width * 1.68],
                         [width * 0.94,width * 0.77],
                         [width * 0.31,width * 1.05],
                         [width * 0.31,width * 1.68],
                         [width * 0.24,width * 1.19],
                         [width * 0.31,width * 1.05],
                         [width * 1.15,width * 0.7],
                         [width * 0.24,width * 1.4],
                         [width * 0.94,width * 1.54],
                         [width * 0.87,width * 1.4],
                         [width * 1.29,width * 0.63],
                         [width * 0.1,width * 1.54],
                         [width * 0.94,width * 0.84]],
            isVerticalArrays: [false,false,true,false,true,true,false,false,false,false,false,false,false,true,false,false], isCrosswordSolved: 0),
    
    Bulmaca(title: "Meslekler-3", image: UIImage(named: "Bulmaca 18")!, score: 0,  TurkishWordsArray: [
        ["Bilim Adamı","Scientist"],["Resepsiyonist","Receptionist"],["Fotoğrafçı","Photographer"],["Tesisatçı","Plumber"],["Uçuş Görevlisi","FlightAttendant"],["Aktör","Actor"],["Fırıncı","Baker"],["Kasiyer","Cashier"],["Kasap","Butcher"],["Muhasebeci","Accountant"],["Mühendis","Engineer"],["Hemşire","Nurse"],["Çiftçi","Farmer"],["Diş Hekimi","Dentist"],["Bankacı","Banker"],["Mimar","Architect"]
    ],
            locationXY: [[width * 1.22,width * 0.98],
                         [width * 0.59,width * 1.61],
                         [width * 0.59,width * 0.84],
                         [width * 0.59,width * 1.4],
                         [width * 0.24,width * 1.05],
                         [width * 0.1,width * 0.84],
                         [width * 1.5,width * 1.19],
                         [width * 1.71,width * 0.84],
                         [width * 1.08,width * 0.84],
                         [width * 0.1,width * 0.84],
                         [width * 1.22,width * 0.7],
                         [width * 0.1,width * 1.4],
                         [width * 0.24,width * 1.05],
                         [width * 1.22,width * 0.63],
                         [width * 1.5,width * 1.12],
                         [width * 0.52,width * 1.26]],
            isVerticalArrays: [false,false,true,false,false,false,false,true,false,true,false,false,true,true,true,false], isCrosswordSolved: 0),
    
    Bulmaca(title: "Meslekler-4", image: UIImage(named: "Bulmaca 19")!, score: 0,  TurkishWordsArray: [
        ["Öğretmen","Teacher"],["Polis","Police"],["Elektrikçi","Electrician"],["Aktrist","Actress"],["Doktor","Doctor"],["Şef","Chef"],["İtfaiyeci","Firefighter"],["Sanatçı","Artist"],["Şarkıcı","Singer"],["Emekli","Retired"],["Spiker","Announcer"],["Müzisyen","Coach"],["Manav","Greengrocer"],["Tartihçi","Historian"],["Esnaf","Artisan"],["Yönetici","Administrator"]
    ],
            locationXY: [[width * 1.22,width * 0.98],
                         [width * 0.24,width * 1.54],
                         [width * 0.1,width * 0.77],
                         [width * 0.59,width * 1.26],
                         [width * 0.59,width * 1.12],
                         [width * 0.1,width * 0.98],
                         [width * 0.24,width * 0.77],
                         [width * 1.43,width * 1.4],
                         [width * 0.59,width * 1.68],
                         [width * 0.45,width * 0.7],
                         [width * 1.5,width * 0.84],
                         [width * 0.94,width * 1.26],
                         [width * 0.94,width * 0.7],
                         [width * 1.64,width * 0.98],
                         [width * 1.08,width * 0.98],
                         [width * 0.1,width * 1.4]],
            isVerticalArrays: [true,false,true,true,false,false,false,false,false,true,true,false,true,true,false,false], isCrosswordSolved: 0),
    
    Bulmaca(title: "Hayvanlar-1", image: UIImage(named: "Bulmaca 20")!, score: 0,  TurkishWordsArray: [
        ["Karınca","Ant"],["Yarasa","Bat"],["Ayı","Bear"],["Kunduz","Beaver"],["Kelebek","Butterfly"],["Deve","Camel"],["Timsah","Crocodile"],["İnek","Cow"],["Çita","Cheetah"],["Eşek","Donkey"],["Yunus","Dolphin"],["Kartal","Eagle"],["Fil","Elephant"],["Balık","Fish"],["Kurbağ","Frog"],["Zürafa","Giraffe"]
    ],
            locationXY: [[width * 0.45,width * 0.63],
                         [width * 0.38,width * 0.63],
                         [width * 0.17,width * 0.91],
                         [width * 0.31,width * 0.77],
                         [width * 0.31,width * 0.77],
                         [width * 0.24,width * 1.12],
                         [width * 0.24,width * 1.12],
                         [width * 1.01,width * 1.12],
                         [width * 0.45,width * 1.12],
                         [width * 0.59,width * 1.12],
                         [width * 0.94,width * 1.19],
                         [width * 0.59,width * 1.4],
                         [width * 1.15,width * 0.98],
                         [width * 1.29,width * 1.12],
                         [width * 0.73,width * 0.77],
                         [width * 0.73,width * 0.98]],
            isVerticalArrays: [true,false,false,true,false,true,false,true,true,true,false,false,true,true,true,false], isCrosswordSolved: 0),
    
    Bulmaca(title: "Hayvanlar-2", image: UIImage(named: "Bulmaca 21")!, score: 0,  TurkishWordsArray: [
        ["Ceylan","Gazelle"],["Keçi","Goat"],["At","Horse"],["Şahin","Hawk"],["Haşere","insect"],["Deniz Anası","JellyFish"],["Aslan","Lion"],["Kertenkele","Lizard"],["Sivrisinek","Mosquito"],["Maymun","Monkey"],["Ahtapot","Octopus"],["İstiridye","Oyster"],["Papağan","Parrot"],["Domuz","Pig"],["Tavşan","Rabbit"],["Sıçan","Rat"]
    ],
            locationXY: [[width * 0.45,width * 0.91],
                         [width * 0.45,width * 0.91],
                         [width * 0.87,width * 0.63],
                         [width * 0.87,width * 0.63],
                         [width * 0.1,width * 1.12],
                         [width * 0.52,width * 1.54],
                         [width * 1.36,width * 0.7],
                         [width * 0.8,width * 0.91],
                         [width * 1.22,width * 0.91],
                         [width * 1.22,width * 0.91],
                         [width * 1.01,width * 1.12],
                         [width * 1.01,width * 1.33],
                         [width * 0.73,width * 1.12],
                         [width * 0.1,width * 1.05],
                         [width * 0.87,width * 0.77],
                         [width * 1.22,width * 0.63]],
            isVerticalArrays: [false,true,true,false,false,false,true,true,true,false,true,false,false,true,false,true], isCrosswordSolved: 0),
    
    Bulmaca(title: "Hayvanlar-3", image: UIImage(named: "Bulmaca 22")!, score: 0,  TurkishWordsArray: [
        ["Uğur Böceği","Ladybug"],["Fare","Mouse"],["Gergedan","Rhino"],["Akrep","Scorpion"],["Martı","Seagull"],["Fok Balığı","Seal"],["Köpek Balığı","Shark"],["Yılan","Snake"],["Deniz Yıldızı","Starfish"],["Kaplan","Tiger"],["Kaplumbağ","Turtle"],["Kurt","Wolf"],["Solucan","Worm"],["Porsuk","Badger"],["Kedi","Cat"],["Köpek","Dog"]
    ],
            locationXY: [[width * 0.73,width * 0.84],
                         [width * 1.08,width * 1.19],
                         [width * 0.31,width * 1.05],
                         [width * 0.31,width * 0.84],
                         [width * 0.31,width * 0.84],
                         [width * 0.45,width * 0.7],
                         [width * 0.94,width * 0.63],
                         [width * 0.94,width * 0.63],
                         [width * 0.45,width * 0.7],
                         [width * 0.59,width * 1.26],
                         [width * 0.59,width * 1.26],
                         [width * 1.08,width * 0.98],
                         [width * 1.08,width * 0.98],
                         [width * 0.73,width * 1.12],
                         [width * 0.45,width * 1.47],
                         [width * 0.24,width * 1.26]],
            isVerticalArrays: [true,false,false,true,false,true,true,false,false,false,true,false,true,false,false,false], isCrosswordSolved: 0),
    
    Bulmaca(title: "Meyveler-1", image: UIImage(named: "Bulmaca 23")!, score: 0,  TurkishWordsArray: [
        ["Elma","Apple"],["Kayısı","Apricot"],["Muz","Banana"],["Böğürtlen","Blackberry"],["Mandalina","Tangerine"],["Kiraz","Cherry"],["İncir","Fig"],["Üzüm","Grape"],["Limon","Lemon"],["Kavun","Melon"],["Zeytin","Olive"],["Portakal","Orange"],["Ahududu","Raspberry"],["Şeftali","Peach"],["Armut","Pear"],["Erik","Plum"]
    ],
            locationXY: [[width * 0.24,width * 0.77],
                         [width * 0.31,width * 0.7],
                         [width * 0.73,width * 1.26],
                         [width * 0.38,width * 1.26],
                         [width * 0.31,width * 1.12],
                         [width * 0.31,width * 0.98],
                         [width * 1.15,width * 0.63],
                         [width * 0.52,width * 1.12],
                         [width * 0.45,width * 1.4],
                         [width * 0.59,width * 1.4],
                         [width * 0.45,width * 0.7],
                         [width * 0.87,width * 0.77],
                         [width * 1.01,width * 0.7],
                         [width * 1.29,width * 0.63],
                         [width * 0.87,width * 1.05],
                         [width * 1.29,width * 0.63]],
            isVerticalArrays: [false,true,true,false,false,false,true,true,false,true,true,false,true,true,true,false], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Sebzeler-1 ", image: UIImage(named: "Bulmaca 24")!, score: 0,  TurkishWordsArray: [
        ["Fasulye","Bean"],["Brokoli","Broccoli"],["Bezelye","Pea"],["Domates","Tomato"],["Havuç","Carrot"],["Ispanak","Spinach"],["Karnabahar","Cauliflower"],["Lahana","Cabbage"],["Marul","Lettuce"],["Mısır","Corn"],["Patates","Potato"],["Pancar","Beet"],["Mantar","Mushroom"],["Soğan","Onion"],["Sarımsak","Garlic"],["Patlıcan","Eggplant"]
    ],
            locationXY: [[width * 1.22,width * 1.19],
                         [width * 0.31,width * 0.63],
                         [width * 1.22,width * 0.63],
                         [width * 0.8,width * 0.84],
                         [width * 1.01,width * 0.77],
                         [width * 0.17,width * 1.12],
                         [width * 0.31,width * 0.91],
                         [width * 1.01,width * 0.77],
                         [width * 1.61,width * 0.91],
                         [width * 0.45,width * 1.33],
                         [width * 0.1,width * 1.4],
                         [width * 0.31,width * 0.63],
                         [width * 0.17,width * 0.98],
                         [width * 0.31,width * 0.77],
                         [width * 1.43,width * 0.91],
                         [width * 1.43,width * 0.77]],
            isVerticalArrays: [false,true,true,true,true,false,false,false,true,true,false,false,true,false,false,true], isCrosswordSolved: 0),
    
    
    
    Bulmaca(title: "Vücut-1 ", image: UIImage(named: "Bulmaca 25")!, score: 0,  TurkishWordsArray: [
        ["Kol","Arm"],["Fare","Back"],["Çene","Chin"],["Kulak","Ear"],["Göz","Eye"],["Yüz","Face"],["Ayak","Foot"],["Parmak","Finger"],["El","Hand"],["Kafa","Head"],["Diz","Knee"],["Bacak","Leg"],["Dudak","Lip"],["Ağız","Mouth"],["Boyun","Neck"],["Burun","Nose"]
    ],
            locationXY: [[width * 0.52,width * 0.77],
                         [width * 0.59,width * 1.26],
                         [width * 0.8,width * 1.19],
                         [width * 0.52,width * 0.7],
                         [width * 1.01,width * 1.4],
                         [width * 0.17,width * 0.84],
                         [width * 0.45,width * 0.98],
                         [width * 0.17,width * 0.84],
                         [width * 0.66,width * 1.05],
                         [width * 0.1,width * 1.05],
                         [width * 0.87,width * 1.4],
                         [width * 1.01,width * 1.54],
                         [width * 1.01,width * 1.54],
                         [width * 0.66,width * 0.77],
                         [width * 0.8,width * 1.05],
                         [width * 1.01,width * 1.19]],
            isVerticalArrays: [false,false,false,true,true,true,false,false,false,false,false,false,true,true,true,true], isCrosswordSolved: 0),
    
    
    Bulmaca(title: "Vücut-2 ", image: UIImage(named: "Bulmaca 26")!, score: 0,  TurkishWordsArray: [
        ["Omuz","Shoulder"],["Mide","Stomach"],["Diş","Tooth"],["Baş Parmak","Thumb"],["Ayak Parmağı","Toe"],["Dil","Tongue"],["Avuç İçi","Palm"],["Sakal","Beard"],["Tırnak","Nail"],["İşaret Parmağı","ForeFinger"],["Bıyık","Moustache"],["Kirpik","Eyelash"],["Kaş","Eyebrow"],["Alın","Forehead"],["Topuk","Heel"],["Bel","Waist"]
    ],
            locationXY: [[width * 0.73,width * 0.84],
                         [width * 1.08,width * 1.19],
                         [width * 0.31,width * 1.05],
                         [width * 0.31,width * 0.84],
                         [width * 0.31,width * 0.84],
                         [width * 0.45,width * 0.7],
                         [width * 0.94,width * 0.63],
                         [width * 0.94,width * 0.63],
                         [width * 0.45,width * 0.7],
                         [width * 0.59,width * 1.26],
                         [width * 0.59,width * 1.26],
                         [width * 1.08,width * 0.98],
                         [width * 1.08,width * 0.98],
                         [width * 0.73,width * 1.12],
                         [width * 0.45,width * 1.47],
                         [width * 0.24,width * 1.26]],
            isVerticalArrays: [], isCrosswordSolved: 0),
    
    
    
    /*
    Bulmaca(title: "Meslekler-1", image: UIImage(named: "Bulmaca 11")!, score: 0,  TurkishWordsArray: [
        ["Key","Value"]
    ],
            locationXY: [[]],
            isVerticalArrays: [], isCrosswordSolved: 0),
    
    

    */
    
   
]
