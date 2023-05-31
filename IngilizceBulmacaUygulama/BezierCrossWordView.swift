//
//  BezierCrossWordView.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 22.05.2023.
//

import UIKit


class BezierCrossWordView: UIView {
    
    let instance = SingletonView.shared
    
    static var whichCrossword = -1
    
   

    
    static func square2(isVertical: Bool,x:CGFloat,y:CGFloat) {
        let width = SingletonView.shared.width
        
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()


        }
      
        
    }
    
    static func square3(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
       
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()


        }
        
    }
    
    static func square4(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
       
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()


        }
        
    }
    
    static func square5(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
       
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
        
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()


        }
        
    }
    
    static func square6(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
      
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x   , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07, y: y + 6 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x, y: y + 6 * (width * 0.07)))
            kare6.close()
        
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()

            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x + 5 * (width * 0.07), y: y ))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            kare6.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()


        }
        
    }
    
    static func square7(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
       
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x   , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07, y: y + 6 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x, y: y + 6 * (width * 0.07)))
            kare6.close()
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x   , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07, y: y + 7 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x, y: y + 7 * (width * 0.07)))
            kare7.close()
        
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()

            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x + 5 * (width * 0.07), y: y ))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            kare6.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x + 6 * (width * 0.07), y: y ))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            kare7.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))

            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()


        }
                
    }
    
    
    static func square8(isVertical: Bool,x:CGFloat,y:CGFloat) {
        
        let width = SingletonView.shared.width
       
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x   , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07, y: y + 6 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x, y: y + 6 * (width * 0.07)))
            kare6.close()
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x   , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07, y: y + 7 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x, y: y + 7 * (width * 0.07)))
            kare7.close()
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x   , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07, y: y + 8 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x, y: y + 8 * (width * 0.07)))
            kare8.close()
        
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x + 5 * (width * 0.07), y: y ))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            kare6.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x + 6 * (width * 0.07), y: y ))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            kare7.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x + 7 * (width * 0.07), y: y ))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y + width * 0.07))
            kare8.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            
            
        }
        
    }
    
    static func square9(isVertical:Bool,x:CGFloat,y:CGFloat) {
        let width = SingletonView.shared.width
        
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x   , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07, y: y + 6 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x, y: y + 6 * (width * 0.07)))
            kare6.close()
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x   , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07, y: y + 7 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x, y: y + 7 * (width * 0.07)))
            kare7.close()
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x   , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07, y: y + 8 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x, y: y + 8 * (width * 0.07)))
            kare8.close()
            
            let kare9 = UIBezierPath()
            kare9.move(to: CGPoint(x:x   , y: y + 8 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 8 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x + width * 0.07, y: y + 9 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x, y: y + 9 * (width * 0.07)))
            kare9.close()
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            kare9.stroke()
            
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x + 5 * (width * 0.07), y: y ))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            kare6.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x + 6 * (width * 0.07), y: y ))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            kare7.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x + 7 * (width * 0.07), y: y ))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y + width * 0.07))
            kare8.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            
            let kare9 = UIBezierPath()
            kare9.move(to: CGPoint(x:x + 8 * (width * 0.07), y: y ))
            kare9.addLine(to: CGPoint(x: x + 9 * (width * 0.07), y: y))
            kare9.addLine(to: CGPoint(x: x + 9 * (width * 0.07), y: y + width * 0.07))
            kare9.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y + width * 0.07))
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            kare9.stroke()

        }
    }
    
    static func square10(isVertical:Bool,x:CGFloat,y:CGFloat) {
        let width = SingletonView.shared.width
        
        
        let myColor = UIColor(red: 88/255, green: 159/255, blue: 1.0, alpha: 1)
        
        if isVertical {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x   , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07 , y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + 2 * (width * 0.07)))
            kare2.addLine(to: CGPoint(x: x, y: y + 2 * (width * 0.07)))
            kare2.close()
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x   , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 2 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x + width * 0.07, y: y + 3 * (width * 0.07)))
            kare3.addLine(to: CGPoint(x: x, y: y + 3 * (width * 0.07)))
            kare3.close()
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x   , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 3 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x + width * 0.07, y: y + 4 * (width * 0.07)))
            kare4.addLine(to: CGPoint(x: x, y: y + 4 * (width * 0.07)))
            kare4.close()
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x   , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 4 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x + width * 0.07, y: y + 5 * (width * 0.07)))
            kare5.addLine(to: CGPoint(x: x, y: y + 5 * (width * 0.07)))
            kare5.close()
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x   , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 5 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x + width * 0.07, y: y + 6 * (width * 0.07)))
            kare6.addLine(to: CGPoint(x: x, y: y + 6 * (width * 0.07)))
            kare6.close()
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x   , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 6 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x + width * 0.07, y: y + 7 * (width * 0.07)))
            kare7.addLine(to: CGPoint(x: x, y: y + 7 * (width * 0.07)))
            kare7.close()
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x   , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 7 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x + width * 0.07, y: y + 8 * (width * 0.07)))
            kare8.addLine(to: CGPoint(x: x, y: y + 8 * (width * 0.07)))
            kare8.close()
            
            let kare9 = UIBezierPath()
            kare9.move(to: CGPoint(x:x   , y: y + 8 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 8 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x + width * 0.07, y: y + 9 * (width * 0.07)))
            kare9.addLine(to: CGPoint(x: x, y: y + 9 * (width * 0.07)))
            kare9.close()
            
            let kare10 = UIBezierPath()
            kare10.move(to: CGPoint(x:x   , y: y + 9 * (width * 0.07)))
            kare10.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 9 * (width * 0.07)))
            kare10.addLine(to: CGPoint(x: x + width * 0.07, y: y + 10 * (width * 0.07)))
            kare10.addLine(to: CGPoint(x: x, y: y + 10 * (width * 0.07)))
            kare10.close()
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            kare9.stroke()
            kare10.stroke()
            
            
        }else {
            let kare1 = UIBezierPath()
            kare1.move(to: CGPoint(x: x, y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07 , y: y))
            kare1.addLine(to: CGPoint(x: x + width * 0.07  , y: y + width * 0.07))
            kare1.addLine(to: CGPoint(x: x , y: y + width * 0.07))
            kare1.close()
            
            let kare2 = UIBezierPath()
            kare2.move(to: CGPoint(x:x + width * 0.07, y: y ))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y))
            kare2.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            kare2.addLine(to: CGPoint(x: x + width * 0.07, y: y + width * 0.07))
            
            let kare3 = UIBezierPath()
            kare3.move(to: CGPoint(x:x + 2 * (width * 0.07), y: y ))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y))
            kare3.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            kare3.addLine(to: CGPoint(x: x + 2 * (width * 0.07), y: y + width * 0.07))
            
            let kare4 = UIBezierPath()
            kare4.move(to: CGPoint(x:x + 3 * (width * 0.07), y: y ))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y))
            kare4.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            kare4.addLine(to: CGPoint(x: x + 3 * (width * 0.07), y: y + width * 0.07))
            
            let kare5 = UIBezierPath()
            kare5.move(to: CGPoint(x:x + 4 * (width * 0.07), y: y ))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y))
            kare5.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            kare5.addLine(to: CGPoint(x: x + 4 * (width * 0.07), y: y + width * 0.07))
            
            let kare6 = UIBezierPath()
            kare6.move(to: CGPoint(x:x + 5 * (width * 0.07), y: y ))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y))
            kare6.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            kare6.addLine(to: CGPoint(x: x + 5 * (width * 0.07), y: y + width * 0.07))
            
            let kare7 = UIBezierPath()
            kare7.move(to: CGPoint(x:x + 6 * (width * 0.07), y: y ))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y))
            kare7.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            kare7.addLine(to: CGPoint(x: x + 6 * (width * 0.07), y: y + width * 0.07))
            
            let kare8 = UIBezierPath()
            kare8.move(to: CGPoint(x:x + 7 * (width * 0.07), y: y ))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y))
            kare8.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y + width * 0.07))
            kare8.addLine(to: CGPoint(x: x + 7 * (width * 0.07), y: y + width * 0.07))
            
            let kare9 = UIBezierPath()
            kare9.move(to: CGPoint(x:x + 8 * (width * 0.07), y: y ))
            kare9.addLine(to: CGPoint(x: x + 9 * (width * 0.07), y: y))
            kare9.addLine(to: CGPoint(x: x + 9 * (width * 0.07), y: y + width * 0.07))
            kare9.addLine(to: CGPoint(x: x + 8 * (width * 0.07), y: y + width * 0.07))
            
            let kare10 = UIBezierPath()
            kare10.move(to: CGPoint(x:x + 9 * (width * 0.07), y: y ))
            kare10.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y))
            kare10.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
            kare10.addLine(to: CGPoint(x: x + 9 * (width * 0.07), y: y + width * 0.07))
            
            myColor.setStroke()
            kare1.stroke()
            kare2.stroke()
            kare3.stroke()
            kare4.stroke()
            kare5.stroke()
            kare6.stroke()
            kare7.stroke()
            kare8.stroke()
            kare9.stroke()
            kare10.stroke()

        }
        
    }
    static func Line(is4 : Bool,lineColor: UIColor) {
        let width = SingletonView.shared.width
        let cizgi = UIBezierPath()
        if is4 { //4 satıra göre çizgi
            cizgi.move(to: CGPoint(x: width * 0.05, y: width * 0.56))
            cizgi.addLine(to: CGPoint(x: width * 1.95 , y: width * 0.56))
         
        }else{ //3 satıra göre çizgi
            cizgi.move(to: CGPoint(x: width * 0.05, y: width * 0.47))
            cizgi.addLine(to: CGPoint(x: width * 1.95 , y: width * 0.47))
        }
            
     
        cizgi.lineWidth = 2
        lineColor.setStroke()
        cizgi.stroke()
    }
    
    
    override func draw(_ rect: CGRect) {
        let width = instance.width
        //Bu şekilde hangi indexte hangi görüntü olacağo BELLİ OLUR
        if BezierCrossWordView.whichCrossword == -1 {
            BezierCrossWordView.square8(isVertical: true, x: width * 0.29, y: width * 0.43)
            BezierCrossWordView.square8(isVertical: false, x: width * 0.15, y: width * 0.57)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.29, y: width * 0.71)
            BezierCrossWordView.square8(isVertical: false, x: width * 0.22, y: width * 0.85)
            BezierCrossWordView.square8(isVertical: true, x: width * 0.57, y: width * 0.57)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.57, y: width * 0.99)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.5, y: width * 1.13)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.57, y: width * 1.20)
            BezierCrossWordView.square2(isVertical: true, x: width * 0.57, y: width * 1.13)
            BezierCrossWordView.square5(isVertical: false, x: width * 0.57, y: width * 0.71)
            BezierCrossWordView.square7(isVertical: false, x: width * 0.08, y: width * 0.99)
            BezierCrossWordView.square3(isVertical: true, x: width * 0.15, y: width * 0.99)
            
        }else if BezierCrossWordView.whichCrossword == 0 { // 0. index == BULMACA1
            BezierCrossWordView.Line(is4: true, lineColor: .black)
            BezierCrossWordView.square5(isVertical: false, x: width * 0.1, y: width * 0.7)
            BezierCrossWordView.square6(isVertical: false, x: width * 0.1, y: width * 0.84)
            BezierCrossWordView.square8(isVertical: true, x: width * 0.17, y: width * 0.63)
            BezierCrossWordView.square8(isVertical: false, x: width * 0.17, y: width * 1.12)
            BezierCrossWordView.square7(isVertical: true, x: width * 0.31, y: width * 0.98)
            BezierCrossWordView.square6(isVertical: false, x: width * 0.1, y: width * 1.4)
            BezierCrossWordView.square9(isVertical: false, x: width * 0.31, y: width * 0.98)
            BezierCrossWordView.square9(isVertical: true, x: width * 0.87, y: width * 0.98)
            BezierCrossWordView.square7(isVertical: false, x: width * 0.45, y: width * 1.54)
            BezierCrossWordView.square6(isVertical: true, x: width * 0.73, y: width * 1.33)
            BezierCrossWordView.square8(isVertical: false, x: width * 0.87, y: width * 1.12)
            BezierCrossWordView.square8(isVertical: true, x: width * 1.15, y: width * 0.91)
    
            BezierCrossWordView.square3(isVertical: false, x: width * 1.15, y: width * 1.26)
            BezierCrossWordView.square5(isVertical: false, x: width * 0.87, y: width * 1.4)
            BezierCrossWordView.square4(isVertical: false, x: width * 0.24, y: width * 1.26)
            BezierCrossWordView.square5(isVertical: false, x: width * 0.38, y: width * 1.68)
            
        }else if BezierCrossWordView.whichCrossword == 1 {// 1. index == BULMACA2
            BezierCrossWordView.Line(is4: false, lineColor: .black)
            BezierCrossWordView.square8(isVertical: true, x: width * 0.57, y: width * 0.57)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.57, y: width * 0.99)
            BezierCrossWordView.square2(isVertical: false, x: width * 0.5, y: width * 1.13)
           
      
        }else if BezierCrossWordView.whichCrossword == 2 {
            
        }else if BezierCrossWordView.whichCrossword == 3 {
            
        }else if BezierCrossWordView.whichCrossword == 4 {
            
        }else if BezierCrossWordView.whichCrossword == 5 {
            
        }else if BezierCrossWordView.whichCrossword == 6 {
            
        }else if BezierCrossWordView.whichCrossword == 7 {
            
        }
     
        
        
        
    }
    
    


}


