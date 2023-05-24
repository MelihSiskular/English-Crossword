//
//  CrossWordViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 24.05.2023.
//

import UIKit

class CrossWordViewController: UIViewController {
    
    var width = CGFloat()
    var height = CGFloat()
    
    var choosenTitle = String()
    var choosenIndexPathRow = Int()
    
    let completeButton = UIButton()
    
    var TurkishWordArray = [String]() ///Kaç tane kelime olacak // MİN 10 - MAX 16 KELİME
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = SingletonView.shared.width
        height = SingletonView.shared.height
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Bulmacalar"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "\(choosenTitle)"
        
        completeButton.setTitle("Tamamla", for: UIControl.State.normal)
        completeButton.layer.backgroundColor = UIColor.blue.cgColor
        completeButton.layer.cornerRadius = 12
        completeButton.frame = CGRect(x: width * 0.5 - (width * 0.4)/2, y: height * 0.9 , width: width * 0.4, height: height * 0.08)
        
        
        
  
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        controlOfIndex(with: choosenIndexPathRow)
    }
    
    func controlOfIndex(with index: Int) {
        ///BezierViewler için hangi görübyü oluşacağı zaten collectionView prepareSegue kısmında belli buraya gelince bizimö yapmamız gereken sadece bezierView tanımlayıp, viewe ekleyip, arka plan rengi ile oynamak!!!!!!!
        
        TurkishWordArray.removeAll()
        ///Append işlemi yapacağım çıkgir yapınca saçmalamasın diye! remoAll yaptım
        
        
        switch index {
        case 0:
            print("0.index için olacaklar")
            
            //---Her bulmaca için bu şekil oluştuır onu çek
            let bezierView = BezierCrossWordView(frame: CGRect(x: 0, y: 0, width: width , height: height))
            self.view.addSubview(bezierView)
            
            //--Hem view hem bezierPath aynı olsun çünkü bazen y'De özellikle kayma yaparsak diye açıkta boş renk kalmasın
            bezierView.backgroundColor = .systemYellow
            view.backgroundColor = .systemYellow
            
           
            
        case 1:
            print("1.index için olacaklar")
            let bezierView = BezierCrossWordView(frame: CGRect(x: 0, y: 100, width: width , height: height))
            self.view.addSubview(bezierView)
            bezierView.backgroundColor = .systemPink
            view.backgroundColor = .systemPink
            
          
            
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
        view.addSubview(completeButton) ///BezierPath üstte kalmaması için bunu  sonra ekliyorum.
    }
    


}
