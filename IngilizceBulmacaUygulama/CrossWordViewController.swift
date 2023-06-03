//
//  CrossWordViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 24.05.2023.
//

import UIKit

class CrossWordViewController: UIViewController {
    
    ///Ekran için
    var width = CGFloat()
    var height = CGFloat()
    
    let asd = UILabel()
    
    var scrollView = UIScrollView()
    
    var bezierView = BezierCrossWordView()
    
    ///CollectionViewdan gelen veriler buraya aktarılacak
    var choosenTitle = String()
    var choosenIndexPathRow = Int()
    
    ///Birime butonu: Her boşlu dolunca açılcak, cevap kontrolü ve CoreData kayıt işlemi yapacak.
    let completeButton = UIButton()
    
    ///Kaç tane kelime olacak // MİN 12 - MAX 16 KELİME
    var TurkishWordArray = [String]()
    
    ///Türkçe kelimler için labeller, 16 tane 4-4-4-4 sıralancak. Frameleri hazır olcak sadece içleri her açılmada resetlencek kelimelere göre sıralancak!
    var turkishWord1 = UILabel()
    var turkishWord2 = UILabel()
    var turkishWord3 = UILabel()
    var turkishWord4 = UILabel()
    var turkishWord5 = UILabel()
    var turkishWord6 = UILabel()
    var turkishWord7 = UILabel()
    var turkishWord8 = UILabel()
    var turkishWord9 = UILabel()
    var turkishWord10 = UILabel()
    var turkishWord11 = UILabel()
    var turkishWord12 = UILabel()
    var turkishWord13 = UILabel()
    var turkishWord14 = UILabel()
    var turkishWord15 = UILabel()
    var turkishWord16 = UILabel()
    
    ///Her kelime için OK İŞARETLİ kutucuk
    var buttonWord1 = UIButton()
    var buttonWord2 = UIButton()
    var buttonWord3 = UIButton()
    var buttonWord4 = UIButton()
    var buttonWord5 = UIButton()
    var buttonWord6 = UIButton()
    var buttonWord7 = UIButton()
    var buttonWord8 = UIButton()
    var buttonWord9 = UIButton()
    var buttonWord10 = UIButton()
    var buttonWord11 = UIButton()
    var buttonWord12 = UIButton()
    var buttonWord13 = UIButton()
    var buttonWord14 = UIButton()
    var buttonWord15 = UIButton()
    var buttonWord16 = UIButton()
    
    ///Her kelimenin Numarası
    let wordNumber1 = UILabel()
    let wordNumber2 = UILabel()
    let wordNumber3 = UILabel()
    let wordNumber4 = UILabel()
    let wordNumber5 = UILabel()
    let wordNumber6 = UILabel()
    let wordNumber7 = UILabel()
    let wordNumber8 = UILabel()
    let wordNumber9 = UILabel()
    let wordNumber10 = UILabel()
    let wordNumber11 = UILabel()
    let wordNumber12 = UILabel()
    let wordNumber13 = UILabel()
    let wordNumber14 = UILabel()
    let wordNumber15 = UILabel()
    let wordNumber16 = UILabel()
    
    ///Alert Textten gelen cevaplar için Dizi

    var answerArray1 = [String.Element]()
    var answerArray2 = [String.Element]()
    var answerArray3 = [String.Element]()
    var answerArray4 = [String.Element]()
    var answerArray5 = [String.Element]()
    var answerArray6 = [String.Element]()
    var answerArray7 = [String.Element]()
    var answerArray8 = [String.Element]()
    var answerArray9 = [String.Element]()
    var answerArray10 = [String.Element]()
    var answerArray11 = [String.Element]()
    var answerArray12 = [String.Element]()
    var answerArray13 = [String.Element]()
    var answerArray14 = [String.Element]()
    var answerArray15 = [String.Element]()
    var answerArray16 = [String.Element]()
    
    ///Alert Textten gelen cevaplar için KONTROL  1-DOĞRU    0-YANLIŞ
    var answerFromAlertText1 = 0
    var answerFromAlertText2 = 0
    var answerFromAlertText3 = 0
    var answerFromAlertText4 = 0
    var answerFromAlertText5 = 0
    var answerFromAlertText6 = 0
    var answerFromAlertText7 = 0
    var answerFromAlertText8 = 0
    var answerFromAlertText9 = 0
    var answerFromAlertText10 = 0
    var answerFromAlertText11 = 0
    var answerFromAlertText12 = 0
    var answerFromAlertText13 = 0
    var answerFromAlertText14 = 0
    var answerFromAlertText15 = 0
    var answerFromAlertText16 = 0
    
    ///TOPLAM VERİLEN CEVAPLARIN COUNT KONTROL EDEBİLCEĞİMİZ DİZİ
    var howManyAnswerInArray = [Int]()
    
    ///Cevap1 Labelları
    var answerLabel10 = UILabel()
    var answerLabel11 = UILabel()
    var answerLabel12 = UILabel()
    var answerLabel13 = UILabel()
    var answerLabel14 = UILabel()
    var answerLabel15 = UILabel()
    var answerLabel16 = UILabel()
    var answerLabel17 = UILabel()
    var answerLabel18 = UILabel()
    var answerLabel19 = UILabel()
    
    ///Cevap2 Labelları
    var answerLabel20 = UILabel()
    var answerLabel21 = UILabel()
    var answerLabel22 = UILabel()
    var answerLabel23 = UILabel()
    var answerLabel24 = UILabel()
    var answerLabel25 = UILabel()
    var answerLabel26 = UILabel()
    var answerLabel27 = UILabel()
    var answerLabel28 = UILabel()
    var answerLabel29 = UILabel()
    
    ///Cevap3 Labelları
    var answerLabel30 = UILabel()
    var answerLabel31 = UILabel()
    var answerLabel32 = UILabel()
    var answerLabel33 = UILabel()
    var answerLabel34 = UILabel()
    var answerLabel35 = UILabel()
    var answerLabel36 = UILabel()
    var answerLabel37 = UILabel()
    var answerLabel38 = UILabel()
    var answerLabel39 = UILabel()
    
    ///Cevap4 Labelları
    var answerLabel40 = UILabel()
    var answerLabel41 = UILabel()
    var answerLabel42 = UILabel()
    var answerLabel43 = UILabel()
    var answerLabel44 = UILabel()
    var answerLabel45 = UILabel()
    var answerLabel46 = UILabel()
    var answerLabel47 = UILabel()
    var answerLabel48 = UILabel()
    var answerLabel49 = UILabel()

    ///Cevap5 Labelları
    var answerLabel50 = UILabel()
    var answerLabel51 = UILabel()
    var answerLabel52 = UILabel()
    var answerLabel53 = UILabel()
    var answerLabel54 = UILabel()
    var answerLabel55 = UILabel()
    var answerLabel56 = UILabel()
    var answerLabel57 = UILabel()
    var answerLabel58 = UILabel()
    var answerLabel59 = UILabel()
    
    ///Cevap6 Labelları
    var answerLabel60 = UILabel()
    var answerLabel61 = UILabel()
    var answerLabel62 = UILabel()
    var answerLabel63 = UILabel()
    var answerLabel64 = UILabel()
    var answerLabel65 = UILabel()
    var answerLabel66 = UILabel()
    var answerLabel67 = UILabel()
    var answerLabel68 = UILabel()
    var answerLabel69 = UILabel()
    
    ///Cevap7 Labelları
    var answerLabel70 = UILabel()
    var answerLabel71 = UILabel()
    var answerLabel72 = UILabel()
    var answerLabel73 = UILabel()
    var answerLabel74 = UILabel()
    var answerLabel75 = UILabel()
    var answerLabel76 = UILabel()
    var answerLabel77 = UILabel()
    var answerLabel78 = UILabel()
    var answerLabel79 = UILabel()
    
    ///Cevap8 Labelları
    var answerLabel80 = UILabel()
    var answerLabel81 = UILabel()
    var answerLabel82 = UILabel()
    var answerLabel83 = UILabel()
    var answerLabel84 = UILabel()
    var answerLabel85 = UILabel()
    var answerLabel86 = UILabel()
    var answerLabel87 = UILabel()
    var answerLabel88 = UILabel()
    var answerLabel89 = UILabel()
    
    ///Cevap 9 Labelları
    var answerLabel90 = UILabel()
    var answerLabel91 = UILabel()
    var answerLabel92 = UILabel()
    var answerLabel93 = UILabel()
    var answerLabel94 = UILabel()
    var answerLabel95 = UILabel()
    var answerLabel96 = UILabel()
    var answerLabel97 = UILabel()
    var answerLabel98 = UILabel()
    var answerLabel99 = UILabel()
    
    ///Cevap10 Labelları
    var answerLabel100 = UILabel()
    var answerLabel101 = UILabel()
    var answerLabel102 = UILabel()
    var answerLabel103 = UILabel()
    var answerLabel104 = UILabel()
    var answerLabel105 = UILabel()
    var answerLabel106 = UILabel()
    var answerLabel107 = UILabel()
    var answerLabel108 = UILabel()
    var answerLabel109 = UILabel()
    
    ///Cevap11 Labelları
    var answerLabel110 = UILabel()
    var answerLabel111 = UILabel()
    var answerLabel112 = UILabel()
    var answerLabel113 = UILabel()
    var answerLabel114 = UILabel()
    var answerLabel115 = UILabel()
    var answerLabel116 = UILabel()
    var answerLabel117 = UILabel()
    var answerLabel118 = UILabel()
    var answerLabel119 = UILabel()
    
    ///Cevap12 Labelları
    var answerLabel120 = UILabel()
    var answerLabel121 = UILabel()
    var answerLabel122 = UILabel()
    var answerLabel123 = UILabel()
    var answerLabel124 = UILabel()
    var answerLabel125 = UILabel()
    var answerLabel126 = UILabel()
    var answerLabel127 = UILabel()
    var answerLabel128 = UILabel()
    var answerLabel129 = UILabel()
    
    ///Cevap13 Labelları
    var answerLabel130 = UILabel()
    var answerLabel131 = UILabel()
    var answerLabel132 = UILabel()
    var answerLabel133 = UILabel()
    var answerLabel134 = UILabel()
    var answerLabel135 = UILabel()
    var answerLabel136 = UILabel()
    var answerLabel137 = UILabel()
    var answerLabel138 = UILabel()
    var answerLabel139 = UILabel()
    
    ///Cevap14 Labelları
    var answerLabel140 = UILabel()
    var answerLabel141 = UILabel()
    var answerLabel142 = UILabel()
    var answerLabel143 = UILabel()
    var answerLabel144 = UILabel()
    var answerLabel145 = UILabel()
    var answerLabel146 = UILabel()
    var answerLabel147 = UILabel()
    var answerLabel148 = UILabel()
    var answerLabel149 = UILabel()
    
    ///Cevap15 Labelları
    var answerLabel150 = UILabel()
    var answerLabel151 = UILabel()
    var answerLabel152 = UILabel()
    var answerLabel153 = UILabel()
    var answerLabel154 = UILabel()
    var answerLabel155 = UILabel()
    var answerLabel156 = UILabel()
    var answerLabel157 = UILabel()
    var answerLabel158 = UILabel()
    var answerLabel159 = UILabel()
    
