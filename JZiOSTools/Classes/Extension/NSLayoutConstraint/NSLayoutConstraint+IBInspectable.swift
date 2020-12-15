//
//  NSLayoutConstraint+IBInspectable.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/5.
//

public extension NSLayoutConstraint {
    
    /// 约束适配机型
    @IBInspectable var screenAdaptive: Bool {
        set {
            if newValue {
                constant = constant * Screen.scale
            }
        }
        get {
            // 无用
            return true
        }
    }
    
    /// 等于屏幕宽度
    @IBInspectable var screenWidth: Bool {
        set {
            if newValue {
                constant = Screen.width
            }
        }
        get {
            // 无用
            return true
        }
    }
    
    /// 等于屏幕高度
    @IBInspectable var screenHeight: Bool {
        set {
            if newValue {
                constant = Screen.height
            }
        }
        get {
            // 无用
            return true
        }
    }
    
    /// 等于短边
    @IBInspectable var screenShortEdge: Bool {
        set {
            if newValue {
                constant = Screen.shortEdge
            }
        }
        get {
            // 无用
            return true
        }
    }
    
    /// 等于长边
    @IBInspectable var screenLongEdge: Bool {
        set {
            if newValue {
                constant = Screen.longEdge
            }
        }
        get {
            // 无用
            return true
        }
    }
    
}
