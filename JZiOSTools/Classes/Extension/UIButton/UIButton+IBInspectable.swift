//
//  UIButton+IBInspectable.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/15.
//

public extension UIButton {
    
    /// 适配字体
    @IBInspectable var fontAdaptive: Bool {
        set {
            if newValue, let font = titleLabel?.font {
                titleLabel?.font = font.withSize(font.pointSize * Screen.scale)
            }
        }
        get {
            // 无用
            return true
        }
    }
    
}