    ///Cevap16 Labelları
    var answerLabel160 = UILabel()
    var answerLabel161 = UILabel()
    var answerLabel162 = UILabel()
    var answerLabel163 = UILabel()
    var answerLabel164 = UILabel()
    var answerLabel165 = UILabel()
    var answerLabel166 = UILabel()
    var answerLabel167 = UILabel()
    var answerLabel168 = UILabel()
    var answerLabel169 = UILabel()
    
   

    
    var getKeyFromArray = [[String]]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = SingletonView.shared.width
        height = SingletonView.shared.height
        
        
        navigationController?.navigationBar.tintColor = .black
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Tamamla", style: UIBarButtonItem.Style.done, target: self, action: #selector(completeCrossword))
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Bulmacalar"
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "\(choosenTitle.uppercased())"
        
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getKeyFromArray = bulmacalar[choosenIndexPathRow].TurkishWordsArray
        controlOfIndex(with: choosenIndexPathRow)
        answerArrayRemoveAll()
        resetAnswers()

      
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: view.frame.size.height))
//        scrollView.backgroundColor = .systemYellow

        
        view.addSubview(scrollView)
        scrollView.addSubview(bezierView)

        view.addSubview(turkishWord1)
        view.addSubview(turkishWord2)
        view.addSubview(turkishWord3)
        view.addSubview(turkishWord4)
        view.addSubview(turkishWord5)
        view.addSubview(turkishWord6)
        view.addSubview(turkishWord7)
        view.addSubview(turkishWord8)
        view.addSubview(turkishWord9)
        view.addSubview(turkishWord10)
        view.addSubview(turkishWord11)
        view.addSubview(turkishWord12)
        view.addSubview(turkishWord13)
        view.addSubview(turkishWord14)
        view.addSubview(turkishWord15)
        view.addSubview(turkishWord16)
        
       
        //MARK: - MAX BULMA
        var maxValueX = 0.0
        for i in bulmacalar[choosenIndexPathRow].locationXY {
            
            if i[0] > maxValueX { //i den gelen 0.index değeri X--> bize de x lazım x'in slide yapılcak değerine gidiyoruz
                maxValueX = i[0]
            }
        }
        
        addButtonToScrollView()

      
        //NE KADAR KAYACAK ----- Özel Bir şey istersek buradan koşulla yaptıraiblirsin choosenIndexPathRow üzerinden! ---> Onun yerine max x değerine göre otomatikleştirdim!
        scrollView.contentSize = CGSize(width: maxValueX + width * 0.4, height: view.frame.size.height)
        
        
    }
    ///Kelimeler için Button addSubviewi
    ///Her bulmaca için frame işlemi kendisinde olacak! indexe göre !
    func addButtonToScrollView() {
        scrollView.addSubview(buttonWord1)
        scrollView.addSubview(buttonWord2)
        scrollView.addSubview(buttonWord3)
        scrollView.addSubview(buttonWord4)
        scrollView.addSubview(buttonWord5)
        scrollView.addSubview(buttonWord6)
        scrollView.addSubview(buttonWord7)
        scrollView.addSubview(buttonWord8)
        scrollView.addSubview(buttonWord9)
        scrollView.addSubview(buttonWord10)
        scrollView.addSubview(buttonWord11)
        scrollView.addSubview(buttonWord12)
        scrollView.addSubview(buttonWord13)
        scrollView.addSubview(buttonWord14)
        scrollView.addSubview(buttonWord15)
        scrollView.addSubview(buttonWord16)
        
        scrollView.addSubview(wordNumber1)
        scrollView.addSubview(wordNumber2)
        scrollView.addSubview(wordNumber3)
        scrollView.addSubview(wordNumber4)
        scrollView.addSubview(wordNumber5)
        scrollView.addSubview(wordNumber6)
        scrollView.addSubview(wordNumber7)
        scrollView.addSubview(wordNumber8)
        scrollView.addSubview(wordNumber9)
        scrollView.addSubview(wordNumber10)
        scrollView.addSubview(wordNumber11)
        scrollView.addSubview(wordNumber12)
        scrollView.addSubview(wordNumber13)
        scrollView.addSubview(wordNumber14)
        scrollView.addSubview(wordNumber15)
        scrollView.addSubview(wordNumber16)

        
        
        wordNumber1.text = "1"
        wordNumber2.text = "2"
        wordNumber3.text = "3"
        wordNumber4.text = "4"
        wordNumber5.text = "5"
        wordNumber6.text = "6"
        wordNumber7.text = "7"
        wordNumber8.text = "8"
        wordNumber9.text = "9"
        wordNumber10.text = "10"
        wordNumber11.text = "11"
        wordNumber12.text = "12"
        wordNumber13.text = "13"
        wordNumber14.text = "14"
        wordNumber15.text = "15"
        wordNumber16.text = "16"
        
        wordNumber1.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber2.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber3.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber4.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber5.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber6.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber7.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber8.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber9.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber10.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber11.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber12.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber13.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber14.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber15.font = UIFont(name: "Menlo Bold", size: 10)
        wordNumber16.font = UIFont(name: "Menlo Bold", size: 10)
        
        wordNumber1.textAlignment = .center
        wordNumber2.textAlignment = .center
        wordNumber3.textAlignment = .center
        wordNumber4.textAlignment = .center
        wordNumber5.textAlignment = .center
        wordNumber6.textAlignment = .center
        wordNumber7.textAlignment = .center
        wordNumber8.textAlignment = .center
        wordNumber9.textAlignment = .center
        wordNumber10.textAlignment = .center
        wordNumber11.textAlignment = .center
        wordNumber12.textAlignment = .center
        wordNumber13.textAlignment = .center
        wordNumber14.textAlignment = .center
        wordNumber15.textAlignment = .center
        wordNumber16.textAlignment = .center
        
        
        buttonWord1.addTarget(self, action: #selector(button1Func), for: UIControl.Event.touchUpInside)
        buttonWord2.addTarget(self, action: #selector(button2Func), for: UIControl.Event.touchUpInside)
        buttonWord3.addTarget(self, action: #selector(button3Func), for: UIControl.Event.touchUpInside)
        buttonWord4.addTarget(self, action: #selector(button4Func), for: UIControl.Event.touchUpInside)
        buttonWord5.addTarget(self, action: #selector(button5Func), for: UIControl.Event.touchUpInside)
        buttonWord6.addTarget(self, action: #selector(button6Func), for: UIControl.Event.touchUpInside)
        buttonWord7.addTarget(self, action: #selector(button7Func), for: UIControl.Event.touchUpInside)
        buttonWord8.addTarget(self, action: #selector(button8Func), for: UIControl.Event.touchUpInside)
        buttonWord9.addTarget(self, action: #selector(button9Func), for: UIControl.Event.touchUpInside)
        buttonWord10.addTarget(self, action: #selector(button10Func), for: UIControl.Event.touchUpInside)
        buttonWord11.addTarget(self, action: #selector(button11Func), for: UIControl.Event.touchUpInside)
        buttonWord12.addTarget(self, action: #selector(button12Func), for: UIControl.Event.touchUpInside)
        buttonWord13.addTarget(self, action: #selector(button13Func), for: UIControl.Event.touchUpInside)
        buttonWord14.addTarget(self, action: #selector(button14Func), for: UIControl.Event.touchUpInside)
        buttonWord15.addTarget(self, action: #selector(button15Func), for: UIControl.Event.touchUpInside)
        buttonWord16.addTarget(self, action: #selector(button16Func), for: UIControl.Event.touchUpInside)
    }
    
    func resetAnswers() {
        howManyAnswerInArray = [Int]()
        answerFromAlertText1 = -1
        answerFromAlertText2 = -1
        answerFromAlertText3 = -1
        answerFromAlertText4 = -1
        answerFromAlertText5 = -1
        answerFromAlertText6 = -1
        answerFromAlertText7 = -1
        answerFromAlertText8 = -1
        answerFromAlertText9 = -1
        answerFromAlertText10 = -1
        answerFromAlertText11 = -1
        answerFromAlertText12 = -1
        answerFromAlertText13 = -1
        answerFromAlertText14 = -1
        answerFromAlertText15 = -1
        answerFromAlertText16 = -1
    }
    
    ///Aynı tekrarlanan işlemler için
    func toAddViewAddsubivew() {
        
        
        turkishWord1.frame = CGRect(x: width * 0.015, y: width * 0.21, width: width * 0.225, height: width * 0.07)
        turkishWord1.text = "1-\(getKeyFromArray[0][0])"
        turkishWord1.textAlignment = .center
        turkishWord1.textColor = .white
        turkishWord1.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord1.font = UIFont(name: "Kefa", size: 12)
        turkishWord1.layer.cornerRadius = 8
        
        turkishWord2.frame = CGRect(x: width * 0.2525, y: width * 0.21, width: width * 0.225, height: width * 0.07)
        turkishWord2.text = "2-\(getKeyFromArray[1][0])"
        turkishWord2.textAlignment = .center
        turkishWord2.textColor = .white
        turkishWord2.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord2.font = UIFont(name: "Kefa", size: 12)
        turkishWord2.layer.cornerRadius = 8
        
        turkishWord3.frame = CGRect(x: width * 0.5025, y: width * 0.21, width: width * 0.225, height: width * 0.07)
        turkishWord3.text = "3-\(getKeyFromArray[2][0])"
        turkishWord3.textAlignment = .center
        turkishWord3.textColor = .white
        turkishWord3.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord3.font = UIFont(name: "Kefa", size: 12)
        turkishWord3.layer.cornerRadius = 8
        
        turkishWord4.frame = CGRect(x:  width * 0.7525, y: width * 0.21, width: width * 0.225, height: width * 0.07)
        turkishWord4.text = "4-\(getKeyFromArray[3][0])"
        turkishWord4.textAlignment = .center
        turkishWord4.textColor = .white
        turkishWord4.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord4.font = UIFont(name: "Kefa", size: 12)
        turkishWord4.layer.cornerRadius = 8
        
        turkishWord5.frame = CGRect(x: width * 0.015, y: width * 0.30, width: width * 0.225, height: width * 0.07)
        turkishWord5.text = "5-\(getKeyFromArray[4][0])"
        turkishWord5.textAlignment = .center
        turkishWord5.textColor = .white
        turkishWord5.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord5.font = UIFont(name: "Kefa", size: 12)
        turkishWord5.layer.cornerRadius = 8
        
        turkishWord6.frame = CGRect(x: width * 0.2525, y: width * 0.3, width: width * 0.225, height: width * 0.07)
        turkishWord6.text = "6-\(getKeyFromArray[5][0])"
        turkishWord6.textAlignment = .center
        turkishWord6.textColor = .white
        turkishWord6.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord6.font = UIFont(name: "Kefa", size: 12)
        turkishWord6.layer.cornerRadius = 8
        
        turkishWord7.frame = CGRect(x: width * 0.5025, y: width * 0.3, width: width * 0.225, height: width * 0.07)
        turkishWord7.text = "7-\(getKeyFromArray[6][0])"
        turkishWord7.textAlignment = .center
        turkishWord7.textColor = .white
        turkishWord7.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord7.font = UIFont(name: "Kefa", size: 12)
        turkishWord7.layer.cornerRadius = 8
        
        turkishWord8.frame = CGRect(x: width * 0.7525, y: width * 0.3, width: width * 0.225, height: width * 0.07)
        turkishWord8.text = "8-\(getKeyFromArray[7][0])"
        turkishWord8.textAlignment = .center
        turkishWord8.textColor = .white
        turkishWord8.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord8.font = UIFont(name: "Kefa", size: 12)
        turkishWord8.layer.cornerRadius = 8
        
        turkishWord9.frame = CGRect(x: width * 0.015, y: width * 0.39, width: width * 0.225, height: width * 0.07)
        turkishWord9.text = "9-\(getKeyFromArray[8][0])"
        turkishWord9.textAlignment = .center
        turkishWord9.textColor = .white
        turkishWord9.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord9.font = UIFont(name: "Kefa", size: 12)
        turkishWord9.layer.cornerRadius = 8
        
        turkishWord10.frame = CGRect(x: width * 0.2525, y: width * 0.39, width: width * 0.225, height: width * 0.07)
        turkishWord10.text = "10-\(getKeyFromArray[9][0])"
        turkishWord10.textAlignment = .center
        turkishWord10.textColor = .white
        turkishWord10.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord10.font = UIFont(name: "Kefa", size: 12)
        turkishWord10.layer.cornerRadius = 8
        
        turkishWord11.frame = CGRect(x: width * 0.5025, y: width * 0.39, width: width * 0.225, height: width * 0.07)
        turkishWord11.text = "11-\(getKeyFromArray[10][0])"
        turkishWord11.textAlignment = .center
        turkishWord11.textColor = .white
        turkishWord11.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord11.font = UIFont(name: "Kefa", size: 12)
        turkishWord11.layer.cornerRadius = 8
        
        turkishWord12.frame = CGRect(x: width * 0.7525, y: width * 0.39 ,width: width * 0.225, height: width * 0.07)
        turkishWord12.text = "12-\(getKeyFromArray[11][0])"
        turkishWord12.textAlignment = .center
        turkishWord12.textColor = .white
        turkishWord12.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord12.font = UIFont(name: "Kefa", size: 12)
        turkishWord12.layer.cornerRadius = 8
        
        turkishWord13.frame = CGRect(x: width * 0.015, y: width * 0.48, width: width * 0.225, height: width * 0.07)
   
        turkishWord13.textAlignment = .center
        turkishWord13.textColor = .white
        turkishWord13.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord13.font = UIFont(name: "Kefa", size: 12)
        turkishWord13.layer.cornerRadius = 8
        
        turkishWord14.frame = CGRect(x: width * 0.2525, y: width * 0.48, width: width * 0.225, height: width * 0.07)
      
        turkishWord14.textAlignment = .center
        turkishWord14.textColor = .white
        turkishWord14.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord14.font = UIFont(name: "Kefa", size: 12)
        turkishWord14.layer.cornerRadius = 8
        
        turkishWord15.frame = CGRect(x: width * 0.5025, y: width * 0.48, width: width * 0.225, height: width * 0.07)
      
        turkishWord15.textAlignment = .center
        turkishWord15.textColor = .white
        turkishWord15.layer.backgroundColor  = UIColor.black.cgColor
        turkishWord15.font = UIFont(name: "Kefa", size: 12)
        turkishWord15.layer.cornerRadius = 8
        
        turkishWord16.frame = CGRect(x: width * 0.7525, y: width * 0.48, width: width * 0.225, height: width * 0.07)

        turkishWord16.textAlignment = .center
        turkishWord16.textColor = .white
        turkishWord16.layer.backgroundColor = UIColor.black.cgColor
        turkishWord16.font = UIFont(name: "Kefa", size: 12)
        turkishWord16.layer.cornerRadius = 8
        
        
        
        
    }
    //MARK: - Turkish words
    func controlOfIndex(with index: Int) {
        ///BezierViewler için hangi görübyü oluşacağı zaten collectionView prepareSegue kısmında belli buraya gelince bizimö yapmamız gereken sadece bezierView tanımlayıp, viewe ekleyip, arka plan rengi ile oynamak!!!!!!!
        
        //Width height değerleri için bunları girebilirsin
        let minusForLeftButtonX = -(width * 0.065)
        let minusForLeftNumberX = -(width * 0.055)
        let plusForLeftButtonY = (width * 0.01)
        let minusForLeftNumberY = -(width * 0.02)
        
        let plusForUpNumberX = (width * 0.055)
        let minusForUpNumberY = -(width * 0.055)
        let plusForUpButtonX = (width * 0.005)
        let minusForUpButtonY = -(width * 0.065)
        
        
        TurkishWordArray.removeAll()
        ///Append işlemi yapacağım çıkgir yapınca saçmalamasın diye! remoAll yaptım
        if bulmacalar[index].TurkishWordsArray.count < 13 {///12 tane vardır
            turkishWord13.isHidden = true
            turkishWord14.isHidden = true
            turkishWord15.isHidden = true
            turkishWord16.isHidden = true
            
            buttonWord13.isHidden = true
            buttonWord14.isHidden = true
            buttonWord15.isHidden = true
            buttonWord16.isHidden = true
            
            wordNumber13.isHidden = true
            wordNumber14.isHidden = true
            wordNumber15.isHidden = true
            wordNumber16.isHidden = true
            //12 tane var ise 13,14,15,16 için framlere gerek yok bunları ayırdım!
            
        }
        else if bulmacalar[index].TurkishWordsArray.count < 14 { ///13 tane vardır
            turkishWord13.text = "13-\(getKeyFromArray[12][0])"
            turkishWord14.isHidden = true
            turkishWord15.isHidden = true
            turkishWord16.isHidden = true
            buttonWord14.isHidden = true
            buttonWord15.isHidden = true
            buttonWord16.isHidden = true
            wordNumber14.isHidden = true
            wordNumber15.isHidden = true
            wordNumber16.isHidden = true
            if bulmacalar[index].isVerticalArrays[12] {
                buttonWord13.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x: bulmacalar[index].locationXY[13 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[13 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord13.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
        }else if bulmacalar[index].TurkishWordsArray.count < 15 {///14 tane vardır
            turkishWord13.text = "13-\(getKeyFromArray[12][0])"
            turkishWord14.text = "14-\(getKeyFromArray[13][0])"
            turkishWord15.isHidden = true
            turkishWord16.isHidden = true
            buttonWord15.isHidden = true
            buttonWord16.isHidden = true
            wordNumber15.isHidden = true
            wordNumber16.isHidden = true
            if bulmacalar[index].isVerticalArrays[12] {
                buttonWord13.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x: bulmacalar[index].locationXY[13 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[13 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord13.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[13] {
                buttonWord14.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x: bulmacalar[index].locationXY[14 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[14 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord14.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
        }else if bulmacalar[index].TurkishWordsArray.count < 16 {///15 tane vardır
            turkishWord13.text = "13-\(getKeyFromArray[12][0])"
            turkishWord14.text = "14-\(getKeyFromArray[13][0])"
            turkishWord15.text = "15-\(getKeyFromArray[14][0])"
            turkishWord16.isHidden = true
            buttonWord16.isHidden = true
            wordNumber16.isHidden = true
            if bulmacalar[index].isVerticalArrays[12] {
                buttonWord13.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x: bulmacalar[index].locationXY[13 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[13 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord13.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[13] {
                buttonWord14.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x: bulmacalar[index].locationXY[14 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[14 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord14.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[14] {
                buttonWord15.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord15.frame = CGRect(x: bulmacalar[index].locationXY[15 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[15 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord15.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
        }else {
            ///16 Kelime de var
            turkishWord13.text = "13-\(getKeyFromArray[12][0])"
            turkishWord14.text = "14-\(getKeyFromArray[13][0])"
            turkishWord15.text = "15-\(getKeyFromArray[14][0])"
            turkishWord16.text = "16-\(getKeyFromArray[15][0])"
            
            
            if bulmacalar[index].isVerticalArrays[12] {
                buttonWord13.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x: bulmacalar[index].locationXY[13 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[13 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord13.frame = CGRect(x:bulmacalar[index].locationXY[13 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[13 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord13.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[13] {
                buttonWord14.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x: bulmacalar[index].locationXY[14 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                
                wordNumber14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[14 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord14.frame = CGRect(x:bulmacalar[index].locationXY[14 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[14 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord14.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[14] {
                buttonWord15.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord15.frame = CGRect(x: bulmacalar[index].locationXY[15 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[15 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord15.frame = CGRect(x:bulmacalar[index].locationXY[15 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[15 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord15.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
            
            
            
            if bulmacalar[index].isVerticalArrays[15] {
                buttonWord16.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
                wordNumber16.frame = CGRect(x:bulmacalar[index].locationXY[16 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[16 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord16.frame = CGRect(x: bulmacalar[index].locationXY[16 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[16 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            }else {
                wordNumber16.frame = CGRect(x:bulmacalar[index].locationXY[16 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[16 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
                buttonWord16.frame = CGRect(x:bulmacalar[index].locationXY[16 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[16 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
                buttonWord16.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            }
        }
        //MARK: - Crossword Index
        
        bezierView = BezierCrossWordView(frame: CGRect(x: 0, y: 0, width: width * 2, height: height))
        self.view.addSubview(bezierView)
        
        switch index {
        case 0:

            //---Her bulmaca için bu şekil oluştuır onu çek
           
            
            //--Hem view hem bezierPath aynı olsun çünkü bazen y'De özellikle kayma yaparsak diye açıkta boş renk kalmasın
            bezierView.backgroundColor = .systemYellow
            view.backgroundColor = .systemYellow
            
            
           
            
        case 1:
          
            bezierView.backgroundColor = .systemYellow
            view.backgroundColor = .systemYellow
            
            
        case 2:
            print("2.index için olacaklar")
            
        case 3:
            print("3.index için olacaklar")
            
        case 4:
            print("4.index için olacaklar")
            
        case 5:
            print("5.index için olacaklar")
            
        case 6:
            print("6.index için olacaklar")
            
        case 7:
            print("7.index için olacaklar")

        default:
            print("DEFAULT")
            
        }
        crossWordButtonFrames(HangiBulmaca: choosenIndexPathRow)
        view.addSubview(completeButton) ///BezierPath üstte kalmaması için bunu  sonra ekliyorum.
        toAddViewAddsubivew()
    }
    
    //MARK: - Complete Button
    @objc
    func completeCrossword() {
        
        addAnswersToTotalArray()
  
        
        var amountOf1 = 0
        var amountOf0 = 0
        
        for i in howManyAnswerInArray {
            if i == 1 {
                amountOf1 += 1
            }else if i == 0 {
                amountOf0 += 1
            }
        }
        
        if amountOf0 + amountOf1 == bulmacalar[choosenIndexPathRow].TurkishWordsArray.count {
            //eleman kadar geldiyse bitti
            print("Bulmaca Tamamlandı!")
            makeNormalAlertFunc(title: "Bulmaca Tamamlandı!", message: """

Doğru Sayısı: \(amountOf1)
Yanlış Sayısı: \(amountOf0)

""")

            
            
            ///CORE DATA (KAYDETME) İŞLEMERİ BAŞLAYABİLİR
      
            
            
            ///KAYDETTİKTEN SONRA TAMAMLANDI BUTONU KAPANSIN TIKLANMASIN!
            navigationController?.navigationBar.topItem?.rightBarButtonItem?.title = "TAMAMLANDI"
            navigationController?.navigationBar.topItem?.rightBarButtonItem?.isEnabled = false
        }else {
            //Bitmemiş alanlar var
            print("Bulmaca tamamlanmadı")
            makeNormalAlertFunc(title: "Hata!", message: "Boşluklar var")
            howManyAnswerInArray.removeAll() //hepsini temizle! --- sonra basınca gene gelcek !
            
        }
      
       
        
   
    }
    
    //MARK: - Crossword Frames -------------------///OTOMATİKLEŞTİRİYORUZ!
    func crossWordButtonFrames(HangiBulmaca index: Int) {
        
        //Width height değerleri için bunları girebilirsin
        let minusForLeftButtonX = -(width * 0.065)
        let minusForLeftNumberX = -(width * 0.055)
        let plusForLeftButtonY = (width * 0.01)
        let minusForLeftNumberY = -(width * 0.02)
        
        let plusForUpNumberX = (width * 0.055)
        let minusForUpNumberY = -(width * 0.055)
        let plusForUpButtonX = (width * 0.005)
        let minusForUpButtonY = -(width * 0.065)
        
        ///Bu butonlarf her için her bulmacaya özel func oluştur!

        ///isVertical array  TRUE = DİKEY     FALSE = YATAY
        if bulmacalar[index].isVerticalArrays[0] {
            buttonWord1.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber1.frame = CGRect(x:bulmacalar[index].locationXY[1 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[1 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord1.frame = CGRect(x: bulmacalar[index].locationXY[1 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[1 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            buttonWord1.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            wordNumber1.frame = CGRect(x:bulmacalar[index].locationXY[1 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[1 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord1.frame = CGRect(x:bulmacalar[index].locationXY[1 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[1 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
        }
        
        
        if bulmacalar[index].isVerticalArrays[1] {
            buttonWord2.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber2.frame = CGRect(x:bulmacalar[index].locationXY[2 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[2 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord2.frame = CGRect(x: bulmacalar[index].locationXY[2 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[2 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber2.frame = CGRect(x:bulmacalar[index].locationXY[2 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[2 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord2.frame = CGRect(x:bulmacalar[index].locationXY[2 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[2 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord2.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[2] {
            buttonWord3.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber3.frame = CGRect(x:bulmacalar[index].locationXY[3 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[3 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord3.frame = CGRect(x: bulmacalar[index].locationXY[3 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[3 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber3.frame = CGRect(x:bulmacalar[index].locationXY[3 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[3 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord3.frame = CGRect(x:bulmacalar[index].locationXY[3 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[3 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord3.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        if bulmacalar[index].isVerticalArrays[3] {
            buttonWord4.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber4.frame = CGRect(x:bulmacalar[index].locationXY[4 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[4 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord4.frame = CGRect(x: bulmacalar[index].locationXY[4 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[4 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber4.frame = CGRect(x:bulmacalar[index].locationXY[4 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[4 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord4.frame = CGRect(x:bulmacalar[index].locationXY[4 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[4 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord4.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[4] {
            buttonWord5.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber5.frame = CGRect(x:bulmacalar[index].locationXY[5 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[5 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord5.frame = CGRect(x: bulmacalar[index].locationXY[5 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[5 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber5.frame = CGRect(x:bulmacalar[index].locationXY[5 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[5 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord5.frame = CGRect(x:bulmacalar[index].locationXY[5 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[5 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord5.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[5] {
            buttonWord6.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber6.frame = CGRect(x:bulmacalar[index].locationXY[6 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[6 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord6.frame = CGRect(x: bulmacalar[index].locationXY[6 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[6 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber6.frame = CGRect(x:bulmacalar[index].locationXY[6 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[6 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord6.frame = CGRect(x:bulmacalar[index].locationXY[6 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[6 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord6.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[6] {
            wordNumber7.frame = CGRect(x:bulmacalar[index].locationXY[7 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[7 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord7.frame = CGRect(x: bulmacalar[index].locationXY[7 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[7 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord7.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
        }else {
            wordNumber7.frame = CGRect(x:bulmacalar[index].locationXY[7 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[7 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord7.frame = CGRect(x:bulmacalar[index].locationXY[7 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[7 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord7.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[7] {
            buttonWord8.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber8.frame = CGRect(x:bulmacalar[index].locationXY[8 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[8 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord8.frame = CGRect(x: bulmacalar[index].locationXY[8 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[8 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            wordNumber8.frame = CGRect(x:bulmacalar[index].locationXY[8 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[8 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord8.frame = CGRect(x:bulmacalar[index].locationXY[8 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[8 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord8.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        
        if bulmacalar[index].isVerticalArrays[8] {
            wordNumber9.frame = CGRect(x:bulmacalar[index].locationXY[9 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[9 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord9.frame = CGRect(x: bulmacalar[index].locationXY[9 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[9 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord9.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
        }else {
            wordNumber9.frame = CGRect(x:bulmacalar[index].locationXY[9 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[9 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord9.frame = CGRect(x:bulmacalar[index].locationXY[9 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[9 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord9.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[9] {
            
            wordNumber10.frame = CGRect(x:bulmacalar[index].locationXY[10 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[10 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord10.frame = CGRect(x: bulmacalar[index].locationXY[10 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[10 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord10.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
        }else {
            wordNumber10.frame = CGRect(x:bulmacalar[index].locationXY[10 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[10 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord10.frame = CGRect(x:bulmacalar[index].locationXY[10 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[10 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord10.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[10] {
            buttonWord11.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
            wordNumber11.frame = CGRect(x:bulmacalar[index].locationXY[11 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[11 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord11.frame = CGRect(x: bulmacalar[index].locationXY[11 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[11 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
        }else {
            buttonWord11.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
            wordNumber11.frame = CGRect(x:bulmacalar[index].locationXY[11 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[11 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord11.frame = CGRect(x:bulmacalar[index].locationXY[11 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[11 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
        }
        
        
        
        if bulmacalar[index].isVerticalArrays[11] {
            wordNumber12.frame = CGRect(x:bulmacalar[index].locationXY[12 - 1][0] + plusForUpNumberX, y: bulmacalar[index].locationXY[12 - 1][1] + minusForUpNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord12.frame = CGRect(x: bulmacalar[index].locationXY[12 - 1][0] + plusForUpButtonX, y: bulmacalar[index].locationXY[12 - 1][1] + minusForUpButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord12.setImage(UIImage(systemName: "arrow.down.circle.fill"), for: UIControl.State.normal)
        }else {
            wordNumber12.frame = CGRect(x:bulmacalar[index].locationXY[12 - 1][0] + minusForLeftNumberX, y: bulmacalar[index].locationXY[12 - 1][1] + minusForLeftNumberY, width: width * 0.04 , height:  width * 0.04)
            buttonWord12.frame = CGRect(x:bulmacalar[index].locationXY[12 - 1][0] + minusForLeftButtonX, y:bulmacalar[index].locationXY[12 - 1][1] + plusForLeftButtonY, width: width * 0.06, height:  width * 0.06)
            buttonWord12.setImage(UIImage(systemName: "arrow.forward.circle.fill"), for: UIControl.State.normal)
        }
        
        
      
        
 
        }
    
    
        
    func controlOfAnswerNumber (whicNumber : Int,answer : [String.Element]) {
        if whicNumber == 1 {
            answerArray1 = answer
        }else if whicNumber == 2 {
            answerArray2 = answer

        }else if whicNumber == 3 {
            answerArray3 = answer

        }else if whicNumber == 4 {
            answerArray4 = answer

        }else if whicNumber == 5 {
            answerArray5 = answer

        }else if whicNumber == 6 {
            answerArray6 = answer

        }else if whicNumber == 7 {
            answerArray7 = answer

        }else if whicNumber == 8 {
            answerArray8 = answer

        }else if whicNumber == 9 {
            answerArray9 = answer

        }else if whicNumber == 10 {
            answerArray10 = answer

        }else if whicNumber == 11 {
            answerArray11 = answer

        }else if whicNumber == 12 {
            answerArray12 = answer

        }else if whicNumber == 13 {
            answerArray13 = answer

        }else if whicNumber == 14 {
            answerArray14 = answer

        }else if whicNumber == 15 {
            answerArray15 = answer

        }else if whicNumber == 16 {
            answerArray16 = answer

        }
    }
    
    func addAnswersToTotalArray() {
        
        howManyAnswerInArray.append(answerFromAlertText1)
        howManyAnswerInArray.append(answerFromAlertText2)
        howManyAnswerInArray.append(answerFromAlertText3)
        howManyAnswerInArray.append(answerFromAlertText4)
        howManyAnswerInArray.append(answerFromAlertText5)
        howManyAnswerInArray.append(answerFromAlertText6)
        howManyAnswerInArray.append(answerFromAlertText7)
        howManyAnswerInArray.append(answerFromAlertText8)
        howManyAnswerInArray.append(answerFromAlertText9)
        howManyAnswerInArray.append(answerFromAlertText10)
        howManyAnswerInArray.append(answerFromAlertText11)
        howManyAnswerInArray.append(answerFromAlertText12)
        howManyAnswerInArray.append(answerFromAlertText13)
        howManyAnswerInArray.append(answerFromAlertText14)
        howManyAnswerInArray.append(answerFromAlertText15)
        howManyAnswerInArray.append(answerFromAlertText16)
    }
    
    func answerArrayRemoveAll() {
        answerArray1.removeAll()
        answerArray2.removeAll()
        answerArray3.removeAll()
        answerArray4.removeAll()
        answerArray5.removeAll()
        answerArray6.removeAll()
        answerArray7.removeAll()
        answerArray8.removeAll()
        answerArray9.removeAll()
        answerArray10.removeAll()
        answerArray11.removeAll()
        answerArray12.removeAll()
        answerArray13.removeAll()
        answerArray14.removeAll()
        answerArray15.removeAll()
        answerArray16.removeAll()

    }
    
    @objc
    func button1Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 1)
        
    }
    @objc
    func button2Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 2)
    }
    @objc
    func button3Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 3)
        
    }
    @objc
    func button4Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 4)
    }
    @objc
    func button5Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 5)
    }
    @objc
    func button6Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 6)
    }
    @objc
    func button7Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 7)
    }
    @objc
    func button8Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 8)
    }
    @objc
    func button9Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 9)
    }
    @objc
    func button10Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 10)
    }
    @objc
    func button11Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 11)
    }
    @objc
    func button12Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 12)
    }
    @objc
    func button13Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 13)
       
    }
    @objc
    func button14Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 14)
    }
    @objc
    func button15Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 15)
    }
    @objc
    func button16Func() {
        makeAlertFuncForButton(index: choosenIndexPathRow, whicButton: 16)
    }
    
    func makeNormalAlertFunc(title:String,message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.view.tintColor = .systemYellow
        alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = .black
        
        let titleAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 25)!, NSAttributedString.Key.foregroundColor: UIColor.systemYellow]
        let messageAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.systemYellow]
        let titleString = NSAttributedString(string: title, attributes: titleAttributes)
        let messageString = NSAttributedString(string: "\n\(message)", attributes: messageAttributes)
        alert.setValue(titleString, forKey: "attributedTitle")
        alert.setValue(messageString, forKey: "attributedMessage")
        
        let button1 = UIAlertAction(title: "Tamam" , style: UIAlertAction.Style.cancel)
        alert.addAction(button1)
        self.present(alert, animated: true)
    }
    
    ///index hangi bulmaca olduğu index
    ///whicbutton hangi buton için ordan indexe gider
    func makeAlertFuncForButton( index : Int, whicButton: Int) {
        
        var text = ""
        
        let alertText = UIAlertController(title: "Cevabınız", message: "", preferredStyle: UIAlertController.Style.alert)
        alertText.addTextField()
        alertText.textFields?.first?.placeholder = "Cevabınızı Yazın"
        alertText.textFields?.first?.textColor = .blue
        alertText.view.tintColor = .systemYellow
        alertText.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = .black
        alertText.textFields?.first?.font = UIFont.boldSystemFont(ofSize: 18)
        
        let titleAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 28)!, NSAttributedString.Key.foregroundColor: UIColor.systemYellow]
        let titleString = NSAttributedString(string: "Cevabınız", attributes: titleAttributes)
        alertText.setValue(titleString, forKey: "attributedTitle")
        
        let button = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default) { [self] _ in
            
            if let text1 = alertText.textFields?.first?.text as? String {
                text = text1
            }
            
            if text != "" {
                
                //KELİME SAYISI KONTROLÜ
                if text.count == bulmacalar[index].TurkishWordsArray[whicButton-1][1].count { //0 value(TR)   1 key(EN)
                    let arrayAnswer = Array(text.uppercased())
                    print(arrayAnswer)
                    
                    //CEVABIN DOĞRULUĞU
                    if text.uppercased() == bulmacalar[index].TurkishWordsArray[whicButton - 1][1].uppercased() {
                        print("Cevap Doğru")
                        answerControlIfTrue(whicButton: whicButton)
                    }else {
                        print("Cevap Yanlış")
                        answerControlIfFalse(whicButton: whicButton)
                    }
                    
                    
                    //Verilen cevap ilgili yere gidiyor
                    controlOfAnswerNumber(whicNumber: whicButton, answer: arrayAnswer)
                    
                    
                    //16 cevap içinde kontrol yaparız!
                    //whicButtondan bunu anlarız! hangi cevap olduğun zaten biliyoruz ona göre çağrılıyor!
                    //sonra her cevap için bulmacadaki o cevabın count öğrenip kontrol ile ona göre kaç harfli olacağını anlayıp createLabelFrameX çağrırız
                    answerControlForAlert(index: index, whicAnswer: whicButton, answerArray: arrayAnswer)

            
                    
                    
                }else {
                    print("İstenen uzunlukta Değil")
                    makeNormalAlertFunc(title: "Hata!", message: "İstenen Kutucuk Sayısında Değil")
                    
                }
            }else {
                print("Değer boş")
                makeNormalAlertFunc(title: "Hata!", message: "Boş Cevap Veremezsiniz")
            }
        }
        
        let button2 = UIAlertAction(title: "Vazgeç", style: UIAlertAction.Style.cancel)
        alertText.addAction(button2)
        self.present(alertText, animated: true)
        alertText.addAction(button)
        
    }
    //MARK: - AnswerValues 0 or 1
    func answerControlIfTrue(whicButton : Int) {
        if whicButton == 1 {
            answerFromAlertText1 = 1
        }else if whicButton == 2 {
            answerFromAlertText2 = 1
        }else if whicButton == 3 {
            answerFromAlertText3 = 1
        }else if whicButton == 4 {
            answerFromAlertText4 = 1
        }else if whicButton == 5 {
            answerFromAlertText5 = 1
        }else if whicButton == 6 {
            answerFromAlertText6 = 1
        }else if whicButton == 7 {
            answerFromAlertText7 = 1
        }else if whicButton == 8 {
            answerFromAlertText8 = 1
        }else if whicButton == 9 {
            answerFromAlertText9 = 1
        }else if whicButton == 10 {
            answerFromAlertText10 = 1
        }else if whicButton == 11 {
            answerFromAlertText11 = 1
        }else if whicButton == 12 {
            answerFromAlertText12 = 1
        }else if whicButton == 13 {
            answerFromAlertText13 = 1
        }else if whicButton == 14 {
            answerFromAlertText14 = 1
        }else if whicButton == 15 {
            answerFromAlertText15 = 1
        }else if whicButton == 16 {
            answerFromAlertText16 = 1
        }
    }
    
    func answerControlIfFalse(whicButton : Int) {
        if whicButton == 1 {
            answerFromAlertText1 = 0
        }else if whicButton == 2 {
            answerFromAlertText2 = 0
        }else if whicButton == 3 {
            answerFromAlertText3 = 0
        }else if whicButton == 4 {
            answerFromAlertText4 = 0
        }else if whicButton == 5 {
            answerFromAlertText5 = 0
        }else if whicButton == 6 {
            answerFromAlertText6 = 0
        }else if whicButton == 7 {
            answerFromAlertText7 = 0
        }else if whicButton == 8 {
            answerFromAlertText8 = 0
        }else if whicButton == 9 {
            answerFromAlertText9 = 0
        }else if whicButton == 10 {
            answerFromAlertText10 = 0
        }else if whicButton == 11 {
            answerFromAlertText11 = 0
        }else if whicButton == 12 {
            answerFromAlertText12 = 0
        }else if whicButton == 13 {
            answerFromAlertText13 = 0
        }else if whicButton == 14 {
            answerFromAlertText14 = 0
        }else if whicButton == 15 {
            answerFromAlertText15 = 0
        }else if whicButton == 16 {
            answerFromAlertText16 = 0
        }
    }

    
    
    //MARK: - ANSWER CONTROL FOR ALERT
    func answerControlForAlert(index: Int,whicAnswer: Int,answerArray : [String.Element]) { //otomatik olarak hangi bulmaca hangi adresin olduğuna ulaşup cevabı labellar ile gösterebileceğiz
            
        if whicAnswer == 1 { //İLK BULMACANIN 1.CEVABI
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
            
        }
        else if whicAnswer == 2 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 3 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 4 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 5 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 6 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 7 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 8 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 9 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 10 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 11 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 12 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 13 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 14 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 15 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        else if whicAnswer == 16 {
            if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 3 {
                createLabelFrame3(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 4 {
                createLabelFrame4(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 5 {
                createLabelFrame5(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 6 {
                createLabelFrame6(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 7 {
                createLabelFrame7(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 8 {
                createLabelFrame8(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 9 {
                createLabelFrame9(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }else if bulmacalar[index].TurkishWordsArray[whicAnswer - 1][1].count == 10 {
                createLabelFrame10(isVertical: bulmacalar[index].isVerticalArrays[whicAnswer - 1], x: bulmacalar[index].locationXY[whicAnswer - 1][0], y: bulmacalar[index].locationXY[whicAnswer - 1][1], answer: answerArray, whicAnswer: whicAnswer)
            }
        }
        
    }
    
    
    //MARK: - CREATE LABEL FRAMES
    func createLabelFrame3(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        print("func çalıştı")
   
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            
            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            
            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            
            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
        }
        
    }
    func createLabelFrame4(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            
            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            
            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }
                else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)

        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
        }
    }
    
    func createLabelFrame5(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center

            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)

            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center

            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center

            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)

            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center

            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center

            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center

            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)

        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center

            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center

            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }
                else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center

            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center

            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)

        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center

            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)

        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""

            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center

            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""

            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center

            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)

            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center

            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }
                else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)


        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center

            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)

        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center

            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)

        }
    }
    
    func createLabelFrame6(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel15.text = ""

            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center
            answerLabel15.textAlignment = .center


            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }else if answerLabel15.text == "" {
                    answerLabel15.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel15.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel15.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)
            scrollView.addSubview(answerLabel15)


            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel25.text = ""


            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center
            answerLabel25.textAlignment = .center

            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }else if answerLabel25.text == "" {
                    answerLabel25.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel25.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel25.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            scrollView.addSubview(answerLabel25)

            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel35.text = ""

            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center
            answerLabel35.textAlignment = .center


            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }else  if answerLabel35.text == "" {
                    answerLabel35.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)
            scrollView.addSubview(answerLabel35)

            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel45.text = ""

            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center
            answerLabel45.textAlignment = .center


            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }else if answerLabel45.text == "" {
                    answerLabel45.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            scrollView.addSubview(answerLabel45)

            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel55.text = ""
            
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center
            answerLabel55.textAlignment = .center


            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }else  if answerLabel55.text == "" {
                    answerLabel55.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
            scrollView.addSubview(answerLabel55)

        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel65.text = ""
            
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center
            answerLabel65.textAlignment = .center


            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }
                else  if answerLabel65.text == "" {
                    answerLabel65.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)
            scrollView.addSubview(answerLabel65)


        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel75.text = ""

            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center
            answerLabel75.textAlignment = .center


            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }else  if answerLabel75.text == "" {
                    answerLabel75.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
            scrollView.addSubview(answerLabel75)
        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel85.text = ""
            
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center
            answerLabel85.textAlignment = .center


            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }
                else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }else  if answerLabel85.text == "" {
                    answerLabel85.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
            scrollView.addSubview(answerLabel85)
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel95.text = ""
            
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center
            answerLabel95.textAlignment = .center


            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }else  if answerLabel95.text == "" {
                    answerLabel95.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
            scrollView.addSubview(answerLabel95)

        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel105.text = ""
            
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center
            answerLabel105.textAlignment = .center


            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }else  if answerLabel105.text == "" {
                    answerLabel105.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)
            scrollView.addSubview(answerLabel105)

        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel115.text = ""
            
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center
            answerLabel115.textAlignment = .center


            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }else  if answerLabel115.text == "" {
                    answerLabel115.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)
            scrollView.addSubview(answerLabel115)


        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""
            answerLabel125.text = ""
            
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center
            answerLabel125.textAlignment = .center


            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }else  if answerLabel125.text == "" {
                    answerLabel125.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
            scrollView.addSubview(answerLabel125)

        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""
            answerLabel135.text = ""

            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center
            answerLabel135.textAlignment = .center


            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }else  if answerLabel135.text == "" {
                    answerLabel135.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)
            scrollView.addSubview(answerLabel135)

            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel145.text = ""

            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center
            answerLabel145.textAlignment = .center

            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }
                else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }else  if answerLabel145.text == "" {
                    answerLabel145.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)
            scrollView.addSubview(answerLabel145)



        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel155.text = ""
            
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center
            answerLabel155.textAlignment = .center


            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }else  if answerLabel155.text == "" {
                    answerLabel155.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)
            scrollView.addSubview(answerLabel155)


        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel165.text = ""

            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center
            answerLabel165.textAlignment = .center


            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }else if answerLabel165.text == "" {
                    answerLabel165.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)
            scrollView.addSubview(answerLabel165)

        }
    }
    
    func createLabelFrame7(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel15.text = ""
            answerLabel16.text = ""


            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center
            answerLabel15.textAlignment = .center
            answerLabel16.textAlignment = .center



            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }else if answerLabel15.text == "" {
                    answerLabel15.text = String(i)
                }else if answerLabel16.text == "" {
                    answerLabel16.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel15.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel16.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel15.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel16.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)
            scrollView.addSubview(answerLabel15)
            scrollView.addSubview(answerLabel16)


            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel25.text = ""
            answerLabel26.text = ""


            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center
            answerLabel25.textAlignment = .center
            answerLabel26.textAlignment = .center


            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }else if answerLabel25.text == "" {
                    answerLabel25.text = String(i)
                }else if answerLabel26.text == "" {
                    answerLabel26.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel25.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel26.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel25.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel26.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            scrollView.addSubview(answerLabel25)
            scrollView.addSubview(answerLabel26)


            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel35.text = ""
            answerLabel36.text = ""

            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center
            answerLabel35.textAlignment = .center
            answerLabel36.textAlignment = .center



            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }else  if answerLabel35.text == "" {
                    answerLabel35.text = String(i)
                }else  if answerLabel36.text == "" {
                    answerLabel36.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)
            scrollView.addSubview(answerLabel35)
            scrollView.addSubview(answerLabel36)


            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel45.text = ""
            answerLabel46.text = ""


            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center
            answerLabel45.textAlignment = .center
            answerLabel46.textAlignment = .center



            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }else if answerLabel45.text == "" {
                    answerLabel45.text = String(i)
                }else if answerLabel46.text == "" {
                    answerLabel46.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            scrollView.addSubview(answerLabel45)
            scrollView.addSubview(answerLabel46)


            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel55.text = ""
            answerLabel56.text = ""

            
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center
            answerLabel55.textAlignment = .center
            answerLabel56.textAlignment = .center



            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }else  if answerLabel55.text == "" {
                    answerLabel55.text = String(i)
                }else  if answerLabel56.text == "" {
                    answerLabel56.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
            scrollView.addSubview(answerLabel55)
            scrollView.addSubview(answerLabel56)


        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel65.text = ""
            answerLabel66.text = ""

            
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center
            answerLabel65.textAlignment = .center
            answerLabel66.textAlignment = .center



            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }else  if answerLabel65.text == "" {
                    answerLabel65.text = String(i)
                }else  if answerLabel66.text == "" {
                    answerLabel66.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)
            scrollView.addSubview(answerLabel65)
            scrollView.addSubview(answerLabel66)



        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel75.text = ""
            answerLabel76.text = ""


            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center
            answerLabel75.textAlignment = .center
            answerLabel76.textAlignment = .center



            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }else  if answerLabel75.text == "" {
                    answerLabel75.text = String(i)
                }else  if answerLabel76.text == "" {
                    answerLabel76.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
            scrollView.addSubview(answerLabel75)
            scrollView.addSubview(answerLabel76)

        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel85.text = ""
            answerLabel86.text = ""

            
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center
            answerLabel85.textAlignment = .center
            answerLabel86.textAlignment = .center



            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }else  if answerLabel85.text == "" {
                    answerLabel85.text = String(i)
                }else  if answerLabel86.text == "" {
                    answerLabel86.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
            scrollView.addSubview(answerLabel85)
            scrollView.addSubview(answerLabel86)

            
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel95.text = ""
            answerLabel96.text = ""

            
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center
            answerLabel95.textAlignment = .center
            answerLabel96.textAlignment = .center



            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }else  if answerLabel95.text == "" {
                    answerLabel95.text = String(i)
                }else  if answerLabel96.text == "" {
                    answerLabel96.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
            scrollView.addSubview(answerLabel95)
            scrollView.addSubview(answerLabel96)


        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel105.text = ""
            answerLabel106.text = ""

            
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center
            answerLabel105.textAlignment = .center
            answerLabel106.textAlignment = .center



            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }else  if answerLabel105.text == "" {
                    answerLabel105.text = String(i)
                }else  if answerLabel106.text == "" {
                    answerLabel106.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)
            scrollView.addSubview(answerLabel105)
            scrollView.addSubview(answerLabel106)


        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel115.text = ""
            answerLabel116.text = ""

            
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center
            answerLabel115.textAlignment = .center
            answerLabel116.textAlignment = .center



            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }else  if answerLabel115.text == "" {
                    answerLabel115.text = String(i)
                }else  if answerLabel116.text == "" {
                    answerLabel116.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)
            scrollView.addSubview(answerLabel115)
            scrollView.addSubview(answerLabel116)


        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""
            answerLabel125.text = ""
            answerLabel126.text = ""
            
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center
            answerLabel125.textAlignment = .center
            answerLabel126.textAlignment = .center



            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }else  if answerLabel125.text == "" {
                    answerLabel125.text = String(i)
                }else  if answerLabel126.text == "" {
                    answerLabel126.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
            scrollView.addSubview(answerLabel125)
            scrollView.addSubview(answerLabel126)


        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""
            answerLabel135.text = ""
            answerLabel136.text = ""


            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center
            answerLabel135.textAlignment = .center
            answerLabel136.textAlignment = .center



            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }else  if answerLabel135.text == "" {
                    answerLabel135.text = String(i)
                }else  if answerLabel136.text == "" {
                    answerLabel136.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)
            scrollView.addSubview(answerLabel135)
            scrollView.addSubview(answerLabel136)

            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel145.text = ""
            answerLabel146.text = ""

            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center
            answerLabel145.textAlignment = .center
            answerLabel146.textAlignment = .center


            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }else  if answerLabel145.text == "" {
                    answerLabel145.text = String(i)
                }else  if answerLabel146.text == "" {
                    answerLabel146.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)
            scrollView.addSubview(answerLabel145)
            scrollView.addSubview(answerLabel146)



        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel155.text = ""
            answerLabel156.text = ""
            
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center
            answerLabel155.textAlignment = .center
            answerLabel156.textAlignment = .center



            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }else  if answerLabel155.text == "" {
                    answerLabel155.text = String(i)
                }else  if answerLabel156.text == "" {
                    answerLabel156.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)
            scrollView.addSubview(answerLabel155)
            scrollView.addSubview(answerLabel156)


        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel165.text = ""
            answerLabel166.text = ""

            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center
            answerLabel165.textAlignment = .center
            answerLabel166.textAlignment = .center

            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }else if answerLabel165.text == "" {
                    answerLabel165.text = String(i)
                }else if answerLabel166.text == "" {
                    answerLabel166.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)
            scrollView.addSubview(answerLabel165)
            scrollView.addSubview(answerLabel166)
        }
    }
    func createLabelFrame8(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel15.text = ""
            answerLabel16.text = ""
            answerLabel17.text = ""

            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center
            answerLabel15.textAlignment = .center
            answerLabel16.textAlignment = .center
            answerLabel17.textAlignment = .center



            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }else if answerLabel15.text == "" {
                    answerLabel15.text = String(i)
                }else if answerLabel16.text == "" {
                    answerLabel16.text = String(i)
                }else if answerLabel17.text == "" {
                    answerLabel17.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel15.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel16.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel17.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel15.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel16.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel17.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)
            scrollView.addSubview(answerLabel15)
            scrollView.addSubview(answerLabel16)
            scrollView.addSubview(answerLabel17)

            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel25.text = ""
            answerLabel26.text = ""
            answerLabel27.text = ""


            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center
            answerLabel25.textAlignment = .center
            answerLabel26.textAlignment = .center
            answerLabel27.textAlignment = .center


            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }else if answerLabel25.text == "" {
                    answerLabel25.text = String(i)
                }else if answerLabel26.text == "" {
                    answerLabel26.text = String(i)
                }else if answerLabel27.text == "" {
                    answerLabel27.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel25.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel26.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel27.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel25.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel26.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel27.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            scrollView.addSubview(answerLabel25)
            scrollView.addSubview(answerLabel26)
            scrollView.addSubview(answerLabel27)


            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel35.text = ""
            answerLabel36.text = ""
            answerLabel37.text = ""

            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center
            answerLabel35.textAlignment = .center
            answerLabel36.textAlignment = .center
            answerLabel37.textAlignment = .center



            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }else  if answerLabel35.text == "" {
                    answerLabel35.text = String(i)
                }else  if answerLabel36.text == "" {
                    answerLabel36.text = String(i)
                }else  if answerLabel37.text == "" {
                    answerLabel37.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)
            scrollView.addSubview(answerLabel35)
            scrollView.addSubview(answerLabel36)
            scrollView.addSubview(answerLabel37)



            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel45.text = ""
            answerLabel46.text = ""
            answerLabel47.text = ""

            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center
            answerLabel45.textAlignment = .center
            answerLabel46.textAlignment = .center
            answerLabel47.textAlignment = .center



            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }else if answerLabel45.text == "" {
                    answerLabel45.text = String(i)
                }else if answerLabel46.text == "" {
                    answerLabel46.text = String(i)
                }else if answerLabel47.text == "" {
                    answerLabel47.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            scrollView.addSubview(answerLabel45)
            scrollView.addSubview(answerLabel46)
            scrollView.addSubview(answerLabel47)



            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel55.text = ""
            answerLabel56.text = ""
            answerLabel57.text = ""

            
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center
            answerLabel55.textAlignment = .center
            answerLabel56.textAlignment = .center
            answerLabel57.textAlignment = .center



            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }else  if answerLabel55.text == "" {
                    answerLabel55.text = String(i)
                }else  if answerLabel56.text == "" {
                    answerLabel56.text = String(i)
                }else  if answerLabel57.text == "" {
                    answerLabel57.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
            scrollView.addSubview(answerLabel55)
            scrollView.addSubview(answerLabel56)
            scrollView.addSubview(answerLabel57)


        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel65.text = ""
            answerLabel66.text = ""
            answerLabel67.text = ""

            
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center
            answerLabel65.textAlignment = .center
            answerLabel66.textAlignment = .center
            answerLabel67.textAlignment = .center



            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }else  if answerLabel65.text == "" {
                    answerLabel65.text = String(i)
                }else  if answerLabel66.text == "" {
                    answerLabel66.text = String(i)
                }else  if answerLabel67.text == "" {
                    answerLabel67.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)
            scrollView.addSubview(answerLabel65)
            scrollView.addSubview(answerLabel66)
            scrollView.addSubview(answerLabel67)




        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel75.text = ""
            answerLabel76.text = ""
            answerLabel77.text = ""


            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center
            answerLabel75.textAlignment = .center
            answerLabel76.textAlignment = .center
            answerLabel77.textAlignment = .center



            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }else  if answerLabel75.text == "" {
                    answerLabel75.text = String(i)
                }else  if answerLabel76.text == "" {
                    answerLabel76.text = String(i)
                }else  if answerLabel77.text == "" {
                    answerLabel77.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
            scrollView.addSubview(answerLabel75)
            scrollView.addSubview(answerLabel76)
            scrollView.addSubview(answerLabel77)


        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel85.text = ""
            answerLabel86.text = ""
            answerLabel87.text = ""

            
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center
            answerLabel85.textAlignment = .center
            answerLabel86.textAlignment = .center
            answerLabel87.textAlignment = .center



            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }else  if answerLabel85.text == "" {
                    answerLabel85.text = String(i)
                }else  if answerLabel86.text == "" {
                    answerLabel86.text = String(i)
                }else  if answerLabel87.text == "" {
                    answerLabel87.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)

            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
            scrollView.addSubview(answerLabel85)
            scrollView.addSubview(answerLabel86)
            scrollView.addSubview(answerLabel87)

            
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel95.text = ""
            answerLabel96.text = ""
            answerLabel97.text = ""

            
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center
            answerLabel95.textAlignment = .center
            answerLabel96.textAlignment = .center
            answerLabel97.textAlignment = .center



            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }else  if answerLabel95.text == "" {
                    answerLabel95.text = String(i)
                }else  if answerLabel96.text == "" {
                    answerLabel96.text = String(i)
                }else  if answerLabel97.text == "" {
                    answerLabel97.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
            scrollView.addSubview(answerLabel95)
            scrollView.addSubview(answerLabel96)
            scrollView.addSubview(answerLabel97)


        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel105.text = ""
            answerLabel106.text = ""
            answerLabel107.text = ""

            
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center
            answerLabel105.textAlignment = .center
            answerLabel106.textAlignment = .center
            answerLabel107.textAlignment = .center



            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }else  if answerLabel105.text == "" {
                    answerLabel105.text = String(i)
                }else  if answerLabel106.text == "" {
                    answerLabel106.text = String(i)
                }else  if answerLabel107.text == "" {
                    answerLabel107.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)
            scrollView.addSubview(answerLabel105)
            scrollView.addSubview(answerLabel106)
            scrollView.addSubview(answerLabel107)


        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel115.text = ""
            answerLabel116.text = ""
            answerLabel117.text = ""

            
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center
            answerLabel115.textAlignment = .center
            answerLabel116.textAlignment = .center
            answerLabel117.textAlignment = .center



            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }else  if answerLabel115.text == "" {
                    answerLabel115.text = String(i)
                }else  if answerLabel116.text == "" {
                    answerLabel116.text = String(i)
                }else  if answerLabel117.text == "" {
                    answerLabel117.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)
            scrollView.addSubview(answerLabel115)
            scrollView.addSubview(answerLabel116)
            scrollView.addSubview(answerLabel117)


        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""
            answerLabel125.text = ""
            answerLabel126.text = ""
            answerLabel127.text = ""

            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center
            answerLabel125.textAlignment = .center
            answerLabel126.textAlignment = .center
            answerLabel127.textAlignment = .center



            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }else  if answerLabel125.text == "" {
                    answerLabel125.text = String(i)
                }else  if answerLabel126.text == "" {
                    answerLabel126.text = String(i)
                }else  if answerLabel127.text == "" {
                    answerLabel127.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
            scrollView.addSubview(answerLabel125)
            scrollView.addSubview(answerLabel126)
            scrollView.addSubview(answerLabel127)

        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""
            answerLabel135.text = ""
            answerLabel136.text = ""
            answerLabel137.text = ""

            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center
            answerLabel135.textAlignment = .center
            answerLabel136.textAlignment = .center
            answerLabel137.textAlignment = .center



            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }else  if answerLabel135.text == "" {
                    answerLabel135.text = String(i)
                }else  if answerLabel136.text == "" {
                    answerLabel136.text = String(i)
                }else  if answerLabel137.text == "" {
                    answerLabel137.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)
            scrollView.addSubview(answerLabel135)
            scrollView.addSubview(answerLabel136)
            scrollView.addSubview(answerLabel137)
            
        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel145.text = ""
            answerLabel146.text = ""
            answerLabel147.text = ""

            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center
            answerLabel145.textAlignment = .center
            answerLabel146.textAlignment = .center
            answerLabel147.textAlignment = .center


            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }else  if answerLabel145.text == "" {
                    answerLabel145.text = String(i)
                }else  if answerLabel146.text == "" {
                    answerLabel146.text = String(i)
                }else  if answerLabel147.text == "" {
                    answerLabel147.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)


            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)
            scrollView.addSubview(answerLabel145)
            scrollView.addSubview(answerLabel146)
            scrollView.addSubview(answerLabel147)


        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel155.text = ""
            answerLabel156.text = ""
            answerLabel157.text = ""

            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center
            answerLabel155.textAlignment = .center
            answerLabel156.textAlignment = .center
            answerLabel157.textAlignment = .center



            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }else  if answerLabel155.text == "" {
                    answerLabel155.text = String(i)
                }else  if answerLabel156.text == "" {
                    answerLabel156.text = String(i)
                }else  if answerLabel157.text == "" {
                    answerLabel157.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)
            scrollView.addSubview(answerLabel155)
            scrollView.addSubview(answerLabel156)
            scrollView.addSubview(answerLabel157)


        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel165.text = ""
            answerLabel166.text = ""
            answerLabel167.text = ""
            
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center
            answerLabel165.textAlignment = .center
            answerLabel166.textAlignment = .center
            answerLabel167.textAlignment = .center

            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }else if answerLabel165.text == "" {
                    answerLabel165.text = String(i)
                }else if answerLabel166.text == "" {
                    answerLabel166.text = String(i)
                }else if answerLabel167.text == "" {
                    answerLabel167.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)
            scrollView.addSubview(answerLabel165)
            scrollView.addSubview(answerLabel166)
            scrollView.addSubview(answerLabel167)
        }
    }
    func createLabelFrame9(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel15.text = ""
            answerLabel16.text = ""
            answerLabel17.text = ""
            answerLabel18.text = ""

            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center
            answerLabel15.textAlignment = .center
            answerLabel16.textAlignment = .center
            answerLabel17.textAlignment = .center
            answerLabel18.textAlignment = .center


            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }else if answerLabel15.text == "" {
                    answerLabel15.text = String(i)
                }else if answerLabel16.text == "" {
                    answerLabel16.text = String(i)
                }else if answerLabel17.text == "" {
                    answerLabel17.text = String(i)
                }else if answerLabel18.text == "" {
                    answerLabel18.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel15.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel16.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel17.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel18.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel15.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel16.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel17.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel18.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)
            scrollView.addSubview(answerLabel15)
            scrollView.addSubview(answerLabel16)
            scrollView.addSubview(answerLabel17)
            scrollView.addSubview(answerLabel18)

            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel25.text = ""
            answerLabel26.text = ""
            answerLabel27.text = ""
            answerLabel28.text = ""

            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center
            answerLabel25.textAlignment = .center
            answerLabel26.textAlignment = .center
            answerLabel27.textAlignment = .center
            answerLabel28.textAlignment = .center


            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }else if answerLabel25.text == "" {
                    answerLabel25.text = String(i)
                }else if answerLabel26.text == "" {
                    answerLabel26.text = String(i)
                }else if answerLabel27.text == "" {
                    answerLabel27.text = String(i)
                }else if answerLabel28.text == "" {
                    answerLabel28.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel25.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel26.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel27.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel28.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel25.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel26.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel27.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel28.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            scrollView.addSubview(answerLabel25)
            scrollView.addSubview(answerLabel26)
            scrollView.addSubview(answerLabel27)
            scrollView.addSubview(answerLabel28)

            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel35.text = ""
            answerLabel36.text = ""
            answerLabel37.text = ""
            answerLabel38.text = ""
            
            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center
            answerLabel35.textAlignment = .center
            answerLabel36.textAlignment = .center
            answerLabel37.textAlignment = .center
            answerLabel38.textAlignment = .center



            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }else  if answerLabel35.text == "" {
                    answerLabel35.text = String(i)
                }else  if answerLabel36.text == "" {
                    answerLabel36.text = String(i)
                }else  if answerLabel37.text == "" {
                    answerLabel37.text = String(i)
                }else  if answerLabel38.text == "" {
                    answerLabel38.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel38.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel38.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)
            scrollView.addSubview(answerLabel35)
            scrollView.addSubview(answerLabel36)
            scrollView.addSubview(answerLabel37)
            scrollView.addSubview(answerLabel38)


            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel45.text = ""
            answerLabel46.text = ""
            answerLabel47.text = ""
            answerLabel48.text = ""
            
            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center
            answerLabel45.textAlignment = .center
            answerLabel46.textAlignment = .center
            answerLabel47.textAlignment = .center
            answerLabel48.textAlignment = .center


            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }else if answerLabel45.text == "" {
                    answerLabel45.text = String(i)
                }else if answerLabel46.text == "" {
                    answerLabel46.text = String(i)
                }else if answerLabel47.text == "" {
                    answerLabel47.text = String(i)
                }else if answerLabel48.text == "" {
                    answerLabel48.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel48.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel48.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            scrollView.addSubview(answerLabel45)
            scrollView.addSubview(answerLabel46)
            scrollView.addSubview(answerLabel47)
            scrollView.addSubview(answerLabel48)


            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel55.text = ""
            answerLabel56.text = ""
            answerLabel57.text = ""
            answerLabel58.text = ""
            
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center
            answerLabel55.textAlignment = .center
            answerLabel56.textAlignment = .center
            answerLabel57.textAlignment = .center
            answerLabel58.textAlignment = .center



            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }else  if answerLabel55.text == "" {
                    answerLabel55.text = String(i)
                }else  if answerLabel56.text == "" {
                    answerLabel56.text = String(i)
                }else  if answerLabel57.text == "" {
                    answerLabel57.text = String(i)
                }else  if answerLabel58.text == "" {
                    answerLabel58.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel58.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel58.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
            scrollView.addSubview(answerLabel55)
            scrollView.addSubview(answerLabel56)
            scrollView.addSubview(answerLabel57)
            scrollView.addSubview(answerLabel58)


        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel65.text = ""
            answerLabel66.text = ""
            answerLabel67.text = ""
            answerLabel68.text = ""
            
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center
            answerLabel65.textAlignment = .center
            answerLabel66.textAlignment = .center
            answerLabel67.textAlignment = .center
            answerLabel68.textAlignment = .center



            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }else  if answerLabel65.text == "" {
                    answerLabel65.text = String(i)
                }else  if answerLabel66.text == "" {
                    answerLabel66.text = String(i)
                }else  if answerLabel67.text == "" {
                    answerLabel67.text = String(i)
                }else  if answerLabel68.text == "" {
                    answerLabel68.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel68.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel68.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)
            scrollView.addSubview(answerLabel65)
            scrollView.addSubview(answerLabel66)
            scrollView.addSubview(answerLabel67)
            scrollView.addSubview(answerLabel68)



        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel75.text = ""
            answerLabel76.text = ""
            answerLabel77.text = ""
            answerLabel78.text = ""

            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center
            answerLabel75.textAlignment = .center
            answerLabel76.textAlignment = .center
            answerLabel77.textAlignment = .center
            answerLabel78.textAlignment = .center


            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }else  if answerLabel75.text == "" {
                    answerLabel75.text = String(i)
                }else  if answerLabel76.text == "" {
                    answerLabel76.text = String(i)
                }else  if answerLabel77.text == "" {
                    answerLabel77.text = String(i)
                }else  if answerLabel78.text == "" {
                    answerLabel78.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel78.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel78.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
            scrollView.addSubview(answerLabel75)
            scrollView.addSubview(answerLabel76)
            scrollView.addSubview(answerLabel77)
            scrollView.addSubview(answerLabel78)


        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel85.text = ""
            answerLabel86.text = ""
            answerLabel87.text = ""
            answerLabel88.text = ""
            
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center
            answerLabel85.textAlignment = .center
            answerLabel86.textAlignment = .center
            answerLabel87.textAlignment = .center
            answerLabel88.textAlignment = .center



            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }else  if answerLabel85.text == "" {
                    answerLabel85.text = String(i)
                }else  if answerLabel86.text == "" {
                    answerLabel86.text = String(i)
                }else  if answerLabel87.text == "" {
                    answerLabel87.text = String(i)
                }else  if answerLabel88.text == "" {
                    answerLabel88.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel88.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)

            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel88.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
            scrollView.addSubview(answerLabel85)
            scrollView.addSubview(answerLabel86)
            scrollView.addSubview(answerLabel87)
            scrollView.addSubview(answerLabel88)
            
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel95.text = ""
            answerLabel96.text = ""
            answerLabel97.text = ""
            answerLabel98.text = ""
            
            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center
            answerLabel95.textAlignment = .center
            answerLabel96.textAlignment = .center
            answerLabel97.textAlignment = .center
            answerLabel98.textAlignment = .center



            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }else  if answerLabel95.text == "" {
                    answerLabel95.text = String(i)
                }else  if answerLabel96.text == "" {
                    answerLabel96.text = String(i)
                }else  if answerLabel97.text == "" {
                    answerLabel97.text = String(i)
                }else  if answerLabel98.text == "" {
                    answerLabel98.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel98.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel98.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
            scrollView.addSubview(answerLabel95)
            scrollView.addSubview(answerLabel96)
            scrollView.addSubview(answerLabel97)
            scrollView.addSubview(answerLabel98)

        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel105.text = ""
            answerLabel106.text = ""
            answerLabel107.text = ""
            answerLabel108.text = ""
            
            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center
            answerLabel105.textAlignment = .center
            answerLabel106.textAlignment = .center
            answerLabel107.textAlignment = .center
            answerLabel108.textAlignment = .center



            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }else  if answerLabel105.text == "" {
                    answerLabel105.text = String(i)
                }else  if answerLabel106.text == "" {
                    answerLabel106.text = String(i)
                }else  if answerLabel107.text == "" {
                    answerLabel107.text = String(i)
                }else  if answerLabel108.text == "" {
                    answerLabel108.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel108.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel108.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)
            scrollView.addSubview(answerLabel105)
            scrollView.addSubview(answerLabel106)
            scrollView.addSubview(answerLabel107)
            scrollView.addSubview(answerLabel108)

        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel115.text = ""
            answerLabel116.text = ""
            answerLabel117.text = ""
            answerLabel118.text = ""
            
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center
            answerLabel115.textAlignment = .center
            answerLabel116.textAlignment = .center
            answerLabel117.textAlignment = .center
            answerLabel118.textAlignment = .center



            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }else  if answerLabel115.text == "" {
                    answerLabel115.text = String(i)
                }else  if answerLabel116.text == "" {
                    answerLabel116.text = String(i)
                }else  if answerLabel117.text == "" {
                    answerLabel117.text = String(i)
                }else  if answerLabel118.text == "" {
                    answerLabel118.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel118.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel118.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)
            scrollView.addSubview(answerLabel115)
            scrollView.addSubview(answerLabel116)
            scrollView.addSubview(answerLabel117)
            scrollView.addSubview(answerLabel118)

        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""
            answerLabel125.text = ""
            answerLabel126.text = ""
            answerLabel127.text = ""
            answerLabel128.text = ""
            
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center
            answerLabel125.textAlignment = .center
            answerLabel126.textAlignment = .center
            answerLabel127.textAlignment = .center
            answerLabel128.textAlignment = .center


            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }else  if answerLabel125.text == "" {
                    answerLabel125.text = String(i)
                }else  if answerLabel126.text == "" {
                    answerLabel126.text = String(i)
                }else  if answerLabel127.text == "" {
                    answerLabel127.text = String(i)
                }else  if answerLabel128.text == "" {
                    answerLabel128.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel128.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel128.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
            scrollView.addSubview(answerLabel125)
            scrollView.addSubview(answerLabel126)
            scrollView.addSubview(answerLabel127)
            scrollView.addSubview(answerLabel128)

        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""
            answerLabel135.text = ""
            answerLabel136.text = ""
            answerLabel137.text = ""
            answerLabel138.text = ""
            
            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center
            answerLabel135.textAlignment = .center
            answerLabel136.textAlignment = .center
            answerLabel137.textAlignment = .center
            answerLabel138.textAlignment = .center



            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }else  if answerLabel135.text == "" {
                    answerLabel135.text = String(i)
                }else  if answerLabel136.text == "" {
                    answerLabel136.text = String(i)
                }else  if answerLabel137.text == "" {
                    answerLabel137.text = String(i)
                }else  if answerLabel138.text == "" {
                    answerLabel138.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel138.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel138.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)
            scrollView.addSubview(answerLabel135)
            scrollView.addSubview(answerLabel136)
            scrollView.addSubview(answerLabel137)
            scrollView.addSubview(answerLabel138)

        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel145.text = ""
            answerLabel146.text = ""
            answerLabel147.text = ""
            answerLabel148.text = ""

            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center
            answerLabel145.textAlignment = .center
            answerLabel146.textAlignment = .center
            answerLabel147.textAlignment = .center
            answerLabel148.textAlignment = .center


            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }else  if answerLabel145.text == "" {
                    answerLabel145.text = String(i)
                }else  if answerLabel146.text == "" {
                    answerLabel146.text = String(i)
                }else  if answerLabel147.text == "" {
                    answerLabel147.text = String(i)
                }else  if answerLabel148.text == "" {
                    answerLabel148.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel148.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel148.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)
            scrollView.addSubview(answerLabel145)
            scrollView.addSubview(answerLabel146)
            scrollView.addSubview(answerLabel147)
            scrollView.addSubview(answerLabel148)

        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel155.text = ""
            answerLabel156.text = ""
            answerLabel157.text = ""
            answerLabel158.text = ""
            
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center
            answerLabel155.textAlignment = .center
            answerLabel156.textAlignment = .center
            answerLabel157.textAlignment = .center
            answerLabel158.textAlignment = .center


            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }else  if answerLabel155.text == "" {
                    answerLabel155.text = String(i)
                }else  if answerLabel156.text == "" {
                    answerLabel156.text = String(i)
                }else  if answerLabel157.text == "" {
                    answerLabel157.text = String(i)
                }else  if answerLabel158.text == "" {
                    answerLabel158.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel158.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel158.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)
            scrollView.addSubview(answerLabel155)
            scrollView.addSubview(answerLabel156)
            scrollView.addSubview(answerLabel157)
            scrollView.addSubview(answerLabel158)


        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel165.text = ""
            answerLabel166.text = ""
            answerLabel167.text = ""
            answerLabel168.text = ""
            
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center
            answerLabel165.textAlignment = .center
            answerLabel166.textAlignment = .center
            answerLabel167.textAlignment = .center
            answerLabel168.textAlignment = .center

            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }else if answerLabel165.text == "" {
                    answerLabel165.text = String(i)
                }else if answerLabel166.text == "" {
                    answerLabel166.text = String(i)
                }else if answerLabel167.text == "" {
                    answerLabel167.text = String(i)
                }else if answerLabel168.text == "" {
                    answerLabel168.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel168.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel168.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)
            scrollView.addSubview(answerLabel165)
            scrollView.addSubview(answerLabel166)
            scrollView.addSubview(answerLabel167)
            scrollView.addSubview(answerLabel168)

        }
    }
    
    func createLabelFrame10(isVertical : Bool,x: CGFloat,y:CGFloat,answer : [String.Element],whicAnswer: Int) {
        if whicAnswer == 1 {
            answerLabel10.text = ""
            answerLabel11.text = ""
            answerLabel12.text = ""
            answerLabel13.text = ""
            answerLabel14.text = ""
            answerLabel15.text = ""
            answerLabel16.text = ""
            answerLabel17.text = ""
            answerLabel18.text = ""
            answerLabel19.text = ""
            
            answerLabel10.textAlignment = .center
            answerLabel11.textAlignment = .center
            answerLabel12.textAlignment = .center
            answerLabel13.textAlignment = .center
            answerLabel14.textAlignment = .center
            answerLabel15.textAlignment = .center
            answerLabel16.textAlignment = .center
            answerLabel17.textAlignment = .center
            answerLabel18.textAlignment = .center
            answerLabel19.textAlignment = .center

            for i in answer {
                if answerLabel10.text == "" {
                    answerLabel10.text = String(i)
                }else  if answerLabel11.text == "" {
                    answerLabel11.text = String(i)
                }else  if answerLabel12.text == "" {
                    answerLabel12.text = String(i)
                }else if answerLabel13.text == "" {
                    answerLabel13.text = String(i)
                }else if answerLabel14.text == "" {
                    answerLabel14.text = String(i)
                }else if answerLabel15.text == "" {
                    answerLabel15.text = String(i)
                }else if answerLabel16.text == "" {
                    answerLabel16.text = String(i)
                }else if answerLabel17.text == "" {
                    answerLabel17.text = String(i)
                }else if answerLabel18.text == "" {
                    answerLabel18.text = String(i)
                }else if answerLabel19.text == "" {
                    answerLabel19.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel14.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel15.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel16.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel17.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel18.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel19.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel10.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel11.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel12.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel13.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel14.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel15.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel16.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel17.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel18.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel19.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel10)
            scrollView.addSubview(answerLabel11)
            scrollView.addSubview(answerLabel12)
            scrollView.addSubview(answerLabel13)
            scrollView.addSubview(answerLabel14)
            scrollView.addSubview(answerLabel15)
            scrollView.addSubview(answerLabel16)
            scrollView.addSubview(answerLabel17)
            scrollView.addSubview(answerLabel18)
            scrollView.addSubview(answerLabel19)
            
        }else if whicAnswer == 2 {
            answerLabel20.text = ""
            answerLabel21.text = ""
            answerLabel22.text = ""
            answerLabel23.text = ""
            answerLabel24.text = ""
            answerLabel25.text = ""
            answerLabel26.text = ""
            answerLabel27.text = ""
            answerLabel28.text = ""
            answerLabel29.text = ""
            
            answerLabel20.textAlignment = .center
            answerLabel21.textAlignment = .center
            answerLabel22.textAlignment = .center
            answerLabel23.textAlignment = .center
            answerLabel24.textAlignment = .center
            answerLabel25.textAlignment = .center
            answerLabel26.textAlignment = .center
            answerLabel27.textAlignment = .center
            answerLabel28.textAlignment = .center
            answerLabel29.textAlignment = .center


            
            for i in answer {
                if answerLabel20.text == "" {
                    answerLabel20.text = String(i)
                }else  if answerLabel21.text == "" {
                    answerLabel21.text = String(i)
                }else  if answerLabel22.text == "" {
                    answerLabel22.text = String(i)
                }else if answerLabel23.text == "" {
                    answerLabel23.text = String(i)
                }else if answerLabel24.text == "" {
                    answerLabel24.text = String(i)
                }else if answerLabel25.text == "" {
                    answerLabel25.text = String(i)
                }else if answerLabel26.text == "" {
                    answerLabel26.text = String(i)
                }else if answerLabel27.text == "" {
                    answerLabel27.text = String(i)
                }else if answerLabel28.text == "" {
                    answerLabel28.text = String(i)
                }else if answerLabel29.text == "" {
                    answerLabel29.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel22.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel24.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel25.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel26.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel27.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel28.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
                answerLabel29.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width: width * 0.07, height: width * 0.07)
            }else { //Yatay
                answerLabel20.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel21.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel22.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel23.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel24.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel25.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel26.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel27.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel28.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel29.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel20)
            scrollView.addSubview(answerLabel21)
            scrollView.addSubview(answerLabel22)
            scrollView.addSubview(answerLabel23)
            scrollView.addSubview(answerLabel24)
            scrollView.addSubview(answerLabel25)
            scrollView.addSubview(answerLabel26)
            scrollView.addSubview(answerLabel27)
            scrollView.addSubview(answerLabel28)
            scrollView.addSubview(answerLabel29)
            
        }else if whicAnswer == 3 {
            answerLabel30.text = ""
            answerLabel31.text = ""
            answerLabel32.text = ""
            answerLabel33.text = ""
            answerLabel34.text = ""
            answerLabel35.text = ""
            answerLabel36.text = ""
            answerLabel37.text = ""
            answerLabel38.text = ""
            answerLabel39.text = ""
            
            answerLabel30.textAlignment = .center
            answerLabel31.textAlignment = .center
            answerLabel32.textAlignment = .center
            answerLabel33.textAlignment = .center
            answerLabel34.textAlignment = .center
            answerLabel35.textAlignment = .center
            answerLabel36.textAlignment = .center
            answerLabel37.textAlignment = .center
            answerLabel38.textAlignment = .center
            answerLabel39.textAlignment = .center



            
            for i in answer {
                if answerLabel30.text == "" {
                    answerLabel30.text = String(i)
                }else  if answerLabel31.text == "" {
                    answerLabel31.text = String(i)
                }else  if answerLabel32.text == "" {
                    answerLabel32.text = String(i)
                }else  if answerLabel33.text == "" {
                    answerLabel33.text = String(i)
                }else  if answerLabel34.text == "" {
                    answerLabel34.text = String(i)
                }else  if answerLabel35.text == "" {
                    answerLabel35.text = String(i)
                }else  if answerLabel36.text == "" {
                    answerLabel36.text = String(i)
                }else  if answerLabel37.text == "" {
                    answerLabel37.text = String(i)
                }else  if answerLabel38.text == "" {
                    answerLabel38.text = String(i)
                }else  if answerLabel39.text == "" {
                    answerLabel39.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel38.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel39.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel30.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel31.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel32.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel33.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel34.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel35.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel36.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel37.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel38.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel39.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel30)
            scrollView.addSubview(answerLabel31)
            scrollView.addSubview(answerLabel32)
            scrollView.addSubview(answerLabel33)
            scrollView.addSubview(answerLabel34)
            scrollView.addSubview(answerLabel35)
            scrollView.addSubview(answerLabel36)
            scrollView.addSubview(answerLabel37)
            scrollView.addSubview(answerLabel38)
            scrollView.addSubview(answerLabel39)

            
        }else if whicAnswer == 4 {
            answerLabel40.text = ""
            answerLabel41.text = ""
            answerLabel42.text = ""
            answerLabel43.text = ""
            answerLabel44.text = ""
            answerLabel45.text = ""
            answerLabel46.text = ""
            answerLabel47.text = ""
            answerLabel48.text = ""
            answerLabel49.text = ""
            
            answerLabel40.textAlignment = .center
            answerLabel41.textAlignment = .center
            answerLabel42.textAlignment = .center
            answerLabel43.textAlignment = .center
            answerLabel44.textAlignment = .center
            answerLabel45.textAlignment = .center
            answerLabel46.textAlignment = .center
            answerLabel47.textAlignment = .center
            answerLabel48.textAlignment = .center
            answerLabel49.textAlignment = .center


            
            for i in answer {
                if answerLabel40.text == "" {
                    answerLabel40.text = String(i)
                }else  if answerLabel41.text == "" {
                    answerLabel41.text = String(i)
                }else  if answerLabel42.text == "" {
                    answerLabel42.text = String(i)
                }else if answerLabel43.text == "" {
                    answerLabel43.text = String(i)
                }else if answerLabel44.text == "" {
                    answerLabel44.text = String(i)
                }else if answerLabel45.text == "" {
                    answerLabel45.text = String(i)
                }else if answerLabel46.text == "" {
                    answerLabel46.text = String(i)
                }else if answerLabel47.text == "" {
                    answerLabel47.text = String(i)
                }else if answerLabel48.text == "" {
                    answerLabel48.text = String(i)
                }else if answerLabel49.text == "" {
                    answerLabel49.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel48.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel49.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel40.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel41.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel42.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel43.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel44.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel45.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel46.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel47.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel48.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel49.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel40)
            scrollView.addSubview(answerLabel41)
            scrollView.addSubview(answerLabel42)
            scrollView.addSubview(answerLabel43)
            scrollView.addSubview(answerLabel44)
            scrollView.addSubview(answerLabel45)
            scrollView.addSubview(answerLabel46)
            scrollView.addSubview(answerLabel47)
            scrollView.addSubview(answerLabel48)
            scrollView.addSubview(answerLabel49)

            
        }else if whicAnswer == 5 {
            answerLabel50.text = ""
            answerLabel51.text = ""
            answerLabel52.text = ""
            answerLabel53.text = ""
            answerLabel54.text = ""
            answerLabel55.text = ""
            answerLabel56.text = ""
            answerLabel57.text = ""
            answerLabel58.text = ""
            answerLabel59.text = ""
            
            answerLabel50.textAlignment = .center
            answerLabel51.textAlignment = .center
            answerLabel52.textAlignment = .center
            answerLabel53.textAlignment = .center
            answerLabel54.textAlignment = .center
            answerLabel55.textAlignment = .center
            answerLabel56.textAlignment = .center
            answerLabel57.textAlignment = .center
            answerLabel58.textAlignment = .center
            answerLabel59.textAlignment = .center



            
            for i in answer {
                if answerLabel50.text == "" {
                    answerLabel50.text = String(i)
                }else  if answerLabel51.text == "" {
                    answerLabel51.text = String(i)
                }else  if answerLabel52.text == "" {
                    answerLabel52.text = String(i)
                }else  if answerLabel53.text == "" {
                    answerLabel53.text = String(i)
                }else  if answerLabel54.text == "" {
                    answerLabel54.text = String(i)
                }else  if answerLabel55.text == "" {
                    answerLabel55.text = String(i)
                }else  if answerLabel56.text == "" {
                    answerLabel56.text = String(i)
                }else  if answerLabel57.text == "" {
                    answerLabel57.text = String(i)
                }else  if answerLabel58.text == "" {
                    answerLabel58.text = String(i)
                }else  if answerLabel59.text == "" {
                    answerLabel59.text = String(i)
                }
                
            }
            if isVertical { //Dikey
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel58.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel59.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else {//Yatay
                answerLabel50.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel51.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel52.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel53.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel54.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel55.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel56.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel57.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel58.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel59.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel50)
            scrollView.addSubview(answerLabel51)
            scrollView.addSubview(answerLabel52)
            scrollView.addSubview(answerLabel53)
            scrollView.addSubview(answerLabel54)
            scrollView.addSubview(answerLabel55)
            scrollView.addSubview(answerLabel56)
            scrollView.addSubview(answerLabel57)
            scrollView.addSubview(answerLabel58)
            scrollView.addSubview(answerLabel59)


        }else if whicAnswer == 6 {
            answerLabel60.text = ""
            answerLabel61.text = ""
            answerLabel62.text = ""
            answerLabel63.text = ""
            answerLabel64.text = ""
            answerLabel65.text = ""
            answerLabel66.text = ""
            answerLabel67.text = ""
            answerLabel68.text = ""
            answerLabel69.text = ""
            
            answerLabel60.textAlignment = .center
            answerLabel61.textAlignment = .center
            answerLabel62.textAlignment = .center
            answerLabel63.textAlignment = .center
            answerLabel64.textAlignment = .center
            answerLabel65.textAlignment = .center
            answerLabel66.textAlignment = .center
            answerLabel67.textAlignment = .center
            answerLabel68.textAlignment = .center
            answerLabel69.textAlignment = .center



            
            for i in answer {
                if answerLabel60.text == "" {
                    answerLabel60.text = String(i)
                }else  if answerLabel61.text == "" {
                    answerLabel61.text = String(i)
                }else  if answerLabel62.text == "" {
                    answerLabel62.text = String(i)
                }else  if answerLabel63.text == "" {
                    answerLabel63.text = String(i)
                }else  if answerLabel64.text == "" {
                    answerLabel64.text = String(i)
                }else  if answerLabel65.text == "" {
                    answerLabel65.text = String(i)
                }else  if answerLabel66.text == "" {
                    answerLabel66.text = String(i)
                }else  if answerLabel67.text == "" {
                    answerLabel67.text = String(i)
                }else  if answerLabel68.text == "" {
                    answerLabel68.text = String(i)
                }else  if answerLabel69.text == "" {
                    answerLabel69.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel62.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel68.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel69.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel60.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel61.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height: width * 0.07)
                answerLabel62.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel63.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel64.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel65.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel66.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel67.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel68.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel69.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel60)
            scrollView.addSubview(answerLabel61)
            scrollView.addSubview(answerLabel62)
            scrollView.addSubview(answerLabel63)
            scrollView.addSubview(answerLabel64)
            scrollView.addSubview(answerLabel65)
            scrollView.addSubview(answerLabel66)
            scrollView.addSubview(answerLabel67)
            scrollView.addSubview(answerLabel68)
            scrollView.addSubview(answerLabel69)



        }else if whicAnswer == 7 {
            answerLabel70.text = ""
            answerLabel71.text = ""
            answerLabel72.text = ""
            answerLabel73.text = ""
            answerLabel74.text = ""
            answerLabel75.text = ""
            answerLabel76.text = ""
            answerLabel77.text = ""
            answerLabel78.text = ""
            answerLabel79.text = ""

            answerLabel70.textAlignment = .center
            answerLabel71.textAlignment = .center
            answerLabel72.textAlignment = .center
            answerLabel73.textAlignment = .center
            answerLabel74.textAlignment = .center
            answerLabel75.textAlignment = .center
            answerLabel76.textAlignment = .center
            answerLabel77.textAlignment = .center
            answerLabel78.textAlignment = .center
            answerLabel79.textAlignment = .center


            
            for i in answer {
                if answerLabel70.text == "" {
                    answerLabel70.text = String(i)
                }else  if answerLabel71.text == "" {
                    answerLabel71.text = String(i)
                }else  if answerLabel72.text == "" {
                    answerLabel72.text = String(i)
                }else  if answerLabel73.text == "" {
                    answerLabel73.text = String(i)
                }else  if answerLabel74.text == "" {
                    answerLabel74.text = String(i)
                }else  if answerLabel75.text == "" {
                    answerLabel75.text = String(i)
                }else  if answerLabel76.text == "" {
                    answerLabel76.text = String(i)
                }else  if answerLabel77.text == "" {
                    answerLabel77.text = String(i)
                }else  if answerLabel78.text == "" {
                    answerLabel78.text = String(i)
                }else  if answerLabel79.text == "" {
                    answerLabel79.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel78.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel79.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel70.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel71.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel72.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel73.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel74.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel75.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel76.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel77.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel78.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel79.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel70)
            scrollView.addSubview(answerLabel71)
            scrollView.addSubview(answerLabel72)
            scrollView.addSubview(answerLabel73)
            scrollView.addSubview(answerLabel74)
            scrollView.addSubview(answerLabel75)
            scrollView.addSubview(answerLabel76)
            scrollView.addSubview(answerLabel77)
            scrollView.addSubview(answerLabel78)
            scrollView.addSubview(answerLabel79)

        }else if whicAnswer == 8 {
            answerLabel80.text = ""
            answerLabel81.text = ""
            answerLabel82.text = ""
            answerLabel83.text = ""
            answerLabel84.text = ""
            answerLabel85.text = ""
            answerLabel86.text = ""
            answerLabel87.text = ""
            answerLabel88.text = ""
            answerLabel89.text = ""
            
            answerLabel80.textAlignment = .center
            answerLabel81.textAlignment = .center
            answerLabel82.textAlignment = .center
            answerLabel83.textAlignment = .center
            answerLabel84.textAlignment = .center
            answerLabel85.textAlignment = .center
            answerLabel86.textAlignment = .center
            answerLabel87.textAlignment = .center
            answerLabel88.textAlignment = .center
            answerLabel89.textAlignment = .center


            
            for i in answer {
                if answerLabel80.text == "" {
                    answerLabel80.text = String(i)
                }else  if answerLabel81.text == "" {
                    answerLabel81.text = String(i)
                }else  if answerLabel82.text == "" {
                    answerLabel82.text = String(i)
                }else  if answerLabel83.text == "" {
                    answerLabel83.text = String(i)
                }else  if answerLabel84.text == "" {
                    answerLabel84.text = String(i)
                }else  if answerLabel85.text == "" {
                    answerLabel85.text = String(i)
                }else  if answerLabel86.text == "" {
                    answerLabel86.text = String(i)
                }else  if answerLabel87.text == "" {
                    answerLabel87.text = String(i)
                }else  if answerLabel88.text == "" {
                    answerLabel88.text = String(i)
                }else  if answerLabel89.text == "" {
                    answerLabel89.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel88.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel89.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)

            }else { //Yatay
                answerLabel80.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel81.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel82.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel83.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel84.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel85.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel86.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel87.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel88.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel89.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel80)
            scrollView.addSubview(answerLabel81)
            scrollView.addSubview(answerLabel82)
            scrollView.addSubview(answerLabel83)
            scrollView.addSubview(answerLabel84)
            scrollView.addSubview(answerLabel85)
            scrollView.addSubview(answerLabel86)
            scrollView.addSubview(answerLabel87)
            scrollView.addSubview(answerLabel88)
            scrollView.addSubview(answerLabel89)

            
        }else if whicAnswer == 9 {
            answerLabel90.text = ""
            answerLabel91.text = ""
            answerLabel92.text = ""
            answerLabel93.text = ""
            answerLabel94.text = ""
            answerLabel95.text = ""
            answerLabel96.text = ""
            answerLabel97.text = ""
            answerLabel98.text = ""
            answerLabel99.text = ""

            answerLabel90.textAlignment = .center
            answerLabel91.textAlignment = .center
            answerLabel92.textAlignment = .center
            answerLabel93.textAlignment = .center
            answerLabel94.textAlignment = .center
            answerLabel95.textAlignment = .center
            answerLabel96.textAlignment = .center
            answerLabel97.textAlignment = .center
            answerLabel98.textAlignment = .center
            answerLabel99.textAlignment = .center



            
            for i in answer {
                if answerLabel90.text == "" {
                    answerLabel90.text = String(i)
                }else  if answerLabel91.text == "" {
                    answerLabel91.text = String(i)
                }else  if answerLabel92.text == "" {
                    answerLabel92.text = String(i)
                }else  if answerLabel93.text == "" {
                    answerLabel93.text = String(i)
                }else  if answerLabel94.text == "" {
                    answerLabel94.text = String(i)
                }else  if answerLabel95.text == "" {
                    answerLabel95.text = String(i)
                }else  if answerLabel96.text == "" {
                    answerLabel96.text = String(i)
                }else  if answerLabel97.text == "" {
                    answerLabel97.text = String(i)
                }else  if answerLabel98.text == "" {
                    answerLabel98.text = String(i)
                }else  if answerLabel99.text == "" {
                    answerLabel99.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel98.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel99.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel90.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel91.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel92.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel93.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel94.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel95.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel96.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel97.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel98.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel99.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel90)
            scrollView.addSubview(answerLabel91)
            scrollView.addSubview(answerLabel92)
            scrollView.addSubview(answerLabel93)
            scrollView.addSubview(answerLabel94)
            scrollView.addSubview(answerLabel95)
            scrollView.addSubview(answerLabel96)
            scrollView.addSubview(answerLabel97)
            scrollView.addSubview(answerLabel98)
            scrollView.addSubview(answerLabel99)


        }else if whicAnswer == 10 {
            answerLabel100.text = ""
            answerLabel101.text = ""
            answerLabel102.text = ""
            answerLabel103.text = ""
            answerLabel104.text = ""
            answerLabel105.text = ""
            answerLabel106.text = ""
            answerLabel107.text = ""
            answerLabel108.text = ""
            answerLabel109.text = ""

            answerLabel100.textAlignment = .center
            answerLabel101.textAlignment = .center
            answerLabel102.textAlignment = .center
            answerLabel103.textAlignment = .center
            answerLabel104.textAlignment = .center
            answerLabel105.textAlignment = .center
            answerLabel106.textAlignment = .center
            answerLabel107.textAlignment = .center
            answerLabel108.textAlignment = .center
            answerLabel109.textAlignment = .center



            
            for i in answer {
                if answerLabel100.text == "" {
                    answerLabel100.text = String(i)
                }else  if answerLabel101.text == "" {
                    answerLabel101.text = String(i)
                }else  if answerLabel102.text == "" {
                    answerLabel102.text = String(i)
                }else  if answerLabel103.text == "" {
                    answerLabel103.text = String(i)
                }else  if answerLabel104.text == "" {
                    answerLabel104.text = String(i)
                }else  if answerLabel105.text == "" {
                    answerLabel105.text = String(i)
                }else  if answerLabel106.text == "" {
                    answerLabel106.text = String(i)
                }else  if answerLabel107.text == "" {
                    answerLabel107.text = String(i)
                }else  if answerLabel108.text == "" {
                    answerLabel108.text = String(i)
                }else  if answerLabel109.text == "" {
                    answerLabel109.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel108.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel109.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel100.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel101.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel102.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel103.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel104.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel105.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel106.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel107.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel108.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel109.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)

            }
            scrollView.addSubview(answerLabel100)
            scrollView.addSubview(answerLabel101)
            scrollView.addSubview(answerLabel102)
            scrollView.addSubview(answerLabel103)
            scrollView.addSubview(answerLabel104)
            scrollView.addSubview(answerLabel105)
            scrollView.addSubview(answerLabel106)
            scrollView.addSubview(answerLabel107)
            scrollView.addSubview(answerLabel108)
            scrollView.addSubview(answerLabel109)
            
        }else if whicAnswer == 11 {
            answerLabel110.text = ""
            answerLabel111.text = ""
            answerLabel112.text = ""
            answerLabel113.text = ""
            answerLabel114.text = ""
            answerLabel115.text = ""
            answerLabel116.text = ""
            answerLabel117.text = ""
            answerLabel118.text = ""
            answerLabel119.text = ""
            
            answerLabel110.textAlignment = .center
            answerLabel111.textAlignment = .center
            answerLabel112.textAlignment = .center
            answerLabel113.textAlignment = .center
            answerLabel114.textAlignment = .center
            answerLabel115.textAlignment = .center
            answerLabel116.textAlignment = .center
            answerLabel117.textAlignment = .center
            answerLabel118.textAlignment = .center
            answerLabel119.textAlignment = .center



            
            for i in answer {
                if answerLabel110.text == "" {
                    answerLabel110.text = String(i)
                }else  if answerLabel111.text == "" {
                    answerLabel111.text = String(i)
                }else  if answerLabel112.text == "" {
                    answerLabel112.text = String(i)
                }else  if answerLabel113.text == "" {
                    answerLabel113.text = String(i)
                }else  if answerLabel114.text == "" {
                    answerLabel114.text = String(i)
                }else  if answerLabel115.text == "" {
                    answerLabel115.text = String(i)
                }else  if answerLabel116.text == "" {
                    answerLabel116.text = String(i)
                }else  if answerLabel117.text == "" {
                    answerLabel117.text = String(i)
                }else  if answerLabel118.text == "" {
                    answerLabel118.text = String(i)
                }else  if answerLabel119.text == "" {
                    answerLabel119.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel118.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel119.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel110.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel111.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel112.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel113.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel114.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel115.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel116.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel117.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel118.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel119.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel110)
            scrollView.addSubview(answerLabel111)
            scrollView.addSubview(answerLabel112)
            scrollView.addSubview(answerLabel113)
            scrollView.addSubview(answerLabel114)
            scrollView.addSubview(answerLabel115)
            scrollView.addSubview(answerLabel116)
            scrollView.addSubview(answerLabel117)
            scrollView.addSubview(answerLabel118)
            scrollView.addSubview(answerLabel119)


        }else if whicAnswer == 12 {
            answerLabel120.text = ""
            answerLabel121.text = ""
            answerLabel122.text = ""
            answerLabel123.text = ""
            answerLabel124.text = ""
            answerLabel125.text = ""
            answerLabel126.text = ""
            answerLabel127.text = ""
            answerLabel128.text = ""
            answerLabel129.text = ""
            
            answerLabel120.textAlignment = .center
            answerLabel121.textAlignment = .center
            answerLabel122.textAlignment = .center
            answerLabel123.textAlignment = .center
            answerLabel124.textAlignment = .center
            answerLabel125.textAlignment = .center
            answerLabel126.textAlignment = .center
            answerLabel127.textAlignment = .center
            answerLabel128.textAlignment = .center
            answerLabel129.textAlignment = .center


            
            for i in answer {
                if answerLabel120.text == "" {
                    answerLabel120.text = String(i)
                }else  if answerLabel121.text == "" {
                    answerLabel121.text = String(i)
                }else  if answerLabel122.text == "" {
                    answerLabel122.text = String(i)
                }else  if answerLabel123.text == "" {
                    answerLabel123.text = String(i)
                }else  if answerLabel124.text == "" {
                    answerLabel124.text = String(i)
                }else  if answerLabel125.text == "" {
                    answerLabel125.text = String(i)
                }else  if answerLabel126.text == "" {
                    answerLabel126.text = String(i)
                }else  if answerLabel127.text == "" {
                    answerLabel127.text = String(i)
                }else  if answerLabel128.text == "" {
                    answerLabel128.text = String(i)
                }else  if answerLabel129.text == "" {
                    answerLabel129.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel128.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel129.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel120.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel121.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel122.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel123.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel124.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel125.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel126.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel127.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel128.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel129.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel120)
            scrollView.addSubview(answerLabel121)
            scrollView.addSubview(answerLabel122)
            scrollView.addSubview(answerLabel123)
            scrollView.addSubview(answerLabel124)
            scrollView.addSubview(answerLabel125)
            scrollView.addSubview(answerLabel126)
            scrollView.addSubview(answerLabel127)
            scrollView.addSubview(answerLabel128)
            scrollView.addSubview(answerLabel129)
            
        }else if whicAnswer == 13 {
            answerLabel130.text = ""
            answerLabel131.text = ""
            answerLabel132.text = ""
            answerLabel133.text = ""
            answerLabel134.text = ""
            answerLabel135.text = ""
            answerLabel136.text = ""
            answerLabel137.text = ""
            answerLabel138.text = ""
            answerLabel139.text = ""
            
            answerLabel130.textAlignment = .center
            answerLabel131.textAlignment = .center
            answerLabel132.textAlignment = .center
            answerLabel133.textAlignment = .center
            answerLabel134.textAlignment = .center
            answerLabel135.textAlignment = .center
            answerLabel136.textAlignment = .center
            answerLabel137.textAlignment = .center
            answerLabel138.textAlignment = .center
            answerLabel139.textAlignment = .center



            
            for i in answer {
                if answerLabel130.text == "" {
                    answerLabel130.text = String(i)
                }else  if answerLabel131.text == "" {
                    answerLabel131.text = String(i)
                }else  if answerLabel132.text == "" {
                    answerLabel132.text = String(i)
                }else  if answerLabel133.text == "" {
                    answerLabel133.text = String(i)
                }else  if answerLabel134.text == "" {
                    answerLabel134.text = String(i)
                }else  if answerLabel135.text == "" {
                    answerLabel135.text = String(i)
                }else  if answerLabel136.text == "" {
                    answerLabel136.text = String(i)
                }else  if answerLabel137.text == "" {
                    answerLabel137.text = String(i)
                }else  if answerLabel138.text == "" {
                    answerLabel138.text = String(i)
                }else  if answerLabel139.text == "" {
                    answerLabel139.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel138.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel139.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel130.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel131.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel132.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel133.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel134.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel135.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel136.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel137.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel138.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel139.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel130)
            scrollView.addSubview(answerLabel131)
            scrollView.addSubview(answerLabel132)
            scrollView.addSubview(answerLabel133)
            scrollView.addSubview(answerLabel134)
            scrollView.addSubview(answerLabel135)
            scrollView.addSubview(answerLabel136)
            scrollView.addSubview(answerLabel137)
            scrollView.addSubview(answerLabel138)
            scrollView.addSubview(answerLabel139)

        }else if whicAnswer == 14 {
            answerLabel140.text = ""
            answerLabel141.text = ""
            answerLabel142.text = ""
            answerLabel143.text = ""
            answerLabel144.text = ""
            answerLabel145.text = ""
            answerLabel146.text = ""
            answerLabel147.text = ""
            answerLabel148.text = ""
            answerLabel149.text = ""
            
            answerLabel140.textAlignment = .center
            answerLabel141.textAlignment = .center
            answerLabel142.textAlignment = .center
            answerLabel143.textAlignment = .center
            answerLabel144.textAlignment = .center
            answerLabel145.textAlignment = .center
            answerLabel146.textAlignment = .center
            answerLabel147.textAlignment = .center
            answerLabel148.textAlignment = .center
            answerLabel149.textAlignment = .center

            
            for i in answer {
                if answerLabel140.text == "" {
                    answerLabel140.text = String(i)
                }else  if answerLabel141.text == "" {
                    answerLabel141.text = String(i)
                }else  if answerLabel142.text == "" {
                    answerLabel142.text = String(i)
                }else  if answerLabel143.text == "" {
                    answerLabel143.text = String(i)
                }else  if answerLabel144.text == "" {
                    answerLabel144.text = String(i)
                }else  if answerLabel145.text == "" {
                    answerLabel145.text = String(i)
                }else  if answerLabel146.text == "" {
                    answerLabel146.text = String(i)
                }else  if answerLabel147.text == "" {
                    answerLabel147.text = String(i)
                }else  if answerLabel148.text == "" {
                    answerLabel148.text = String(i)
                }else  if answerLabel149.text == "" {
                    answerLabel149.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel148.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel149.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel140.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel141.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel142.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel143.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel144.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel145.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel146.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel147.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel148.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel149.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel140)
            scrollView.addSubview(answerLabel141)
            scrollView.addSubview(answerLabel142)
            scrollView.addSubview(answerLabel143)
            scrollView.addSubview(answerLabel144)
            scrollView.addSubview(answerLabel145)
            scrollView.addSubview(answerLabel146)
            scrollView.addSubview(answerLabel147)
            scrollView.addSubview(answerLabel148)
            scrollView.addSubview(answerLabel149)
            
        }else if whicAnswer == 15 {
            answerLabel150.text = ""
            answerLabel151.text = ""
            answerLabel152.text = ""
            answerLabel153.text = ""
            answerLabel154.text = ""
            answerLabel155.text = ""
            answerLabel156.text = ""
            answerLabel157.text = ""
            answerLabel158.text = ""
            answerLabel159.text = ""
            
            answerLabel150.textAlignment = .center
            answerLabel151.textAlignment = .center
            answerLabel152.textAlignment = .center
            answerLabel153.textAlignment = .center
            answerLabel154.textAlignment = .center
            answerLabel155.textAlignment = .center
            answerLabel156.textAlignment = .center
            answerLabel157.textAlignment = .center
            answerLabel158.textAlignment = .center
            answerLabel159.textAlignment = .center


            
            for i in answer {
                if answerLabel150.text == "" {
                    answerLabel150.text = String(i)
                }else  if answerLabel151.text == "" {
                    answerLabel151.text = String(i)
                }else  if answerLabel152.text == "" {
                    answerLabel152.text = String(i)
                }else  if answerLabel153.text == "" {
                    answerLabel153.text = String(i)
                }else  if answerLabel154.text == "" {
                    answerLabel154.text = String(i)
                }else  if answerLabel155.text == "" {
                    answerLabel155.text = String(i)
                }else  if answerLabel156.text == "" {
                    answerLabel156.text = String(i)
                }else  if answerLabel157.text == "" {
                    answerLabel157.text = String(i)
                }else  if answerLabel158.text == "" {
                    answerLabel158.text = String(i)
                }else  if answerLabel159.text == "" {
                    answerLabel159.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel158.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel159.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel150.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel151.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel152.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel153.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel154.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel155.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel156.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel157.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel158.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel159.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel150)
            scrollView.addSubview(answerLabel151)
            scrollView.addSubview(answerLabel152)
            scrollView.addSubview(answerLabel153)
            scrollView.addSubview(answerLabel154)
            scrollView.addSubview(answerLabel155)
            scrollView.addSubview(answerLabel156)
            scrollView.addSubview(answerLabel157)
            scrollView.addSubview(answerLabel158)
            scrollView.addSubview(answerLabel159)

        }else if whicAnswer == 16 {
            answerLabel160.text = ""
            answerLabel161.text = ""
            answerLabel162.text = ""
            answerLabel163.text = ""
            answerLabel164.text = ""
            answerLabel165.text = ""
            answerLabel166.text = ""
            answerLabel167.text = ""
            answerLabel168.text = ""
            answerLabel169.text = ""
            
            answerLabel160.textAlignment = .center
            answerLabel161.textAlignment = .center
            answerLabel162.textAlignment = .center
            answerLabel163.textAlignment = .center
            answerLabel164.textAlignment = .center
            answerLabel165.textAlignment = .center
            answerLabel166.textAlignment = .center
            answerLabel167.textAlignment = .center
            answerLabel168.textAlignment = .center
            answerLabel169.textAlignment = .center

            
            for i in answer {
                if answerLabel160.text == "" {
                    answerLabel160.text = String(i)
                }else  if answerLabel161.text == "" {
                    answerLabel161.text = String(i)
                }else  if answerLabel162.text == "" {
                    answerLabel162.text = String(i)
                }else if answerLabel163.text == "" {
                    answerLabel163.text = String(i)
                }else if answerLabel164.text == "" {
                    answerLabel164.text = String(i)
                }else if answerLabel165.text == "" {
                    answerLabel165.text = String(i)
                }else if answerLabel166.text == "" {
                    answerLabel166.text = String(i)
                }else if answerLabel167.text == "" {
                    answerLabel167.text = String(i)
                }else if answerLabel168.text == "" {
                    answerLabel168.text = String(i)
                }else if answerLabel169.text == "" {
                    answerLabel169.text = String(i)
                }
            }
            if isVertical { //Dikey
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x, y: y + (1 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x, y: y + (2 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x, y: y + (3 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x, y: y + (4 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x, y: y + (5 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x, y: y + (6 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x, y: y + (7 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel168.frame = CGRect(x: x, y: y + (8 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
                answerLabel169.frame = CGRect(x: x, y: y + (9 * (width * 0.07)), width:  width * 0.07, height:  width * 0.07)
            }else { //Yatay
                answerLabel160.frame = CGRect(x: x, y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel161.frame = CGRect(x: x + (1 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel162.frame = CGRect(x: x + (2 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel163.frame = CGRect(x: x + (3 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel164.frame = CGRect(x: x + (4 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel165.frame = CGRect(x: x + (5 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel166.frame = CGRect(x: x + (6 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel167.frame = CGRect(x: x + (7 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel168.frame = CGRect(x: x + (8 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
                answerLabel169.frame = CGRect(x: x + (9 * (width * 0.07)), y: y, width: width * 0.07, height:  width * 0.07)
            }
            scrollView.addSubview(answerLabel160)
            scrollView.addSubview(answerLabel161)
            scrollView.addSubview(answerLabel162)
            scrollView.addSubview(answerLabel163)
            scrollView.addSubview(answerLabel164)
            scrollView.addSubview(answerLabel165)
            scrollView.addSubview(answerLabel166)
            scrollView.addSubview(answerLabel167)
            scrollView.addSubview(answerLabel168)
            scrollView.addSubview(answerLabel169)

        }
    }
    
   
    
}


