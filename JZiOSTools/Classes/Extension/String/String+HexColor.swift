//
//  String+HexColor.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

public extension String {

    /// 十六进制字符串颜色转为UIColor
    /// - Parameters:
    ///   - alpha: 透明度，默认值 = 1
    /// - Returns: 目标颜色
    func uiColor(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(hex: self, alpha: alpha)
    }
    
}
