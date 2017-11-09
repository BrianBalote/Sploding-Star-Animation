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
    let circleLayer = CircleLayer()
    let starLayer = StarLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLayers()
    }
    
    @IBAction func useCoreAnimation(_ sender: Any) {
        animateStar()
    }
    
    @IBAction func userLayerDelay(_ sender: Any) {

        let count = myShapeLayers.count
        var delay: Double = 0.0
        for i in 0 ... count - 1 {
            
            delay = Double(i)/60
            
            if(i > 0) {
                updateLayerAfterDelay(delay: delay, layerToShow: myShapeLayers[i], layerToHide: myShapeLayers[i-1])
            } else {
                addLayerAfterDelay(delay: delay, layer: myShapeLayers[i])
            }
        }
        
        print(self.view.layer.sublayers?.count)
        print(myShapeLayers.count)
        myShapeLayers[count - 1].removeFromSuperlayer()
    }
    
    func animateCircle() {
        self.view.layer.addSublayer(circleLayer)
        circleLayer.expand()
    }
    
    func animateStar() {
        self.view.layer.addSublayer(starLayer)
        starLayer.expand()
    }
    
    func prepareLayers() {

        let layer1 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor.red.cgColor, size: CGFloat(5))
        myShapeLayers.append(layer1)
        
        let layer2 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 224.0/255, green: 69.0/255, blue: 134.0/255, alpha: 1.0).cgColor, size: CGFloat(45.0))
        myShapeLayers.append(layer2)
        
        let layer3 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 215.0/255, green: 105.0/255, blue: 188.0/255, alpha: 1.0).cgColor, size: CGFloat(55.0))
        myShapeLayers.append(layer3)
        
        let layer4 = ShaperLayersUtil.createCircleShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0))
        myShapeLayers.append(layer4)
        
        let donut1 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(8.0))
        myShapeLayers.append(donut1)
        
        let donut2 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 1.0).cgColor, size: CGFloat(57.0), size2: CGFloat(3.0))
        let starLayer1 = ShaperLayersUtil.createStarShapeLayer(color: UIColor(red: 230.0/255, green: 38.0/255, blue: 77.0/255, alpha: 1.0).cgColor, size: CGFloat(8.0))
        let particles1 = ParticlesUtil.addParticles(radius: CGFloat(45.0), size: CGFloat(5.0), alpha: CGFloat(1.0))
        donut2.addSublayer(starLayer1)
        donut2.addSublayer(particles1)
        myShapeLayers.append(donut2)
        
        let donut3 = ShaperLayersUtil.createDonutShapeLayer(color: UIColor(red: 206.0/255, green: 140.0/255, blue: 242.0/255, alpha: 0.50).cgColor, size: CGFloat(57.0), size2: CGFloat(1.0))
        let starLayer2 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(14.0))
        let particles2 = ParticlesUtil.addParticles(radius: CGFloat(46.0), size: CGFloat(4.5), alpha: CGFloat(1.0))
        donut3.addSublayer(starLayer2)
        donut3.addSublayer(particles2)
        myShapeLayers.append(donut3)
        
        let starLayer3 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(22.0))
        let particles3 = ParticlesUtil.addParticles(radius: CGFloat(47.0), size: CGFloat(4.0), alpha: CGFloat(0.9))
        starLayer3.addSublayer(particles3)
        myShapeLayers.append(starLayer3)
        
        let starLayer4 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(28.0))
        let particles4 = ParticlesUtil.addParticles(radius: CGFloat(48.0), size: CGFloat(3.5), alpha: CGFloat(0.8))
        starLayer4.addSublayer(particles4)
        myShapeLayers.append(starLayer4)
        
        let starLayer5 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(32.0))
        let particles5 = ParticlesUtil.addParticles(radius: CGFloat(49.0), size: CGFloat(3.25), alpha: CGFloat(0.7))
        starLayer5.addSublayer(particles5)
        myShapeLayers.append(starLayer5)
        
        let starLayer6 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(34.0))
        let particles6 = ParticlesUtil.addParticles(radius: CGFloat(50.0), size: CGFloat(3.0), alpha: CGFloat(0.6))
        starLayer6.addSublayer(particles6)
        myShapeLayers.append(starLayer6)
        
        let starLayer7 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(34.0))
        let particles7 = ParticlesUtil.addParticles(radius: CGFloat(51.0), size: CGFloat(2.75), alpha: CGFloat(0.5))
        starLayer7.addSublayer(particles7)
        myShapeLayers.append(starLayer7)
        
        let starLayer8 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(32.0))
        let particles8 = ParticlesUtil.addParticles(radius: CGFloat(52.0), size: CGFloat(2.5), alpha: CGFloat(0.5))
        starLayer8.addSublayer(particles8)
        myShapeLayers.append(starLayer8)
        
        let starLayer9 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(30.0))
        let particles9 = ParticlesUtil.addParticles(radius: CGFloat(53.0), size: CGFloat(2.25), alpha: CGFloat(0.3))
        starLayer9.addSublayer(particles9)
        myShapeLayers.append(starLayer9)
        
        let starLayer10 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(28.0))
        let particles10 = ParticlesUtil.addParticles(radius: CGFloat(54.0), size: CGFloat(2.0), alpha: CGFloat(0.2))
        starLayer10.addSublayer(particles10)
        myShapeLayers.append(starLayer10)
        
        let starLayer11 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(27.0))
        let particles11 = ParticlesUtil.addParticles(radius: CGFloat(55.0), size: CGFloat(2.0), alpha: CGFloat(0.1))
        starLayer11.addSublayer(particles11)
        myShapeLayers.append(starLayer11)
        
        let starLayer12 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles12 = ParticlesUtil.addParticles(radius: CGFloat(56.0), size: CGFloat(1.75), alpha: CGFloat(0.09))
        starLayer12.addSublayer(particles12)
        myShapeLayers.append(starLayer12)
        
        let starLayer13 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles13 = ParticlesUtil.addParticles(radius: CGFloat(57.0), size: CGFloat(1.5), alpha: CGFloat(0.08))
        starLayer13.addSublayer(particles13)
        myShapeLayers.append(starLayer13)
        
        let starLayer14 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles14 = ParticlesUtil.addParticles(radius: CGFloat(58.0), size: CGFloat(1.25), alpha: CGFloat(0.07))
        starLayer14.addSublayer(particles14)
        myShapeLayers.append(starLayer14)
        
        let starLayer15 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        let particles15 = ParticlesUtil.addParticles(radius: CGFloat(59.0), size: CGFloat(1.0), alpha: CGFloat(0.06))
        starLayer15.addSublayer(particles15)
        myShapeLayers.append(starLayer15)
        
        let starLayer16 = ShaperLayersUtil.createStarShapeLayer(color: Constants.starColor.cgColor, size: CGFloat(26.0))
        myShapeLayers.append(starLayer16)
        
        let starLayer0 = ShaperLayersUtil.createStarShapeLayer(color: UIColor(red: 169.0/255, green: 184.0/255, blue: 193.0/255, alpha: 1.0).cgColor, size: CGFloat(26.0))
        myShapeLayers.append(starLayer0)
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
