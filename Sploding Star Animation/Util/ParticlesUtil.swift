//
//  ParticlesUtil.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class ParticlesUtil {
    
    static func addParticles(radius: CGFloat, size: CGFloat, alpha: CGFloat) -> CAShapeLayer {
        
        let particleLayer = CAShapeLayer();
        // -x -y
        let layer1 = createParticleLayer(x: Constants.center.x - radius, y: Constants.center.y - radius, radius: size, red: 135.0, green: 232.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer1)
        
        let layer2 = createParticleLayer(x: Constants.center.x - radius + 4.0, y: Constants.center.y - radius - (7.0*3.5), radius: size, red: 151.0, green: 218.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer2)
        
        // +x, +y
        let layer3 = createParticleLayer(x: Constants.center.x + radius, y: Constants.center.y + radius, radius: size, red: 135.0, green: 232.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer3)
        
        let layer4 = createParticleLayer(x: Constants.center.x + radius + 5.0, y: Constants.center.y + radius - (5.0*3.5), radius: size, red: 151.0, green: 218.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer4)
        
        // x, -y
        let layer5 = createParticleLayer(x: Constants.center.x, y: Constants.center.y - radius - 10, radius: size, red: 177.0, green: 182.0, blue: 247.0, alpha: alpha);
        particleLayer.addSublayer(layer5)
        
        let layer6 = createParticleLayer(x: Constants.center.x + 5.0, y: Constants.center.y - radius - (7.0*3.5), radius: size, red: 158.0, green: 199.0, blue: 248.0, alpha: alpha);
        particleLayer.addSublayer(layer6)
        
        // x, +y
        let layer7 = createParticleLayer(x: Constants.center.x, y: Constants.center.y + radius + 10, radius: size, red: 177.0, green: 182.0, blue: 247.0, alpha: alpha);
        particleLayer.addSublayer(layer7)
        
        let layer8 = createParticleLayer(x: Constants.center.x + 5.0, y: Constants.center.y + radius + (7.0*3.5), radius: size, red: 158.0, green: 199.0, blue: 248.0, alpha: alpha);
        particleLayer.addSublayer(layer8)
        
        // +x, y
        let layer9 = createParticleLayer(x: Constants.center.x + radius + 10.0, y: Constants.center.y, radius: size, red: 213.0, green: 149.0, blue: 209.0, alpha: alpha);
        particleLayer.addSublayer(layer9)
        
        let layer10 = createParticleLayer(x: Constants.center.x + radius + 15.0, y: Constants.center.y - (5.0*3.5), radius: size, red: 206.0, green: 140.0, blue: 242.0, alpha: alpha);
        particleLayer.addSublayer(layer10)
        
        // -x, y
        let layer11 = createParticleLayer(x: Constants.center.x - radius - 10.0, y: Constants.center.y, radius: size, red: 247.0, green: 142.0, blue: 166.0, alpha: alpha);
        particleLayer.addSublayer(layer11)
        
        let layer12 = createParticleLayer(x: Constants.center.x - radius - 15.0, y: Constants.center.y - (7.0*3.5), radius: size, red: 213.0, green: 143.0, blue: 180.0, alpha: alpha);
        particleLayer.addSublayer(layer12)
        
        // -x, +y
        let layer13 = createParticleLayer(x: Constants.center.x - radius, y: Constants.center.y + radius, radius: size, red: 235.0, green: 171.0, blue: 110.0, alpha: alpha);
        particleLayer.addSublayer(layer13)
        
        let layer14 = createParticleLayer(x: Constants.center.x - radius - 5.0, y: Constants.center.y + radius + (5.0*3.5), radius: size, red: 246.0, green: 187.0, blue: 67.0, alpha: alpha);
        particleLayer.addSublayer(layer14)
        
        // +x, -y
        let layer15 = createParticleLayer(x: Constants.center.x + radius, y: Constants.center.y - radius, radius: size, red: 235.0, green: 171.0, blue: 110.0, alpha: alpha);
        particleLayer.addSublayer(layer15)
        
        let layer16 = createParticleLayer(x: Constants.center.x + radius + 5.0, y: Constants.center.y - radius - (5.0*3.5), radius: size, red: 246.0, green: 187.0, blue: 67.0, alpha: alpha);
        particleLayer.addSublayer(layer16)
        
        return particleLayer
    }
    
    static func createParticleLayer(x: CGFloat, y:CGFloat, radius: CGFloat, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CAShapeLayer {
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        let layer = CAShapeLayer()
        layer.path = circlePath.cgPath
        layer.fillColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha).cgColor
        return layer
    }
}
