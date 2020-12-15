//
//  UIView+Frame.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/30.
//

public extension UIView {
    
    /// 原点（左上角/origin）
    var origin: CGPoint {
        set {
            frame = CGRect(x: newValue.x, y: newValue.y, width: width, height: height)
        }
        get {
            return frame.origin
        }
    }
    
    /// 原点（左上角/origin）
    var center: CGPoint {
        set {
            frame = CGRect(x: newValue.x - width / 2, y: newValue.y - height / 2, width: width, height: height)
        }
        get {
            return CGPoint(x: x + width / 2, y: y + height / 2)
        }
    }
    
    /// 原点的x坐标（minX）
    var x: CGFloat {
        set {
            frame = CGRect(x: newValue, y: y, width: width, height: height)
        }
        get {
            return frame.origin.x
        }
    }
    
    /// 原点的y坐标（minY）
    var y: CGFloat {
        set {
            frame = CGRect(x: x, y: newValue, width: width, height: height)
        }
        get {
            return frame.origin.y
        }
    }
    
    /// 最大x坐标（最右）
    var maxX: CGFloat {
        set {
            x = newValue - width
        }
        get {
            return x + width
        }
    }
    
    /// 最大y坐标（最下）
    var maxY: CGFloat {
        set {
            y = newValue - height
        }
        get {
            return y + height
        }
    }
    
    /// 大小
    var size: CGSize {
        set {
            frame = CGRect(x: x, y: y, width: newValue.width, height: newValue.height)
        }
        get {
            return frame.size
        }
    }
    
    /// 宽度
    var width: CGFloat {
        set {
            frame = CGRect(x: x, y: y, width: newValue, height: height)
        }
        get {
           return frame.width
        }
    }
    
    /// 高度
    var height: CGFloat {
        set {
            frame = CGRect(x: x, y: y, width: width, height: newValue)
        }
        get {
            return frame.height
        }
    }
    
}
