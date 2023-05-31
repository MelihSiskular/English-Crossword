//
//  MyProfileViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 23.05.2023.
//

import UIKit

class MyProfileViewController: UIViewController {

    let labelOfName = UILabel()
    let myImageView = UIImageView()
    
    let labelOfMyLife = UILabel()
    
    let labelOfEmailAdress = UILabel()
    let labelOfInstagram = UILabel()
    let imageEmail = UIImageView()
    let imageInstagram = UIImageView()
    
    let donate = UILabel()
    @IBOutlet var bgView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        let width = SingletonView.shared.width
        let height = SingletonView.shared.height
        
        bgView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.backgroundColor = UIColor(red: 100/255, green: 12/255, blue: 255/255, alpha: 1)
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Ana Sayfa"
        
        
        labelOfName.text = "Melih Şişkular"
        labelOfName.textAlignment = .center
        labelOfName.frame = CGRect(x: width * 0.5 - (width * 0.7)/2, y: height * 0.09, width: width * 0.7, height: height * 0.06)
        labelOfName.font = UIFont(name: "Euphemia UCAS Italic", size: 35)
        labelOfName.textColor = myColor
        
        myImageView.frame = CGRect(x: width * 0.5 - (width * 0.5)/2, y: height * 0.305 - (width * 0.5)/2, width: width * 0.5, height: width * 0.5)
        myImageView.image = UIImage(named: "myPhoto")
        myImageView.layer.borderWidth = 4
        myImageView.layer.borderColor = myColor.cgColor
       
        
        labelOfMyLife.numberOfLines = 0
        labelOfMyLife.text = """
"Ben Melih Şişkular, Trakya Üniversitesi Bilgisayar Mühendisliği Hazırlık sınıfı öğrencisiyim. Bilgisayar mühendisliği bölümünü kazandığım andan beri kendimi bu alanda günbegün geliştiriyorum. Ve bu da hem kendimi geliştirmek hemde halihazırda bulunduğum hazırlık sınıfı için kendimi ingilizce anlamında da geliştirecek bir uygulama. Öneri ve Şikayetleriniz için ulaşabilceğiniz adresler bırakıyorum  ve bana destek olmak isterseniz memnun olurum."
"""
        labelOfMyLife.textColor = .white
        labelOfMyLife.frame = CGRect(x: width * 0.5 - (width * 0.83)/2, y: height * 0.38, width: width * 0.83, height: height * 0.45)
        labelOfMyLife.textAlignment = .center
        labelOfMyLife.font = UIFont(name: "Euphemia UCAS Italic", size: 14)
            
        labelOfEmailAdress.text = "   melihsiskular2003@gmail.com"
        labelOfEmailAdress.font = UIFont(name: "Menlo", size: 15)
        labelOfEmailAdress.isUserInteractionEnabled = true
        labelOfEmailAdress.frame = CGRect(x: width * 0.5 - (width * 0.9)/2, y: height * 0.77, width: width * 0.9, height: height * 0.06)
        labelOfEmailAdress.textAlignment = .center
        labelOfEmailAdress.layer.backgroundColor = myColor.cgColor
        labelOfEmailAdress.layer.cornerRadius = 20
        imageEmail.image = UIImage(named: "iconMail")
        imageEmail.frame = CGRect(x: width * 0.09, y: height * 0.78, width: height * 0.04, height:  height * 0.04)
        
        labelOfInstagram.text = "     https://www.instagram.com/melihsklr/"
        labelOfInstagram.font = UIFont(name: "Menlo", size: 12.5)
        labelOfInstagram.isUserInteractionEnabled = true
        labelOfInstagram.frame = CGRect(x: width * 0.5 - (width * 0.9)/2, y: height * 0.84, width: width * 0.9, height: height * 0.06)
        labelOfInstagram.textAlignment = .center
        labelOfInstagram.layer.backgroundColor = myColor.cgColor
        labelOfInstagram.layer.cornerRadius = 20
        imageInstagram.image = UIImage(named: "iconInsta")
        imageInstagram.frame = CGRect(x: width * 0.095, y: height * 0.8525, width: height * 0.035, height:  height * 0.035)
        
        let gestureRecgonizerInsta = UITapGestureRecognizer(target: self, action: #selector(pasteBoardInstagram))
        let gestureRecgonizerEmail = UITapGestureRecognizer(target: self, action: #selector(pasteBoardEmail))
        labelOfEmailAdress.addGestureRecognizer(gestureRecgonizerEmail)
        labelOfInstagram.addGestureRecognizer(gestureRecgonizerInsta)
        
        donate.text = "BAĞIŞ"
        donate.frame = CGRect(x: width * 0.5 - (width * 0.3)/2, y: height * 0.92, width: width * 0.3, height: height * 0.04)
        donate.textAlignment = .center
        donate.textColor = .white
        donate.layer.backgroundColor = myColor.cgColor
        donate.layer.cornerRadius = 20
        
        view.addSubview(labelOfName)
        view.addSubview(labelOfMyLife)
        view.addSubview(myImageView)
        view.addSubview(labelOfInstagram)
        view.addSubview(labelOfEmailAdress)
        view.addSubview(imageEmail)
        view.addSubview(imageInstagram)
        view.addSubview(donate)
        
        setGradientBackground()
    }
  
    
    @objc // ------------PANOYA KOPYALAMA İŞLEMİ-------------
    func pasteBoardInstagram() {
        (UIPasteboard.general.string) = labelOfInstagram.text
        DispatchQueue.main.async {
            self.labelOfInstagram.textColor = .white
            self.labelOfInstagram.text = "Panoya Kopyalandı"
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.labelOfInstagram.textColor = .black
                self.labelOfInstagram.text = "     https://www.instagram.com/melihsklr/"
            }
        }
    }
    @objc
    func pasteBoardEmail() {
        (UIPasteboard.general.string) = labelOfEmailAdress.text
        DispatchQueue.main.async {
            self.labelOfEmailAdress.textColor = .white
            self.labelOfEmailAdress.text = "Panoya Kopyalandı"
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.labelOfEmailAdress.textColor = .black
                self.labelOfEmailAdress.text = "   melihsiskular2003@gmail.com"
            }
        }
    }
    
    
    func setGradientBackground() {
        
        let colorTop = UIColor(red: 100/255, green: 12/255, blue: 255/255, alpha: 1)
        let colorBottom = UIColor(red: 146/255, green: 204/255, blue: 255/255, alpha: 1)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.frame = self.bgView.bounds
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.colors = [colorTop.cgColor,colorBottom.cgColor]
        self.bgView.layer.insertSublayer(gradientLayer, at: 0)
        
    }


}
