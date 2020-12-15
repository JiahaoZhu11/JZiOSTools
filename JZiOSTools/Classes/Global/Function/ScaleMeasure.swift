//
//  ScaleMeasure.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

/// 适配长度（根据短边）
/// - Parameters:
///   - length: 设计稿长度
/// - Returns: 实际长度
public func ScaledLength(_ length: CGFloat) -> CGFloat {
    return length * Screen.scale
}

/// 适配长度（根据长边）
/// - Parameters:
///   - length: 设计稿长度
/// - Returns: 实际长度
public func ScaleLengthToLongEdge(_ length: CGFloat) -> CGFloat {
    return length / 667.0 * Screen.height
}

/// 适配大小
/// - Parameters:
///   - width: 设计稿宽度
///   - height: 设计稿高度
/// - Returns: 实际大小
public func ScaledSize(width: CGFloat, height: CGFloat) -> CGSize {
    return CGSize(width: ScaledLength(width), height: ScaledLength(height))
}

/// 适配大小
/// - Parameters:
///   - size: 设计稿大小
/// - Returns: 实际大小
public func ScaledSize(_ size: CGSize) -> CGSize {
    return CGSize(width: ScaledLength(size.width), height: ScaledLength(size.height))
}

/// 字体
public enum FontStyle: CaseIterable {
    
    case system
    case systemThin
    case systemMedium
    case systemSemibold
    case systemBold
    case song
    case din
    
    var name: String {
        switch self {
        case .song:
            return "FandolSong-Bold"
        case .system:
            return ""
        case .systemThin:
            return ""
        case .systemMedium:
            return ""
        case .systemSemibold:
            return ""
        case .systemBold:
            return ""
        case .din:
            return "DIN-Bold"
        }
    }
    
    var description: String {
        switch self {
        case .system, .systemThin, .systemMedium, .systemSemibold, .systemBold:
            return "系统字体"
        case .song:
            return "思源宋体"
        case .din:
            return "数字字体"
        }
    }
    
}

/// 适配字体大小
/// - Parameters:
///   - fontSize: 原字体大小
/// - Returns: 实际字体大小
public func FontSize(_ fontSize: CGFloat) -> CGFloat {
    return max(ScaledLength(fontSize), fontSize * 0.9)
}

/// 适配字体
/// - Parameters:
///   - font: 字体类型
///   - fontSize: 字体大小，默认值 = 系统字体大小
/// - Returns: 字体
public func Font(_ font: FontStyle, ofSize fontSize: CGFloat = UIFont.systemFontSize) -> UIFont {
    switch font {
    case .systemThin:
        return UIFont.systemFont(ofSize: fontSize, weight: .thin)
    case .systemMedium:
        return UIFont.systemFont(ofSize: fontSize, weight: .medium)
    case .systemSemibold:
        return UIFont.systemFont(ofSize: fontSize, weight: .semibold)
    case .systemBold:
        return UIFont.systemFont(ofSize: fontSize, weight: .bold)
    default:
        return UIFont(name: font.name, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}
