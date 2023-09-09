//
//  StatisticViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 23.05.2023.
//

import UIKit

class StatisticViewController: UIViewController {
    
    let questionsLabel = UILabel()
    let crossWordsLabel = UILabel()
    let starsLabels = UILabel()
    
    var totalQuestionNumber = Int()
    var totalStarNumber = Int()
    var totalCrosswordNumber = Int()
    
    var solvedQuestionNumber = Int()
    var solvedQuestionNumberButTrue = Int()
    var solvedCrosswordNumber = Int()
    var gotStars = Int()
    
    var rateOfCrossword = UILabel()
    var rateOfStar = UILabel()
    var rateOfQuestion = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setGradientBackground()
        
        let width = SingletonView.shared.width
        let height = SingletonView.shared.height
        
        calculateConstantValues()
       
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Ana Sayfa"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "İstatisklerin"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemGray5,NSAttributedString.Key.font : UIFont(name: "Kefa", size: 32)!]
        
        
        questionsLabel.numberOfLines = 0
        crossWordsLabel.numberOfLines = 0
        starsLabels.numberOfLines = 0
        rateOfCrossword.numberOfLines = 0
        rateOfStar.numberOfLines = 0
        rateOfQuestion.numberOfLines = 0

        rateOfStar.textAlignment = .center
        rateOfQuestion.textAlignment = .center
        rateOfCrossword.textAlignment = .center

        
        starsLabels.font = UIFont(name: "Menlo-Bold", size: 16)
        crossWordsLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        questionsLabel.font = UIFont(name: "Menlo-Bold", size: 16)
        rateOfStar.font = UIFont(name: "Menlo-Bold", size: 16)
        rateOfQuestion.font = UIFont(name: "Menlo-Bold", size: 16)
        rateOfCrossword.font = UIFont(name: "Menlo-Bold", size: 16)

        
        starsLabels.frame = CGRect(x: width * 0.5 - (width * 0.92)/2, y: height * 0.65, width: width * 0.92, height: height * 0.15)
        crossWordsLabel.frame = CGRect(x: width * 0.5 - (width * 0.92)/2, y: height * 0.45, width: width * 0.92, height: height * 0.15)
        questionsLabel.frame = CGRect(x: width * 0.5 - (width * 0.92)/2, y: height * 0.2, width: width * 0.92, height: height * 0.2)
        rateOfCrossword.frame = CGRect(x: width * 0.5 - (width * 0.92)/2, y: height * 0.85, width: width * 0.3, height: height * 0.1)
        rateOfQuestion.frame = CGRect(x: width * 0.5 - (width * 0.92)/2 + width * 0.31, y: height * 0.85, width: width * 0.3, height: height * 0.1)
        rateOfStar.frame = CGRect(x: width * 0.5 - (width * 0.92)/2 + width * 0.62, y: height * 0.85, width: width * 0.3, height: height * 0.1)

        
        starsLabels.layer.borderWidth = 2
        crossWordsLabel.layer.borderWidth = 2
        questionsLabel.layer.borderWidth = 2
        rateOfCrossword.layer.borderWidth = 2
        rateOfStar.layer.borderWidth = 2
        rateOfQuestion.layer.borderWidth = 2

        starsLabels.layer.cornerRadius = 6
        crossWordsLabel.layer.cornerRadius = 6
        questionsLabel.layer.cornerRadius = 6
        rateOfCrossword.layer.cornerRadius = 6
        rateOfQuestion.layer.cornerRadius = 6
        rateOfStar.layer.cornerRadius = 6

        starsLabels.layer.backgroundColor = UIColor.systemGray5.cgColor
        questionsLabel.layer.backgroundColor = UIColor.systemGray5.cgColor
        crossWordsLabel.layer.backgroundColor = UIColor.systemGray5.cgColor
        rateOfCrossword.layer.backgroundColor = UIColor.systemGray5.cgColor
        rateOfStar.layer.backgroundColor = UIColor.systemGray5.cgColor
        rateOfQuestion.layer.backgroundColor = UIColor.systemGray5.cgColor

