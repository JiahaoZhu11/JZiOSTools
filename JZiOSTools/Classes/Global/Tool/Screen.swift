//
//  Screen.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/16.
//

/// 屏幕适配设计图（宽：375，高：667）
public struct Screen {
    
    /// 是否竖屏
    public static var isVertical: Bool {
        get {
            return Screen.width < Screen.height
        }
    }
    
    /// 屏幕大小
    public static var size: CGSize {
        get {
            return UIScreen.main.bounds.size
        }
    }
    
    /// 安全区
    public static var safeAreaInsets: UIEdgeInsets {
        get {
            if #available(iOS 11.0, *) {
                var safeArea = UIApplication.shared.windows[0].safeAreaInsets
                safeArea.top -= 20
                return safeArea
            } else {
                return UIEdgeInsets.zero
            }
        }
    }
    
    /// 屏幕宽度（横屏时为长边）
    public static var width: CGFloat {
        get {
            return UIScreen.main.bounds.width
        }
    }
    
    /// 屏幕高度（横屏时为短边）
    public static var height: CGFloat {
        get {
            return UIScreen.main.bounds.height
        }
    }
    
    /// 屏幕短边
    public static var shortEdge: CGFloat {
        get {
            return min(width, height)
        }
    }
    
    /// 屏幕长边
    public static var longEdge: CGFloat {
        get {
            return max(width, height)
        }
    }
    
    /// 分辨率/倍率（根据短边）
    public static var scale: CGFloat {
        get {
            return shortEdge / 375.0
        }
    }
    
    public static var statusBarHeight: CGFloat {
        get {
            UIApplication.shared.statusBarFrame.height
        }
    }
    
}
