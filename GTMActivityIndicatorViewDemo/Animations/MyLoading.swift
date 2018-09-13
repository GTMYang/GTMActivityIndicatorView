//
//  MyLoading.swift
//  GTMActivityIndicatorViewDemo
//
//  Created by 骆扬 on 2018/9/13.
//  Copyright © 2018年 syncsoft. All rights reserved.
//

import UIKit
import GTMActivityIndicatorView

class MyLoading: NVActivityIndicatorAnimation {
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor) {
        let doration: CFTimeInterval = 4
        let lineWidth: CGFloat = 8
        
        // fat ring
        let fatRing = NVActivityIndicatorShape.ring(lineWidth: lineWidth).layerWith(size: size, color: color)
        let scaleFat = CAKeyframeAnimation(keyPath: "transform.scale")
        scaleFat.keyTimes = [0, 0.5, 0.625, 0.75, 0.875, 1]
        scaleFat.values = [1, 1, 1.3, 1, 1.3, 1]
        scaleFat.duration = doration
        scaleFat.repeatCount = HUGE
        fatRing.add(scaleFat, forKey: "scale")
        layer.addSublayer(fatRing)
        
        let toggle = CAKeyframeAnimation(keyPath: "opacity")
        toggle.keyTimes = [0, 0.5, 0.5, 1]
        toggle.values = [1, 1, 0, 0]
        toggle.duration = doration
        toggle.repeatCount = HUGE
        // part rings
        let split = CGFloat(Double.pi * 1/2)
        var start: CGFloat = 0
        var end: CGFloat = -split
        let indcator = NVActivityIndicatorShape.ringPart(startAngle: start, endAngle: end, lineWidth: lineWidth).layerWith(size: size, color: color)
        let rotateAnimation = CAKeyframeAnimation(keyPath:"transform.rotation.z")
        rotateAnimation.keyTimes = [0, 0.5, 1]
        rotateAnimation.values = [0, 2 * Double.pi, 2 * Double.pi]
        rotateAnimation.duration = doration
        rotateAnimation.repeatCount = HUGE
        indcator.add(toggle, forKey: "toggle")
        indcator.add(rotateAnimation, forKey: "rotation")
        
        
        let part1 = NVActivityIndicatorShape.ringPart(startAngle: start, endAngle: end, lineWidth: lineWidth).layerWith(size: size, color: UIColor.white)
        part1.add(toggle, forKey: "toggle")
        layer.addSublayer(part1)
        
        
        start += split
        end += split
        let part2 = NVActivityIndicatorShape.ringPart(startAngle: start, endAngle: end, lineWidth: lineWidth).layerWith(size: size, color: UIColor.white)
        let animation2 = CAKeyframeAnimation(keyPath: "opacity")
        animation2.keyTimes = [0, 0.125, 0.125, 1]
        animation2.values = [1, 1, 0, 0]
        animation2.duration = doration
        animation2.repeatCount = HUGE
        part2.add(animation2, forKey: "toggle")
        layer.addSublayer(part2)


        start += split
        end += split
        let part3 = NVActivityIndicatorShape.ringPart(startAngle: start, endAngle: end, lineWidth: lineWidth).layerWith(size: size, color: UIColor.white)
        let animation3 = CAKeyframeAnimation(keyPath: "opacity")
        animation3.keyTimes = [0, 0.25, 0.25, 1]
        animation3.values = [1, 1, 0, 0]
        animation3.duration = doration
        animation3.repeatCount = HUGE
        part3.add(animation3, forKey: "toggle")
        layer.addSublayer(part3)


        start += split
        end += split
        let part4 = NVActivityIndicatorShape.ringPart(startAngle: start, endAngle: end, lineWidth: lineWidth).layerWith(size: size, color: UIColor.white)
        let animation4 = CAKeyframeAnimation(keyPath: "opacity")
        animation4.keyTimes = [0, 0.375, 0.375, 1]
        animation4.values = [1, 1, 0, 0]
        animation4.duration = doration
        animation4.repeatCount = HUGE
        part4.add(animation4, forKey: "toggle")
        layer.addSublayer(part4)

        layer.addSublayer(indcator)
        
        // thin ring
        let thinRing = NVActivityIndicatorShape.ring(lineWidth: 2).layerWith(size: size, color: color)
        
        let scaleAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        scaleAnimation.keyTimes = [0, 0.5, 0.625, 0.75, 0.875, 1]
        scaleAnimation.values = [1, 1, 0.7, 1, 0.7, 1]
        scaleAnimation.duration = doration
        scaleAnimation.repeatCount = HUGE
        thinRing.add(scaleAnimation, forKey: "scale")
        
        layer.addSublayer(thinRing)
        
        
    }
    
    
}
