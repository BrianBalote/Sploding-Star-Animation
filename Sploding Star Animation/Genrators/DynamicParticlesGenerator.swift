//
//  DynamicParticlesGenerator.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 11/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class DynamicParticlesGenerator {
    
    static func generateDynamicParticles(count: Int, radius: CGFloat, size: CGFloat) -> Array<ParticleLayer> {
        
        let endOffset = CGFloat(15.0);
        
        var particlesArr = [ParticleLayer]()
        
        for i in 0 ... count - 1 {
            
            let angle = (360.0 / Double(count)) * Double(i) + Double(arc4random_uniform(2));
            
            let x = (radius * CGFloat(cos(Double(angle)))) + Constants.center.x + randRange(upper: 5);
            let y = (radius * CGFloat(sin(Double(angle)))) + Constants.center.y + randRange(upper: 5);
            
            var ex = CGFloat()
            var ey = CGFloat()
            
            switch angle {
                
            case 0:
                // x, -y
                ex = x
                ey = y + endOffset
            case 1 ... 89:
                // +x, -y
                ex = x + endOffset
                ey = y + endOffset
            case 90:
                // +x, y
                ex = x + endOffset
                ey = y
            case 91 ... 179:
                // +x, +y
                ex = x + endOffset
                ey = y - endOffset
            case 180:
                // x, +y
                ex = x
                ey = y - endOffset
            case 181 ... 269:
                // -x, +y
                ex = x - endOffset
                ey = y - endOffset
            case 270:
                // -x, y
                ex = x - endOffset
                ey = y
            case 271 ... 359:
                // -x, -y
                ex = x - endOffset
                ey = y + endOffset
            case 360:
                // x, -y
                ex = x
                ey = y + endOffset
            default:
                print("I have an unexpected case.")
            }
            
            let particle = ParticleLayer()
            particle.updatePath(x: x, y: y, ex: ex, ey: ey)
            particle.updateFillColor(red: randRange(upper: 255), green: randRange(upper: 255), blue: randRange(upper: 255), alpha: 1)
            
            particlesArr.append(particle)
        }
        
        return particlesArr
    }
    
    static func randRange (upper: UInt32) -> CGFloat {
        //let multiplier = arc4random_uniform(1) == 0 ? -1 : 1
        return CGFloat(arc4random_uniform(upper))
    }
    
}
