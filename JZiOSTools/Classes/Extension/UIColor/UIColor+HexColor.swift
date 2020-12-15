//
//  UIColor+HexColor.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

public extension UIColor {
    
    /// 以十六进制字符串颜色初始化UIColor
    /// - Parameters:
    ///   - hex: 十六进制颜色
    ///   - alpha: 透明度，默认值 = 1
    /// - Returns: None
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexCode:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (hexCode.hasPrefix("#")) {
            hexCode.remove(at: hexCode.startIndex)
        }
        if ((hexCode.count) != 6) {
            self.init()
        } else {
            var rgbValue:UInt32 = 0
            Scanner(string: hexCode).scanHexInt32(&rgbValue)
            self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                      alpha: alpha)
        }
    }
    
}
