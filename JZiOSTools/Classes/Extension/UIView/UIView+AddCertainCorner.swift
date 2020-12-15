//
//  UIView+AddCertainCorner.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

/// UIView添加圆角
public extension UIView {
    
    /// 贝斯曲线画圆角 - OC
    /// - Parameters:
    ///   - corners: 添加的圆角位置
    ///   - radius: 圆角半径
    /// - Returns: None
    @objc func addCornerOC(toCorners corners: UIRectCorner , withRadius radius: CGFloat) {
        addCorner(toCorners: corners, withRadius: radius, inRect: nil)
    }
    
    /// 贝斯曲线画圆角 - OC
    /// - Parameters:
    ///   - corners: 添加的圆角位置
    ///   - radius: 圆角半径
    ///   - rect: 目标区域
    /// - Returns: None
    @objc func addCornerOC(toCorners corners: UIRectCorner , withRadius radius: CGFloat, inRect rect: CGRect) {
        addCorner(toCorners: corners, withRadius: radius, inRect: rect)
    }
    
    /// 贝斯曲线画圆角
    /// - Parameters:
    ///   - corners: 添加的圆角位置
    ///   - radius: 圆角半径
    ///   - rect: 目标区域，默认值 = nil
    /// - Returns: None
    func addCorner(toCorners corners: UIRectCorner , withRadius radius: CGFloat, inRect rect: CGRect? = nil) {
        let maskPath = UIBezierPath(roundedRect: rect ?? bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect ?? bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    
}
