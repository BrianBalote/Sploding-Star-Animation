//
//  DynamicParticlesGenerator.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 11/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class DynamicParticlesGenerator {
    
    static let endOffset = CGFloat(15.0)
    static let offset = UInt32(10)
    
    static func generateDynamicParticles(count: Int, radius: CGFloat, minSize: CGFloat, maxSize: CGFloat) -> Array<ParticleLayer> {
        
        let slice = 2.0 * Double.pi / Double(count)
        
        var particlesArr = [ParticleLayer]()
        
        for i in 0 ... count - 1 {
            
            let angleInDegrees = slice * Double(i)

            let x = radius * CGFloat(cos(angleInDegrees)) + Constants.center.x + randRangeWithNegative(upper: offset)
            let y = radius * CGFloat(sin(angleInDegrees)) + Constants.center.y + randRangeWithNegative(upper: offset)
            
            var ex = CGFloat()
            var ey = CGFloat()
            
            let angleInRadians = angleInDegrees / Double.pi * 180
            switch angleInRadians {
                
            case 0:
                // +x, y
                
                ex = x + endOffset
                ey = y
            case 1 ... 89:
                // +x, +y
                
                ex = x + endOffset
                ey = y + endOffset
            case 90:
                // x, +y
                
                ex = x
                ey = y + endOffset
            case 91 ... 179:
                // -x, +y
                
                ex = x - endOffset
                ey = y + endOffset
            case 180:
                // -x, y
                
                ex = x - endOffset
                ey = y
            case 181 ... 269:
                // -x, -y
                
                ex = x - endOffset
                ey = y - endOffset
            case 270:
                // x, -y

                ex = x
                ey = y - endOffset
            case 271 ... 359:
                // +x, -y
                
                ex = x + endOffset
                ey = y - endOffset
            case 360:
                // +x, y
                
                ex = x + endOffset
                ey = y
            default:
                print("I have an unexpected case.")
            }
            
            let particle = ParticleLayer()
            particle.updateSize(size: randPositiveNumber(min: minSize, upper: maxSize))
            particle.updatePath(x: x, y: y, ex: ex, ey: ey)
            particle.updateFillColor(red: randRange(upper: 255), green: randRange(upper: 255), blue: randRange(upper: 255), alpha: 1)
            particlesArr.append(particle)
        }
        
        return particlesArr
    }
    
    static func randPositiveNumber (min: CGFloat, upper: CGFloat) -> CGFloat {
        let num = CGFloat(arc4random_uniform(UInt32(upper)))
        return num >= min ? num : min
    }
    
    static func randRange (upper: UInt32) -> CGFloat {
        return CGFloat(arc4random_uniform(upper))
    }
    
    static func randRangeWithNegative (upper: UInt32) -> CGFloat {
        let multiplier = arc4random_uniform(1) == 0 ? -1 : 1
        return CGFloat(arc4random_uniform(upper)) * CGFloat(multiplier)
    }
    
}
