//
//  ViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    let instanceShared = SingletonView.shared

    let nameOfApp = UILabel()
    let improveYourEnglishSkills = UILabel()
    
    let buttonOfStatistic = UIButton()
    let buttonOfMyProfile = UIButton()
    let buttonOfToCollectionView = UIButton()
    
    ///BEGINNER
    let labelBegınner1 = UILabel()
    let labelBegınner2 = UILabel()
    let labelBegınner3 = UILabel()
    let labelBegınner4 = UILabel()
    let labelBegınner5 = UILabel()
    let labelBegınner6 = UILabel()
    let labelBegınner7 = UILabel()
    let labelBegınner8 = UILabel()
    
    ///TO
    let labelTo1 = UILabel()
    let labelTo2 = UILabel()
    
    ///ADVANCED
    let labelAdvanced1 = UILabel()
    let labelAdvanced2 = UILabel()
    let labelAdvanced3 = UILabel()
    let labelAdvanced4 = UILabel()
    let labelAdvanced5 = UILabel()
    let labelAdvanced6 = UILabel()
    let labelAdvanced7 = UILabel()
    let labelAdvanced8 = UILabel()
    
    ///DEVELOPED
    let labelDeveloped1 = UILabel()
    let labelDeveloped2 = UILabel()
    let labelDeveloped3 = UILabel()
    let labelDeveloped4 = UILabel()
    let labelDeveloped5 = UILabel()
    let labelDeveloped6 = UILabel()
    let labelDeveloped7 = UILabel()
    let labelDeveloped8 = UILabel()
    let labelDeveloped9 = UILabel()
    
    ///BY
    let labelBy1 = UILabel()
    let labelBy2 = UILabel()
    
    ///MŞ
    let labelMs1 = UILabel()
    let labelMs2 = UILabel()
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let myColor = UIColor(red: 11/255, green: 153/255, blue: 215/255, alpha: 1)
        
        let width = view.frame.size.width
        let height = view.frame.size.height
      
        instanceShared.width = width
        instanceShared.height = height
        
        let bezierView = BezierCrossWordView(frame: CGRect(x: 0, y: 0, width: width, height: height))
      
        bezierView.backgroundColor = .systemGray5
        
        self.view.addSubview(bezierView)
     
       
        
        
        
        
        nameOfApp.frame = CGRect(x: width * 0.4 - (width * 0.8)/2, y: height * 0.1, width: width * 0.8, height: height * 0.1)
        nameOfApp.text = "İngilizce\n                      BULMACA"
        nameOfApp.numberOfLines = 2
        nameOfApp.textAlignment = .center
        nameOfApp.font = UIFont(name: "Rockwell", size: 25)
        nameOfApp.textColor = myColor
        
        improveYourEnglishSkills.text = """
"Improve Your English Vocab Skills"
"""
        improveYourEnglishSkills.frame = CGRect(x: width * 0.5 - (width * 0.9)/2 , y: height * 0.73, width: width * 0.9, height: height * 0.1)
        improveYourEnglishSkills.textAlignment = .center
        improveYourEnglishSkills.font =
        UIFont(name: "DIN Altarnate", size: 37)
        improveYourEnglishSkills.numberOfLines = 1
        improveYourEnglishSkills.textColor = myColor
        
        
        
        buttonOfToCollectionView.frame = CGRect(x: width * 0.5 - (width * 0.3)/2, y: height * 0.85, width: width * 0.3, height: height * 0.09)
        buttonOfToCollectionView.addTarget(self, action: #selector(toCollectionView), for: UIControl.Event.touchUpInside)
        buttonOfToCollectionView.setTitle("Bulmacalar", for: UIControl.State.normal)
        buttonOfToCollectionView.setTitleColor(.white, for: UIControl.State.normal)
        buttonOfToCollectionView.backgroundColor = myColor
        buttonOfToCollectionView.layer.cornerRadius = 12
        
        buttonOfStatistic.frame = CGRect(x: (width * 0.5 - (width * 0.28)/2) - width * 0.3, y: height * 0.86, width: width * 0.28, height: height * 0.07)
        buttonOfStatistic.addTarget(self, action: #selector(toStatistic), for: UIControl.Event.touchUpInside)
        buttonOfStatistic.setTitle("İstatisklerin", for: UIControl.State.normal)
        buttonOfStatistic.setTitleColor(.white, for: UIControl.State.normal)
        buttonOfStatistic.backgroundColor = myColor
        buttonOfStatistic.layer.cornerRadius = 12
        
        
        buttonOfMyProfile.frame = CGRect(x: (width * 0.5 - (width * 0.28)/2) + width * 0.3, y: height * 0.86, width: width * 0.28, height: height * 0.07)
        buttonOfMyProfile.addTarget(self, action: #selector(toMyProfile), for: UIControl.Event.touchUpInside)
        buttonOfMyProfile.setTitle("Geliştirici", for: UIControl.State.normal)
        buttonOfMyProfile.setTitleColor(.white, for: UIControl.State.normal)
        buttonOfMyProfile.backgroundColor = myColor
        buttonOfMyProfile.layer.cornerRadius = 12
        
        beginnerView()
        toView()
        advancedView()
        developedView()
        byView()
        msView()
        
        view.addSubview(nameOfApp)
        view.addSubview(improveYourEnglishSkills)
        
        view.addSubview(buttonOfStatistic)
        view.addSubview(buttonOfToCollectionView)
        view.addSubview(buttonOfMyProfile)
    }
    
    //MARK: - Functions
    
    ///Her ekran açılımında whichCorssword değeri -1 ile ana ekran görüntümüz gözükür
    ///Diğer değerli indexi kullanarak prepare segue da atacağız
    override func viewWillAppear(_ animated: Bool) {
        BezierCrossWordView.whichCrossword = -1
        getData()
    }
    
    private func getData() {
        for i in 0...bulmacalar.count - 1 {
            if UserDefaults.standard.value(forKey: "\(i)") != nil {
                bulmacalar[i].score = UserDefaults.standard.value(forKey: "\(i)") as! Int
            }
        }
        for i in 0...bulmacalar.count - 1 {
            if UserDefaults.standard.value(forKey: "Bulmaca \(i)") != nil {
                bulmacalar[i].isCrosswordSolved = UserDefaults.standard.value(forKey: "Bulmaca \(i)") as! Int
            }
        }
    }
    
    ///Functions for view
    func beginnerView() {
        
        let width = instanceShared.width
        
        
        labelBegınner1.text = "B"
        labelBegınner2.text = "E"
        labelBegınner3.text = "G"
        labelBegınner4.text = "I"
        labelBegınner5.text = "N"
        labelBegınner6.text = "N"
        labelBegınner7.text = "E"
        labelBegınner8.text = "R"
        
        labelBegınner1.textAlignment = .center
        labelBegınner2.textAlignment = .center
        labelBegınner3.textAlignment = .center
        labelBegınner4.textAlignment = .center
        labelBegınner5.textAlignment = .center
        labelBegınner6.textAlignment = .center
        labelBegınner7.textAlignment = .center
        labelBegınner8.textAlignment = .center
        
        labelBegınner1.frame = CGRect(x: width * 0.15, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner2.frame = CGRect(x: width * 0.22, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner3.frame = CGRect(x: width * 0.29, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner4.frame = CGRect(x: width * 0.36, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner5.frame = CGRect(x: width * 0.43, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner6.frame = CGRect(x: width * 0.5, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner7.frame = CGRect(x: width * 0.57, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        labelBegınner8.frame = CGRect(x: width * 0.64, y: width * 0.57, width: width * 0.07, height: width * 0.07)
        
        
        
        view.addSubview(labelBegınner1)
        view.addSubview(labelBegınner2)
        view.addSubview(labelBegınner3)
        view.addSubview(labelBegınner4)
        view.addSubview(labelBegınner5)
        view.addSubview(labelBegınner6)
        view.addSubview(labelBegınner7)
        view.addSubview(labelBegınner8)
    }
    
    func toView() {
        
        let width = instanceShared.width
       
        
        labelTo1.text = "T"
        labelTo2.text = "O"
            
        labelTo1.textAlignment = .center
        labelTo2.textAlignment = .center
        
        labelTo1.frame = CGRect(x: width * 0.29, y: width * 0.71, width: width * 0.07, height: width * 0.07)
        labelTo2.frame = CGRect(x: width * 0.36, y: width * 0.71, width: width * 0.07, height: width * 0.07)
       
        
        view.addSubview(labelTo1)
        view.addSubview(labelTo2)
    }
    
    func advancedView() {
        
        let width = instanceShared.width
       
        
        labelAdvanced1.text = "A"
        labelAdvanced2.text = "D"
        labelAdvanced3.text = "V"
        labelAdvanced4.text = "A"
        labelAdvanced5.text = "N"
        labelAdvanced6.text = "C"
        labelAdvanced7.text = "E"
        labelAdvanced8.text = "D"
        
        labelAdvanced1.frame = CGRect(x: width * 0.22, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced2.frame = CGRect(x: width * 0.29, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced3.frame = CGRect(x: width * 0.36, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced4.frame = CGRect(x: width * 0.43, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced5.frame = CGRect(x: width * 0.5, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced6.frame = CGRect(x: width * 0.57, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced7.frame = CGRect(x: width * 0.64, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        labelAdvanced8.frame = CGRect(x: width * 0.71, y: width * 0.85, width: width * 0.07, height: width * 0.07)
        
        
        labelAdvanced1.textAlignment = .center
        labelAdvanced2.textAlignment = .center
        labelAdvanced3.textAlignment = .center
        labelAdvanced4.textAlignment = .center
        labelAdvanced5.textAlignment = .center
        labelAdvanced6.textAlignment = .center
        labelAdvanced7.textAlignment = .center
        labelAdvanced8.textAlignment = .center

        
        view.addSubview(labelAdvanced1)
        view.addSubview(labelAdvanced2)
        view.addSubview(labelAdvanced3)
        view.addSubview(labelAdvanced4)
        view.addSubview(labelAdvanced5)
        view.addSubview(labelAdvanced6)
        view.addSubview(labelAdvanced7)
        view.addSubview(labelAdvanced8)
    }
    
    func developedView() {
        let width = instanceShared.width
        
        labelDeveloped1.text = "D"
        labelDeveloped2.text = "E"
        labelDeveloped3.text = "V"
        labelDeveloped4.text = "E"
        labelDeveloped5.text = "L"
        labelDeveloped6.text = "O"
        labelDeveloped7.text = "P"
        labelDeveloped8.text = "E"
        labelDeveloped9.text = "D"
        
        labelDeveloped1.textAlignment = .center
        labelDeveloped2.textAlignment = .center
        labelDeveloped3.textAlignment = .center
        labelDeveloped4.textAlignment = .center
        labelDeveloped5.textAlignment = .center
        labelDeveloped6.textAlignment = .center
        labelDeveloped7.textAlignment = .center
        labelDeveloped8.textAlignment = .center
        labelDeveloped9.textAlignment = .center

        labelDeveloped1.frame = CGRect(x: width * 0.08, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped2.frame = CGRect(x: width * 0.15, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped3.frame = CGRect(x: width * 0.22, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped4.frame = CGRect(x: width * 0.29, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped5.frame = CGRect(x: width * 0.36, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped6.frame = CGRect(x: width * 0.43, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped7.frame = CGRect(x: width * 0.5, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped8.frame = CGRect(x: width * 0.57, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        labelDeveloped9.frame = CGRect(x: width * 0.64, y: width * 0.99, width: width * 0.07, height: width * 0.07)
        

        
        view.addSubview(labelDeveloped1)
        view.addSubview(labelDeveloped2)
        view.addSubview(labelDeveloped3)
        view.addSubview(labelDeveloped4)
        view.addSubview(labelDeveloped5)
        view.addSubview(labelDeveloped6)
        view.addSubview(labelDeveloped7)
        view.addSubview(labelDeveloped8)
        view.addSubview(labelDeveloped9)
    }
    
    func byView() {
        let width = instanceShared.width
        
        labelBy1.text = "B"
        labelBy2.text = "Y"
        
        labelBy1.textAlignment = .center
        labelBy2.textAlignment = .center
        
        labelBy1.frame = CGRect(x: width * 0.5, y: width * 1.13, width: width * 0.07, height: width * 0.07)
        labelBy2.frame = CGRect(x: width * 0.57, y: width * 1.13, width: width * 0.07, height: width * 0.07)
        
        view.addSubview(labelBy1)
        view.addSubview(labelBy2)
        
        
    }
    
    func msView() {
        let width = instanceShared.width
        
        labelMs1.text = "M"
        labelMs2.text = "Ş"
        
        labelMs1.textAlignment = .center
        labelMs2.textAlignment = .center
        
        labelMs1.frame = CGRect(x: width * 0.57, y: width * 1.20, width: width * 0.07, height: width * 0.07)
        labelMs2.frame = CGRect(x: width * 0.64, y: width * 1.20, width: width * 0.07, height: width * 0.07)
        
        view.addSubview(labelMs1)
        view.addSubview(labelMs2)
        
        
    }
    
    
    @objc
    func toCollectionView() {
        performSegue(withIdentifier: "segueToCollectionView", sender: nil)
    }
    
    @objc
    func toStatistic() {
       performSegue(withIdentifier: "segueToStatistic", sender: nil)
    }
    
    @objc
    func toMyProfile() {
        performSegue(withIdentifier: "segueToMyProfile", sender: nil)
    }
    


}
