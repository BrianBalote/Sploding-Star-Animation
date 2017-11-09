//
//  StarLayer.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class StarLayer: CAShapeLayer {
    
    let animationDuration: CFTimeInterval = 0.3
    
    override init() {
        super.init()
        fillColor = Constants.starColor.cgColor
        path = starPathSmall.cgPath
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var starPathSmall: UIBezierPath {
        return DrawingUtil.drawStarPath(radius: 0.0, starExtrusion: 0.0)
    }
    
    var starPathLarge: UIBezierPath {
        return DrawingUtil.drawStarPath(radius: 34.0/2.0, starExtrusion: 34.0)
    }
    
    func expand() {
        let expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = starPathSmall.cgPath
        expandAnimation.toValue = starPathLarge.cgPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.isRemovedOnCompletion = true
        add(expandAnimation, forKey: nil)
    }
}
