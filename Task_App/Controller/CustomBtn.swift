//
//  CustomBtn.swift
//  CustomButtonApp
//
//  Created by Rim global on 19/06/18.
//  Copyright © 2018 Rim global. All rights reserved.
//

import UIKit

class CustomView: UIView {

    var beizerPath : UIBezierPath!
    var btnCount : Int!
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        drawLines()
       
    }
    
    convenience init(frame: CGRect,count: Int) {
        self.init(frame: frame)
        btnCount = count
        print("count is \(count)")
        drawLines()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func drawLines()
    {
        let height : CGFloat = 100.0
        let diff : CGFloat = 30.0
        
        var point1 = CGPoint(x: 0, y: 30)
        var point2 = CGPoint(x: self.bounds.width, y: 0)
        var point3 = CGPoint(x: self.bounds.width, y: height)
        var point4 = CGPoint(x: 0, y: height+diff)
        
        for i in 1...btnCount
        {
            let beizerPath = UIBezierPath()
            beizerPath.move(to: point1)
            beizerPath.addLine(to: point2)
            beizerPath.addLine(to: point3)
            beizerPath.addLine(to: point4)
            beizerPath.close()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = beizerPath.cgPath
            shapeLayer.fillColor = UIColor.blue.cgColor
            
            if i != 0
            {
                shapeLayer.shadowColor = UIColor.black.cgColor
                shapeLayer.shadowOpacity = 0.6
                shapeLayer.shadowOffset = CGSize.zero
                shapeLayer.shadowRadius = 5
            }
            
            
            self.layer.addSublayer(shapeLayer)
            
            point1 = CGPoint(x: 0, y: height*CGFloat(i)+diff)
            point2 = CGPoint(x: self.bounds.width, y: height*CGFloat(i))
            point3 = CGPoint(x: self.bounds.width, y: height*CGFloat(i+1))
            point4 = CGPoint(x: 0, y: height*CGFloat(i+1)+diff)
        }
        
        
    }

}
