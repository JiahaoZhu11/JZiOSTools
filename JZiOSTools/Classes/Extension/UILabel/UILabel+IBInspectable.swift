//
//  UILabel+IBInspectable.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/15.
//

public extension UILabel {
    
    /// 适配字体
    @IBInspectable var fontAdaptive: Bool {
        set {
            if newValue {
                font = font.withSize(font.pointSize * Screen.scale)
            }
        }
        get {
            // 无用
            return true
        }
    }
    
}
