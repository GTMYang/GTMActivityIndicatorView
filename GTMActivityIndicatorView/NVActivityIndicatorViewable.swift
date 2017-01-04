//
//  NVActivityIndicatorViewable.swift
//  NVActivityIndicatorViewDemo
//
//  Created by luoyang on 2016/12/6.
//  Copyright © 2016 GTMYang. All rights reserved.
//

import UIKit


public extension UIViewController {
    
    /**
     Display UI blocker.
     
     Appropriate NVActivityIndicatorView.DEFAULT_* values are used for omitted params.
     
     - parameter size:                 size of activity indicator view.
     - parameter message:              message displayed under activity indicator view.
     - parameter messageFont:          font of message displayed under activity indicator view.
     - parameter type:                 animation type.
     - parameter color:                color of activity indicator view.
     - parameter padding:              padding of activity indicator view.
     - parameter displayTimeThreshold: display time threshold to actually display UI blocker.
     - parameter minimumDisplayTime:   minimum display time of UI blocker.
     */
    public final func showLoadding(
        _ size: CGSize? = nil,
        message: String? = nil,
        messageFont: UIFont? = nil,
        animation: NVActivityIndicatorAnimation? = nil,
        color: UIColor? = nil,
        padding: CGFloat? = nil,
        displayTimeThreshold: Int? = nil,
        minimumDisplayTime: Int? = nil) {
        showIndicator(size, message: message, messageFont: messageFont, animation: animation, color: color, padding: padding, displayTimeThreshold: displayTimeThreshold, minimumDisplayTime: minimumDisplayTime)
    }
    
    /**
     Remove UI blocker.
     */
    public final func hideLoadding() {
        hideIndicator()
    }
}