        view.backgroundColor = .systemGray5
       
        view.addSubview(crossWordsLabel)
        view.addSubview(questionsLabel)
        view.addSubview(starsLabels)
        view.addSubview(rateOfCrossword)
        view.addSubview(rateOfStar)
        view.addSubview(rateOfQuestion)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        calculateVariableValues()
        
    }
    
    func calculateConstantValues() {
        totalCrosswordNumber = bulmacalar.count
        totalStarNumber = totalCrosswordNumber * 3
        for i in bulmacalar {
            totalQuestionNumber += i.TurkishWordsArray.count
        }
    }
    
    func calculateVariableValues() {
        solvedCrosswordNumber = 0
        solvedQuestionNumber = 0
        solvedQuestionNumberButTrue = 0
        gotStars = 0
        for i in 0...bulmacalar.count - 1 {
            solvedQuestionNumberButTrue += bulmacalar[i].score
            solvedCrosswordNumber += bulmacalar[i].isCrosswordSolved
            if bulmacalar[i].isCrosswordSolved == 1 {
                solvedQuestionNumber += bulmacalar[i].TurkishWordsArray.count
            }
            
            if bulmacalar[i].score == bulmacalar[i].TurkishWordsArray.count {
                gotStars += 3
            }else if Double(bulmacalar[i].score)/Double(bulmacalar[i].TurkishWordsArray.count) > 0.8 {
                gotStars += 2
            }else if Double(bulmacalar[i].score)/Double(bulmacalar[i].TurkishWordsArray.count) > 0.5 {
                gotStars += 1
            }
        }
        
        
        questionsLabel.text = """
 Toplam Soru Sayısı: \(totalQuestionNumber)

 Çözülen Soru Sayısı: \(solvedQuestionNumber)

 Toplam Doğru Sayısı: \(solvedQuestionNumberButTrue)
"""
        crossWordsLabel.text = """
 Toplam Bulmaca Sayısı: \(totalCrosswordNumber)

 Çözülen Bulmaca Sayısı: \(solvedCrosswordNumber)
"""
        starsLabels.text = """
 Toplam Yıldız Sayısı: \(totalStarNumber)

 Yakalanan Yıldız Sayısı: \(gotStars)
"""
        
        rateOfStar.text = "Yıldız Oranı\n %\(Double(Int((Double(gotStars)/Double(totalStarNumber)) * 1000))/10)"
        rateOfCrossword.text = "Bulmaca Oranı\n %\(Double(Int((Double(solvedCrosswordNumber)/Double(totalCrosswordNumber)) * 1000))/10)"
        rateOfQuestion.text = "Soruların Oranı\n %\(Double(Int((Double(solvedQuestionNumberButTrue)/Double(totalQuestionNumber)) * 1000))/10)"
        /*
        if solvedQuestionNumber == 0 {
            rateOfQuestion.text = "Soruların Oranı\n %0"
        }else {
            rateOfQuestion.text = "Soruların Oranı\n %\(Double(Int((Double(solvedQuestionNumberButTrue)/Double(solvedQuestionNumber)) * 1000))/10)"
                ///BURADA     DOĞRU SORU  BÖLÜ TÜM SORULAR YAPILABİLİR! ÖYLE YÜZDEYİ ARTTIRMAYA ÇALIŞMAK DAHA İYİ
        }
         */
    }

    func setGradientBackground() {
        
        let colorTop = UIColor(red: 100/255, green: 12/255, blue: 255/255, alpha: 0.9)
        let colorBottom = UIColor(red: 146/255, green: 204/255, blue: 255/255, alpha: 1)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame = self.view.bounds
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.colors = [colorTop.cgColor,colorBottom.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
  

}
