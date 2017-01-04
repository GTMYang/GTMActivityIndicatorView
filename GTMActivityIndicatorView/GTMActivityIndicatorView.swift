//
//  GTMActivityIndicatorView.swift
//  GTMActivityIndicatorView
//
//  Created by luoyang on 2017/1/4.
//  Copyright © 2017年 syncsoft. All rights reserved.
//

import UIKit

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
public func showIndicator(
    _ size: CGSize? = nil,
    message: String? = nil,
    messageFont: UIFont? = nil,
    animation: NVActivityIndicatorAnimation? = nil,
    color: UIColor? = nil,
    padding: CGFloat? = nil,
    displayTimeThreshold: Int? = nil,
    minimumDisplayTime: Int? = nil) {
    let activityData = ActivityData(size: size,
                                    message: message,
                                    messageFont: messageFont,
                                    animation: animation,
                                    color: color,
                                    padding: padding,
                                    displayTimeThreshold: displayTimeThreshold,
                                    minimumDisplayTime: minimumDisplayTime)
    
    NVActivityIndicatorPresenter.sharedInstance.startAnimating(activityData)
}

/**
 Remove UI blocker.
 */
public func hideIndicator() {
    NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
}
