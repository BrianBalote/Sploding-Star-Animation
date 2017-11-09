//
//  ViewController.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myShapeLayers = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayers()
    }
    
    @IBAction func useCoreAnimation(_ sender: Any) {
        animateCircle()
        animateStar()
        animateParticles()
    }
    
    @IBAction func userLayerDelay(_ sender: Any) {

        let count = myShapeLayers.count
        var delay: Double = 0.0
        for i in 0 ... count - 1 {
            
            delay = Double(i)/60
            
            if(i > 0) {
                updateLayerAfterDelay(delay: delay, layerToShow: myShapeLayers[i] as! CAShapeLayer,
                                      layerToHide: myShapeLayers[i-1] as! CAShapeLayer)
            } else {
                addLayerAfterDelay(delay: delay, layer: myShapeLayers[i] as! CAShapeLayer)
            }
        }

    }
    
    func animateCircle() {
        let circleLayer = CircleLayer()
        self.view.layer.addSublayer(circleLayer)
        circleLayer.expand()
    }
    
    func animateStar() {
        let starLayer = StarLayer()
        self.view.layer.addSublayer(starLayer)
        starLayer.expand()
    }
    
    func animateParticles() {
        
        let start = CGFloat(35.0)
        let end = CGFloat(49.0)
        
        // +x, +y
        let particle1 = ParticleLayer()
        particle1.updatePath(x: Constants.center.x - start, y: Constants.center.y - start,
                             ex: Constants.center.x - end, ey: Constants.center.y - end)
        self.view.layer.addSublayer(particle1)
        particle1.move()
        
        let particle2 = ParticleLayer()
        particle2.updatePath(x: Constants.center.x - start - 4.0, y: Constants.center.y - start - (3.0*3.5),
                             ex: Constants.center.x - end - 4.0, ey: Constants.center.y - end - (3.0*3.5))
        self.view.layer.addSublayer(particle2)
        particle2.move()
        
        // -x, -y
        let particle3 = ParticleLayer()
        particle3.updatePath(x: Constants.center.x + start, y: Constants.center.y + start,
                             ex: Constants.center.x + end, ey: Constants.center.y + end)
        self.view.layer.addSublayer(particle3)
        particle3.move()
        
        let particle4 = ParticleLayer()
        particle4.updatePath(x: Constants.center.x + start + 4.0, y: Constants.center.y + start + (3.0*3.5),
                             ex: Constants.center.x + end + 4.0, ey: Constants.center.y + end + (3.0*3.5))
        self.view.layer.addSublayer(particle4)
        particle4.move()
        
        // +x, -y
        let particle5 = ParticleLayer()
        particle5.updatePath(x: Constants.center.x + start, y: Constants.center.y - start,
                             ex: Constants.center.x + end, ey: Constants.center.y - end)
        self.view.layer.addSublayer(particle5)
        particle5.move()
        
        let particle6 = ParticleLayer()
        particle6.updatePath(x: Constants.center.x + start + 4.0, y: Constants.center.y - start - (3.0*3.5),
                             ex: Constants.center.x + end + 4.0, ey: Constants.center.y - end - (3.0*3.5))
        self.view.layer.addSublayer(particle6)
        particle6.move()
        
        // -x, +y
        let particle7 = ParticleLayer()
        particle7.updatePath(x: Constants.center.x - start, y: Constants.center.y + start,
                             ex: Constants.center.x - end, ey: Constants.center.y + end)
        self.view.layer.addSublayer(particle7)
        particle7.move()
        
        let particle8 = ParticleLayer()
        particle8.updatePath(x: Constants.center.x - start - 4.0, y: Constants.center.y + start + (3.0*3.5),
                             ex: Constants.center.x - end - 4.0, ey: Constants.center.y + end + (3.0*3.5))
        self.view.layer.addSublayer(particle8)
        particle8.move()
        
        // x, +y
        let particle9 = ParticleLayer()
        particle9.updatePath(x: Constants.center.x, y: Constants.center.y + start,
                             ex: Constants.center.x, ey: Constants.center.y + end)
        self.view.layer.addSublayer(particle9)
        particle9.move()
        
        let particle10 = ParticleLayer()
        particle10.updatePath(x: Constants.center.x, y: Constants.center.y + start + (3.0*3.5),
                             ex: Constants.center.x, ey: Constants.center.y + end + (3.0*3.5))
        self.view.layer.addSublayer(particle10)
        particle10.move()
        
        // x, -y
        let particle11 = ParticleLayer()
        particle11.updatePath(x: Constants.center.x, y: Constants.center.y - start,
                             ex: Constants.center.x, ey: Constants.center.y - end)
        self.view.layer.addSublayer(particle11)
        particle11.move()
        
        let particle12 = ParticleLayer()
        particle12.updatePath(x: Constants.center.x, y: Constants.center.y - start - (3.0*3.5),
                              ex: Constants.center.x, ey: Constants.center.y - end - (3.0*3.5))
        self.view.layer.addSublayer(particle12)
        particle12.move()
        
        // -x, y
        let particle13 = ParticleLayer()
        particle13.updatePath(x: Constants.center.x - start, y: Constants.center.y,
                             ex: Constants.center.x - end, ey: Constants.center.y)
        self.view.layer.addSublayer(particle13)
        particle13.move()
        
        let particle14 = ParticleLayer()
        particle14.updatePath(x: Constants.center.x - start - 4.0, y: Constants.center.y,
                             ex: Constants.center.x - end - 4.0, ey: Constants.center.y)
        self.view.layer.addSublayer(particle14)
        particle14.move()
        
        // +x, y
        let particle15 = ParticleLayer()
        particle15.updatePath(x: Constants.center.x + start, y: Constants.center.y,
                              ex: Constants.center.x + end, ey: Constants.center.y)
        self.view.layer.addSublayer(particle15)
        particle15.move()
        
        let particle16 = ParticleLayer()
        particle16.updatePath(x: Constants.center.x + start + 4.0, y: Constants.center.y,
                              ex: Constants.center.x + end + 4.0, ey: Constants.center.y)
        self.view.layer.addSublayer(particle16)
        particle16.move()
    }
    
    func prepareLayers() {

        let layer1 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor.red.cgColor, size: CGFloat(5))
        myShapeLayers.add(layer1)
        
        let layer2 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 224.0/255, green: 69.0/255, blue: 134.0/255, alpha: 1.0).cgColor, size: CGFloat(45.0))
        myShapeLayers.add(layer2)
        
        let layer3 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 215.0/255, green: 105.0/255, blue: 188.0/255, alpha: 1.0).cgColor, size: CGFloat(55.0))
        myShapeLayers.add(layer3)
        
        let layer4 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0))
        myShapeLayers.add(layer4)
        
        let donut1 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(8.0))
        myShapeLayers.add(donut1)
        
        let donut2 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(3.0))
        let starLayer1 = ShaperLayersUtil.createStarShapeLayer(color: UIColor(red: 230.0/255, green: 38.0/255, blue: 77.0/255, alpha: 1.0).cgColor, size: CGFloat(8.0))
        let particles1 = ParticlesUtil.addParticles(radius: CGFloat(45.0), size: CGFloat(5.0), alpha: CGFloat(1.0))
        donut2.addSublayer(starLayer1)
        donut2.addSublayer(particles1)
        myShapeLayers.add(donut2)
        
        let donut3 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 0.50).cgColor, size: CGFloat(57.0), size2: CGFloat(1.0))
        let starLayer2 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(14.0))
        let particles2 = ParticlesUtil.addParticles(radius: CGFloat(46.0), size: CGFloat(4.5), alpha: CGFloat(1.0))
        donut3.addSublayer(starLayer2)
        donut3.addSublayer(particles2)
        myShapeLayers.add(donut3)
        
        let starLayer3 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(22.0))
        let particles3 = ParticlesUtil.addParticles(radius: CGFloat(47.0), size: CGFloat(4.0), alpha: CGFloat(0.9))
        starLayer3.addSublayer(particles3)
        myShapeLayers.add(starLayer3)
        
        let starLayer4 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(28.0))
        let particles4 = ParticlesUtil.addParticles(radius: CGFloat(48.0), size: CGFloat(3.5), alpha: CGFloat(0.8))
        starLayer4.addSublayer(particles4)
        myShapeLayers.add(starLayer4)
        
        let starLayer5 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(32.0))
        let particles5 = ParticlesUtil.addParticles(radius: CGFloat(49.0), size: CGFloat(3.25), alpha: CGFloat(0.7))
        starLayer5.addSublayer(particles5)
        myShapeLayers.add(starLayer5)
        
        let starLayer6 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(34.0))
        let particles6 = ParticlesUtil.addParticles(radius: CGFloat(50.0), size: CGFloat(3.0), alpha: CGFloat(0.6))
        starLayer6.addSublayer(particles6)
        myShapeLayers.add(starLayer6)
        
        let starLayer7 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(34.0))
        let particles7 = ParticlesUtil.addParticles(radius: CGFloat(51.0), size: CGFloat(2.75), alpha: CGFloat(0.5))
        starLayer7.addSublayer(particles7)
        myShapeLayers.add(starLayer7)
        
        let starLayer8 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(32.0))
        let particles8 = ParticlesUtil.addParticles(radius: CGFloat(52.0), size: CGFloat(2.5), alpha: CGFloat(0.5))
        starLayer8.addSublayer(particles8)
        myShapeLayers.add(starLayer8)
        
        let starLayer9 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(30.0))
        let particles9 = ParticlesUtil.addParticles(radius: CGFloat(53.0), size: CGFloat(2.25), alpha: CGFloat(0.3))
        starLayer9.addSublayer(particles9)
        myShapeLayers.add(starLayer9)
        
        let starLayer10 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(28.0))
        let particles10 = ParticlesUtil.addParticles(radius: CGFloat(54.0), size: CGFloat(2.0), alpha: CGFloat(0.2))
        starLayer10.addSublayer(particles10)
        myShapeLayers.add(starLayer10)
        
        let starLayer11 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(27.0))
        let particles11 = ParticlesUtil.addParticles(radius: CGFloat(55.0), size: CGFloat(2.0), alpha: CGFloat(0.1))
        starLayer11.addSublayer(particles11)
        myShapeLayers.add(starLayer11)
        
        let starLayer12 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles12 = ParticlesUtil.addParticles(radius: CGFloat(56.0), size: CGFloat(1.75), alpha: CGFloat(0.09))
        starLayer12.addSublayer(particles12)
        myShapeLayers.add(starLayer12)
        
        let starLayer13 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles13 = ParticlesUtil.addParticles(radius: CGFloat(57.0), size: CGFloat(1.5), alpha: CGFloat(0.08))
        starLayer13.addSublayer(particles13)
        myShapeLayers.add(starLayer13)
        
        let starLayer14 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles14 = ParticlesUtil.addParticles(radius: CGFloat(58.0), size: CGFloat(1.25), alpha: CGFloat(0.07))
        starLayer14.addSublayer(particles14)
        myShapeLayers.add(starLayer14)
        
        let starLayer15 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles15 = ParticlesUtil.addParticles(radius: CGFloat(59.0), size: CGFloat(1.0), alpha: CGFloat(0.06))
        starLayer15.addSublayer(particles15)
        myShapeLayers.add(starLayer15)
        
        let starLayer16 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        myShapeLayers.add(starLayer16)
        
        let starLayer0 = ShaperLayersUtil.createStarShapeLayer(color: UIColor.black.cgColor, size: CGFloat(26.0))
        myShapeLayers.add(starLayer0)
    }
    
    func updateLayerAfterDelay(delay: Double, layerToShow: CAShapeLayer, layerToHide: CAShapeLayer) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.view.layer.replaceSublayer(layerToHide, with: layerToShow)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
