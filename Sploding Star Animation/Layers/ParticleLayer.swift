//
//  ParticlesLayer.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 10/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class ParticleLayer: CAShapeLayer {
    
    let animationDuration: CFTimeInterval = 0.3
    
    var x: CGFloat
    var y: CGFloat
    
    var ex: CGFloat
    var ey: CGFloat
    
    var size: CGFloat
    
    override init() {
        
        self.x = -10000.0
        self.y = -10000.0
        self.ex = -10000.0
        self.ey = -10000.0
        self.size = 5.0
        
        super.init()
        fillColor = UIColor(red: 135.0/255, green: 232.0/255, blue: 197.0/255, alpha: 1.0).cgColor
        path = particlePathStart.cgPath
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updatePath(x: CGFloat, y: CGFloat, ex: CGFloat, ey: CGFloat) {
        self.x = x
        self.y = y
        self.ex = ex
        self.ey = ey
    }
    
    func updateFillColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        fillColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0).cgColor
    }
    
    func updateSize(size: CGFloat) {
        self.size = size
    }

    var particlePathStart: UIBezierPath {
        return UIBezierPath(ovalIn: CGRect(x: self.x, y: self.y, width: self.size, height: self.size))
    }
    
    var particlePathEnd: UIBezierPath {
        return UIBezierPath(ovalIn: CGRect(x: self.ex, y: self.ey, width: 0, height: 0))
    }
    
    func move() {
        let expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = particlePathStart.cgPath
        expandAnimation.toValue = particlePathEnd.cgPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.isRemovedOnCompletion = true
        add(expandAnimation, forKey: nil)
    }
}
