//
//  NVActivityIndicatorDelegate.swift
//  NVActivityIndicatorViewDemo
//
//  Created by luoyang on 2016/12/6.
//  Copyright © 2016 GTMYang. All rights reserved.
//

import UIKit

public protocol NVActivityIndicatorAnimation {
    func setUpAnimation(in layer:CALayer, size: CGSize, color: UIColor)
}
