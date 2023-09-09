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
    
    static func square11(isVertical:Bool,x:CGFloat,y:CGFloat) {
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x   , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07, y: y + 11 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x, y: y + 11 * (width * 0.07)))
            kare11.close()
            
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
            kare11.stroke()
            
            
            
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x + 10 * (width * 0.07), y: y ))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            kare11.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
            
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
            kare11.stroke()
        }
    }
        static func square12(isVertical:Bool,x:CGFloat,y:CGFloat) {
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
                
                let kare11 = UIBezierPath()
                kare11.move(to: CGPoint(x:x   , y: y + 10 * (width * 0.07)))
                kare11.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 10 * (width * 0.07)))
                kare11.addLine(to: CGPoint(x: x + width * 0.07, y: y + 11 * (width * 0.07)))
                kare11.addLine(to: CGPoint(x: x, y: y + 11 * (width * 0.07)))
                kare11.close()
                
                let kare12 = UIBezierPath()
                kare12.move(to: CGPoint(x:x   , y: y + 11 * (width * 0.07)))
                kare12.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 11 * (width * 0.07)))
                kare12.addLine(to: CGPoint(x: x + width * 0.07, y: y + 12 * (width * 0.07)))
                kare12.addLine(to: CGPoint(x: x, y: y + 12 * (width * 0.07)))
                kare12.close()
                
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
                kare11.stroke()
                kare12.stroke()
                
                
                
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
                
                let kare11 = UIBezierPath()
                kare11.move(to: CGPoint(x:x + 10 * (width * 0.07), y: y ))
                kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y))
                kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
                kare11.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
                
                let kare12 = UIBezierPath()
                kare12.move(to: CGPoint(x:x + 11 * (width * 0.07), y: y ))
                kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y))
                kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
                kare12.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
                
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
                kare11.stroke()
                kare12.stroke()
            }
        
    }
    
    static func square13(isVertical:Bool,x:CGFloat,y:CGFloat) {
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x   , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07, y: y + 11 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x, y: y + 11 * (width * 0.07)))
            kare11.close()
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x   , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07, y: y + 12 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x, y: y + 12 * (width * 0.07)))
            kare12.close()
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x   , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07, y: y + 13 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x, y: y + 13 * (width * 0.07)))
            kare13.close()
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
            
            
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x + 10 * (width * 0.07), y: y ))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            kare11.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x + 11 * (width * 0.07), y: y ))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            kare12.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x + 12 * (width * 0.07), y: y ))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y + width * 0.07))
            kare13.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
        }
    
}
    
    static func square14(isVertical:Bool,x:CGFloat,y:CGFloat) {
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x   , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07, y: y + 11 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x, y: y + 11 * (width * 0.07)))
            kare11.close()
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x   , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07, y: y + 12 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x, y: y + 12 * (width * 0.07)))
            kare12.close()
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x   , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07, y: y + 13 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x, y: y + 13 * (width * 0.07)))
            kare13.close()
            
            let kare14 = UIBezierPath()
            kare14.move(to: CGPoint(x:x   , y: y + 13 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 13 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x + width * 0.07, y: y + 14 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x, y: y + 14 * (width * 0.07)))
            kare14.close()
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
            kare14.stroke()
            
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x + 10 * (width * 0.07), y: y ))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            kare11.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x + 11 * (width * 0.07), y: y ))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            kare12.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x + 12 * (width * 0.07), y: y ))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y + width * 0.07))
            kare13.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            
            let kare14 = UIBezierPath()
            kare14.move(to: CGPoint(x:x + 13 * (width * 0.07), y: y ))
            kare14.addLine(to: CGPoint(x: x + 14 * (width * 0.07), y: y))
            kare14.addLine(to: CGPoint(x: x + 14 * (width * 0.07), y: y + width * 0.07))
            kare14.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y + width * 0.07))
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
            kare14.stroke()
        }
    
}
    static func square15(isVertical:Bool,x:CGFloat,y:CGFloat) {
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x   , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 10 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x + width * 0.07, y: y + 11 * (width * 0.07)))
            kare11.addLine(to: CGPoint(x: x, y: y + 11 * (width * 0.07)))
            kare11.close()
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x   , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 11 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x + width * 0.07, y: y + 12 * (width * 0.07)))
            kare12.addLine(to: CGPoint(x: x, y: y + 12 * (width * 0.07)))
            kare12.close()
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x   , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 12 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x + width * 0.07, y: y + 13 * (width * 0.07)))
            kare13.addLine(to: CGPoint(x: x, y: y + 13 * (width * 0.07)))
            kare13.close()
            
            let kare14 = UIBezierPath()
            kare14.move(to: CGPoint(x:x   , y: y + 13 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 13 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x + width * 0.07, y: y + 14 * (width * 0.07)))
            kare14.addLine(to: CGPoint(x: x, y: y + 14 * (width * 0.07)))
            kare14.close()
            
            let kare15 = UIBezierPath()
            kare15.move(to: CGPoint(x:x   , y: y + 14 * (width * 0.07)))
            kare15.addLine(to: CGPoint(x: x + width * 0.07 , y: y + 14 * (width * 0.07)))
            kare15.addLine(to: CGPoint(x: x + width * 0.07, y: y + 15 * (width * 0.07)))
            kare15.addLine(to: CGPoint(x: x, y: y + 15 * (width * 0.07)))
            kare15.close()
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
            kare14.stroke()
            kare15.stroke()
            
            
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
            
            let kare11 = UIBezierPath()
            kare11.move(to: CGPoint(x:x + 10 * (width * 0.07), y: y ))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y))
            kare11.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            kare11.addLine(to: CGPoint(x: x + 10 * (width * 0.07), y: y + width * 0.07))
            
            let kare12 = UIBezierPath()
            kare12.move(to: CGPoint(x:x + 11 * (width * 0.07), y: y ))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y))
            kare12.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            kare12.addLine(to: CGPoint(x: x + 11 * (width * 0.07), y: y + width * 0.07))
            
            let kare13 = UIBezierPath()
            kare13.move(to: CGPoint(x:x + 12 * (width * 0.07), y: y ))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y))
            kare13.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y + width * 0.07))
            kare13.addLine(to: CGPoint(x: x + 12 * (width * 0.07), y: y + width * 0.07))
            
            let kare14 = UIBezierPath()
            kare14.move(to: CGPoint(x:x + 13 * (width * 0.07), y: y ))
            kare14.addLine(to: CGPoint(x: x + 14 * (width * 0.07), y: y))
            kare14.addLine(to: CGPoint(x: x + 14 * (width * 0.07), y: y + width * 0.07))
            kare14.addLine(to: CGPoint(x: x + 13 * (width * 0.07), y: y + width * 0.07))
            
            let kare15 = UIBezierPath()
            kare15.move(to: CGPoint(x:x + 14 * (width * 0.07), y: y ))
            kare15.addLine(to: CGPoint(x: x + 15 * (width * 0.07), y: y))
            kare15.addLine(to: CGPoint(x: x + 15 * (width * 0.07), y: y + width * 0.07))
            kare15.addLine(to: CGPoint(x: x + 14 * (width * 0.07), y: y + width * 0.07))
            
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
            kare11.stroke()
            kare12.stroke()
            kare13.stroke()
            kare14.stroke()
            kare15.stroke()

        }
    
}
    
    static func Line(is4count : Int,lineColor: UIColor) {
        let width = SingletonView.shared.width
        let cizgi = UIBezierPath()
        
        if is4count < 13 {
            cizgi.move(to: CGPoint(x: width * 0, y: width * 0.47))
            cizgi.addLine(to: CGPoint(x: width * 1.95 , y: width * 0.47))
       
        }else {
            cizgi.move(to: CGPoint(x: width * 0, y: width * 0.56))
            cizgi.addLine(to: CGPoint(x: width * 1.95 , y: width * 0.56))
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
            
        }else {
            BezierCrossWordView.Line(is4count: bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray.count, lineColor: .black)
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[0][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[0], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[0][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[1][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[1], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[1][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[2][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[2], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[2][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[3][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[3], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[3][1])
            }
            
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[4][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[4], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[4][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[5][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[5], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[5][1])
            }
            
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[6][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[6], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[6][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[7][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[7], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[7][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[8][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[8], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[8][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[9][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[9], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[9][1])
            }
            
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[10][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[10], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[10][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 3 {
                BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 4 {
                BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 5 {
                BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 6 {
                BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 7 {
                BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 8 {
                BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 9 {
                BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 10 {
                BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 11 {
                BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 12 {
                BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 13 {
                BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 14 {
                BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[11][1].count == 15 {
                BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[11], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[11][1])
            }
            
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray.count == 13 {
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }
            }
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray.count == 14 {
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }
            }
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray.count == 15 {
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }
             
                
            }
            if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray.count == 16 {
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[12][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[12], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[12][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[13][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[13], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[13][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[14][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[14], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[14][1])
                }
                
                if bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 3 {
                    BezierCrossWordView.square3(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 4 {
                    BezierCrossWordView.square4(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 5 {
                    BezierCrossWordView.square5(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 6 {
                    BezierCrossWordView.square6(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 7 {
                    BezierCrossWordView.square7(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 8 {
                    BezierCrossWordView.square8(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 9 {
                    BezierCrossWordView.square9(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 10 {
                    BezierCrossWordView.square10(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 11 {
                    BezierCrossWordView.square11(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 12 {
                    BezierCrossWordView.square12(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 13 {
                    BezierCrossWordView.square13(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 14 {
                    BezierCrossWordView.square14(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }else if  bulmacalar[BezierCrossWordView.whichCrossword].TurkishWordsArray[15][1].count == 15 {
                    BezierCrossWordView.square15(isVertical: bulmacalar[BezierCrossWordView.whichCrossword].isVerticalArrays[15], x: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][0], y: bulmacalar[BezierCrossWordView.whichCrossword].locationXY[15][1])
                }
            }
            
        }
        
        
        /*
        else if BezierCrossWordView.whichCrossword == 0 { // 0. index == BULMACA1
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
            BezierCrossWordView.Line(is4: true, lineColor: .black)
           
                            //1
                            //2
                            //3
                            //4
                            //5
                            //6
                            //7
                            //8
                            //9
                            //10
                            //11
                            //12
                            //13
                            //14
                            //15
                            //16
        }
            */
            
            
    
     
        
        
        
    }
    
    


}


