//
//  UIFont+Extension.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/7.
//

public struct PingFangSC {
    
    /// 中黑体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func medium(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Medium", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    /// 中粗体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func semibold(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Semibold", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    //// 细体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func light(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Light", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    /// 极细体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func ultralight(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Ultralight", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    /// 常规体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func regular(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Regular", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    /// 纤细体
    /// - Parameters:
    ///   - size: 字体大小，默认值 = 系统字体大小
    /// - Returns: 目标字体
    public static func thin(withSize size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "PingFangSC-Thin", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
}
