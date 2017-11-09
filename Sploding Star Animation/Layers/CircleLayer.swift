//
//  CircleLayer.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class CircleLayer: CAShapeLayer {
    
    let animationDuration: CFTimeInterval = 0.1
    let center = CGPoint(x: UIScreen.main.bounds.size.width / 2.0, y: UIScreen.main.bounds.size.height / 2.0)
    
    override init() {
        super.init()
        fillColor = UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor
        path = ovalPathSmall.cgPath
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var ovalPathSmall: UIBezierPath {
        return UIBezierPath(ovalIn: CGRect(x: center.x, y: center.y, width: 0, height: 0))
    }
    
    var ovalPathLarge: UIBezierPath {
        let size = CGFloat(120.0)
        return UIBezierPath(ovalIn: CGRect(x: center.x - CGFloat(size/2.0), y: center.y - CGFloat(size/2.0), width: size, height: size))
    }
    
    func expand() {
        let expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = ovalPathSmall.cgPath
        expandAnimation.toValue = ovalPathLarge.cgPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.isRemovedOnCompletion = true
        add(expandAnimation, forKey: nil)
    }
}
