//
//  ViewController.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myShapeLayers = [CAShapeLayer]()
    let center = CGPoint(x: UIScreen.main.bounds.size.width / 2.0, y: UIScreen.main.bounds.size.height / 2.0)
    let starColor = UIColor(red: 230.0/255, green: 38.0/255, blue: 77.0/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareLayers()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.animateLayers(_:)))
        self.view.addGestureRecognizer(gesture)
    }
    
    func prepareLayers() {
        
        let starLayer0 = createStarShapeLayer(color: UIColor(red: 169.0/255, green: 184.0/255, blue: 193.0/255, alpha: 1.0).cgColor, size: CGFloat(26.0))
        self.view.layer.addSublayer(starLayer0)
        
        myShapeLayers.append(starLayer0)
        
        let layer1 = createCircleShapeLayer(color: UIColor.red.cgColor, size: CGFloat(5))
        myShapeLayers.append(layer1)
        
        let layer2 = createCircleShapeLayer(color: UIColor(red: 224.0/255, green: 69.0/255, blue: 134.0/255, alpha: 1.0).cgColor, size: CGFloat(45.0))
        myShapeLayers.append(layer2)
        
        let layer3 = createCircleShapeLayer(color: UIColor(red: 215.0/255, green: 105.0/255, blue: 188.0/255, alpha: 1.0).cgColor, size: CGFloat(55.0))
        myShapeLayers.append(layer3)
        
        let layer4 = createCircleShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0))
        myShapeLayers.append(layer4)
        
        let donut1 = createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(8.0))
        myShapeLayers.append(donut1)
        
        let donut2 = createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(3.0))
        let starLayer1 = createStarShapeLayer(color: UIColor(red: 230.0/255, green: 38.0/255, blue: 77.0/255, alpha: 1.0).cgColor, size: CGFloat(8.0))
        let particles1 = addParticles(radius: CGFloat(45.0), size: CGFloat(5.0), alpha: CGFloat(1.0))
        donut2.addSublayer(starLayer1)
        donut2.addSublayer(particles1)
        myShapeLayers.append(donut2)
        
        let donut3 = createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 0.50).cgColor, size: CGFloat(57.0), size2: CGFloat(1.0))
        let starLayer2 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(14.0))
        let particles2 = addParticles(radius: CGFloat(46.0), size: CGFloat(4.5), alpha: CGFloat(1.0))
        donut3.addSublayer(starLayer2)
        donut3.addSublayer(particles2)
        myShapeLayers.append(donut3)
        
        let starLayer3 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(22.0))
        let particles3 = addParticles(radius: CGFloat(47.0), size: CGFloat(4.0), alpha: CGFloat(0.9))
        starLayer3.addSublayer(particles3)
        myShapeLayers.append(starLayer3)
        
        let starLayer4 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(28.0))
        let particles4 = addParticles(radius: CGFloat(48.0), size: CGFloat(3.5), alpha: CGFloat(0.8))
        starLayer4.addSublayer(particles4)
        myShapeLayers.append(starLayer4)
        
        let starLayer5 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(32.0))
        let particles5 = addParticles(radius: CGFloat(49.0), size: CGFloat(3.25), alpha: CGFloat(0.7))
        starLayer5.addSublayer(particles5)
        myShapeLayers.append(starLayer5)
        
        let starLayer6 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(34.0))
        let particles6 = addParticles(radius: CGFloat(50.0), size: CGFloat(3.0), alpha: CGFloat(0.6))
        starLayer6.addSublayer(particles6)
        myShapeLayers.append(starLayer6)
        
        let starLayer7 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(34.0))
        let particles7 = addParticles(radius: CGFloat(51.0), size: CGFloat(2.75), alpha: CGFloat(0.5))
        starLayer7.addSublayer(particles7)
        myShapeLayers.append(starLayer7)
        
        let starLayer8 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(32.0))
        let particles8 = addParticles(radius: CGFloat(52.0), size: CGFloat(2.5), alpha: CGFloat(0.5))
        starLayer8.addSublayer(particles8)
        myShapeLayers.append(starLayer8)
        
        let starLayer9 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(30.0))
        let particles9 = addParticles(radius: CGFloat(53.0), size: CGFloat(2.25), alpha: CGFloat(0.3))
        starLayer9.addSublayer(particles9)
        myShapeLayers.append(starLayer9)
        
        let starLayer10 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(28.0))
        let particles10 = addParticles(radius: CGFloat(54.0), size: CGFloat(2.0), alpha: CGFloat(0.2))
        starLayer10.addSublayer(particles10)
        myShapeLayers.append(starLayer10)
        
        let starLayer11 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(27.0))
        let particles11 = addParticles(radius: CGFloat(55.0), size: CGFloat(2.0), alpha: CGFloat(0.1))
        starLayer11.addSublayer(particles11)
        myShapeLayers.append(starLayer11)
        
        let starLayer12 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(26.0))
        let particles12 = addParticles(radius: CGFloat(56.0), size: CGFloat(1.75), alpha: CGFloat(0.09))
        starLayer12.addSublayer(particles12)
        myShapeLayers.append(starLayer12)
        
        let starLayer13 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(26.0))
        let particles13 = addParticles(radius: CGFloat(57.0), size: CGFloat(1.5), alpha: CGFloat(0.08))
        starLayer13.addSublayer(particles13)
        myShapeLayers.append(starLayer13)
        
        let starLayer14 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(26.0))
        let particles14 = addParticles(radius: CGFloat(58.0), size: CGFloat(1.25), alpha: CGFloat(0.07))
        starLayer14.addSublayer(particles14)
        myShapeLayers.append(starLayer14)
        
        let starLayer15 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(26.0))
        let particles15 = addParticles(radius: CGFloat(59.0), size: CGFloat(1.0), alpha: CGFloat(0.06))
        starLayer15.addSublayer(particles15)
        myShapeLayers.append(starLayer15)
        
        let starLayer16 = createStarShapeLayer(color: starColor.cgColor, size: CGFloat(26.0))
        myShapeLayers.append(starLayer16)
        
        myShapeLayers.append(starLayer0)
    }
    
    @objc func animateLayers(_ sender: UITapGestureRecognizer) {
        
        var delay: Double = 0.0
        
        for i in 0 ... myShapeLayers.count - 1 {
            
            delay = Double(i)/60
            
            if(i > 0) {
                updateLayerAfterDelay(delay: delay, layerToShow: myShapeLayers[i], layerToHide: myShapeLayers[i-1])
            } else {
                addLayerAfterDelay(delay: delay, layer: myShapeLayers[i])
            }
        }
    }
    
    func updateLayerAfterDelay(delay: Double, layerToShow: CAShapeLayer, layerToHide: CAShapeLayer) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when) {
            layerToHide.removeFromSuperlayer()
            self.view.layer.addSublayer(layerToShow)
            self.view.isUserInteractionEnabled = true;
        }
    }
    
    func addLayerAfterDelay(delay: Double, layer: CAShapeLayer) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.view.layer.addSublayer(layer)
        }
    }
    
    func hideLayerAfterDelay(delay: Double, layer: CAShapeLayer) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when) {
            layer.isHidden = true
        }
    }
    
    func createCircleShapeLayer(color: CGColor, size: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = drawCirclePath(radius: size).cgPath
        layer.fillColor = color
        return layer
    }
    
    func createDonutShapeLayer(color: CGColor, size: CGFloat, size2: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = drawCirclePath(radius: size).cgPath
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = color;
        layer.lineWidth = size2;
        return layer
    }
    
    func addParticles(radius: CGFloat, size: CGFloat, alpha: CGFloat) -> CAShapeLayer {
        
        let particleLayer = CAShapeLayer();
        // -x -y
        let layer1 = createParticleLayer(x: center.x - radius, y: center.y - radius, radius: size, red: 135.0, green: 232.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer1)
        
        let layer2 = createParticleLayer(x: center.x - radius + 4.0, y: center.y - radius - (7.0*3.5), radius: size, red: 151.0, green: 218.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer2)
        
        // +x, +y
        let layer3 = createParticleLayer(x: center.x + radius, y: center.y + radius, radius: size, red: 135.0, green: 232.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer3)
        
        let layer4 = createParticleLayer(x: center.x + radius + 5.0, y: center.y + radius - (5.0*3.5), radius: size, red: 151.0, green: 218.0, blue: 197.0, alpha: alpha);
        particleLayer.addSublayer(layer4)
        
        // x, -y
        let layer5 = createParticleLayer(x: center.x, y: center.y - radius - 10, radius: size, red: 177.0, green: 182.0, blue: 247.0, alpha: alpha);
        particleLayer.addSublayer(layer5)
        
        let layer6 = createParticleLayer(x: center.x + 5.0, y: center.y - radius - (7.0*3.5), radius: size, red: 158.0, green: 199.0, blue: 248.0, alpha: alpha);
        particleLayer.addSublayer(layer6)
        
        // x, +y
        let layer7 = createParticleLayer(x: center.x, y: center.y + radius + 10, radius: size, red: 177.0, green: 182.0, blue: 247.0, alpha: alpha);
        particleLayer.addSublayer(layer7)
        
        let layer8 = createParticleLayer(x: center.x + 5.0, y: center.y + radius + (7.0*3.5), radius: size, red: 158.0, green: 199.0, blue: 248.0, alpha: alpha);
        particleLayer.addSublayer(layer8)
        
        // +x, y
        let layer9 = createParticleLayer(x: center.x + radius + 10.0, y: center.y, radius: size, red: 213.0, green: 149.0, blue: 209.0, alpha: alpha);
        particleLayer.addSublayer(layer9)
        
        let layer10 = createParticleLayer(x: center.x + radius + 15.0, y: center.y - (5.0*3.5), radius: size, red: 206.0, green: 140.0, blue: 242.0, alpha: alpha);
        particleLayer.addSublayer(layer10)
        
        // -x, y
        let layer11 = createParticleLayer(x: center.x - radius - 10.0, y: center.y, radius: size, red: 247.0, green: 142.0, blue: 166.0, alpha: alpha);
        particleLayer.addSublayer(layer11)
        
        let layer12 = createParticleLayer(x: center.x - radius - 15.0, y: center.y - (7.0*3.5), radius: size, red: 213.0, green: 143.0, blue: 180.0, alpha: alpha);
        particleLayer.addSublayer(layer12)
        
        // -x, +y
        let layer13 = createParticleLayer(x: center.x - radius, y: center.y + radius, radius: size, red: 235.0, green: 171.0, blue: 110.0, alpha: alpha);
        particleLayer.addSublayer(layer13)
        
        let layer14 = createParticleLayer(x: center.x - radius - 5.0, y: center.y + radius + (5.0*3.5), radius: size, red: 246.0, green: 187.0, blue: 67.0, alpha: alpha);
        particleLayer.addSublayer(layer14)
        
        // +x, -y
        let layer15 = createParticleLayer(x: center.x + radius, y: center.y - radius, radius: size, red: 235.0, green: 171.0, blue: 110.0, alpha: alpha);
        particleLayer.addSublayer(layer15)
        
        let layer16 = createParticleLayer(x: center.x + radius + 5.0, y: center.y - radius - (5.0*3.5), radius: size, red: 246.0, green: 187.0, blue: 67.0, alpha: alpha);
        particleLayer.addSublayer(layer16)
        
        return particleLayer
    }
    
    func createParticleLayer(x: CGFloat, y:CGFloat, radius: CGFloat, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CAShapeLayer {
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: radius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        let layer = CAShapeLayer()
        layer.path = circlePath.cgPath
        layer.fillColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha).cgColor
        return layer
    }
    
    func drawCirclePath(radius: CGFloat) -> UIBezierPath {
        
        let circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        return circlePath
    }
    
    func createStarShapeLayer(color: CGColor, size: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        let myRect = CGRect(x: UIScreen.main.bounds.size.width / 2.0, y: UIScreen.main.bounds.size.height / 2.0, width: size, height: size)
        layer.path = drawStarPath(rect: myRect, starExtrusion: size).cgPath
        layer.fillColor = color
        return layer
    }
    
    func drawStarPath(rect: CGRect, starExtrusion: CGFloat) -> UIBezierPath {
        
        let path = UIBezierPath()
        
        let pointsOnStar = 5
        
        var angle = CGFloat(0.0)
        let angleIncrement = CGFloat(Double.pi * 2.0 / Double(pointsOnStar))
        let radius = rect.width / 2.0
        
        var firstPoint = true
        
        for _ in 1...pointsOnStar {
            
            let point = pointFrom(angle: angle, radius: radius, offset: center)
            let nextPoint = pointFrom(angle: angle + angleIncrement, radius: radius, offset: center)
            let midPoint = pointFrom(angle: angle + angleIncrement / 2.0, radius: starExtrusion, offset: center)
            
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
    
    func pointFrom(angle: CGFloat, radius: CGFloat, offset: CGPoint) -> CGPoint {
        return CGPoint(x: radius * cos(angle) + offset.x, y: radius * sin(angle) + offset.y)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
