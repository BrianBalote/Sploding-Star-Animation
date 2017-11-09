//
//  DrawingUtil.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class DrawingUtil {
    
    static func drawCirclePath(radius: CGFloat) -> UIBezierPath {
        
        let circlePath = UIBezierPath(arcCenter: Constants.center, radius: radius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        return circlePath
    }
    
    static func drawStarPath(radius: CGFloat, starExtrusion: CGFloat) -> UIBezierPath {
        
        let path = UIBezierPath()
        
        let pointsOnStar = 5
        
        var angle = CGFloat(0.0)
        let angleIncrement = CGFloat(Double.pi * 2.0 / Double(pointsOnStar))
        
        var firstPoint = true
        
        for _ in 1...pointsOnStar {
            
            let point = pointFrom(angle: angle, radius: radius, offset: Constants.center)
            let nextPoint = pointFrom(angle: angle + angleIncrement, radius: radius, offset: Constants.center)
            let midPoint = pointFrom(angle: angle + angleIncrement / 2.0, radius: starExtrusion, offset: Constants.center)
            
            if firstPoint {
                firstPoint = false
                path.move(to: point)
            }
            
            path.addLine(to: midPoint)
            path.addLine(to: nextPoint)
            
            angle += angleIncrement
        }
        
        path.close()
        
        return path
    }
    
    static func pointFrom(angle: CGFloat, radius: CGFloat, offset: CGPoint) -> CGPoint {
        return CGPoint(x: radius * cos(angle) + offset.x, y: radius * sin(angle) + offset.y)
    }
}
