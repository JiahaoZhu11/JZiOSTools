//
//  UIView+IBInspectable.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/15.
//

public extension UIView {
    
    /// 圆角
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue * Screen.scale
        }
        get {
            return layer.cornerRadius
        }
    }
    
    /// 边框宽度
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue * Screen.scale
        }
        get {
            return layer.borderWidth
        }
    }
    
    /// 边框颜色
    @IBInspectable var borderColor: UIColor {
        set {
            layer.borderColor = newValue.cgColor
        }
        get {
            if let borderColor = layer.borderColor {
                return UIColor(cgColor: borderColor)
            } else {
                return .clear
            }
        }
    }
    
}

