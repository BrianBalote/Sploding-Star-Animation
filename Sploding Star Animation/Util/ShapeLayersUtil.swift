//
//  ShapeLayersUtil.swift
//  Sploding Star Animation
//
//  Created by Brian Rey Balote on 09/11/2017.
//  Copyright © 2017 Brian Rey Balote. All rights reserved.
//

import UIKit

class ShaperLayersUtil {
    
    static func createStarShapeLayer(color: CGColor, size: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = DrawingUtil.drawStarPath(radius: CGFloat(size/2.0), starExtrusion: size).cgPath
        layer.fillColor = color
        return layer
    }
    
    static func createCircleShapeLayer(color: CGColor, size: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = DrawingUtil.drawCirclePath(radius: size).cgPath
        layer.fillColor = color
        return layer
    }
    
    static func createDonutShapeLayer(color: CGColor, size: CGFloat, size2: CGFloat) -> CAShapeLayer {
        
        let layer = CAShapeLayer()
        layer.path = DrawingUtil.drawCirclePath(radius: size).cgPath
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = color;
        layer.lineWidth = size2;
        return layer
    }
}
