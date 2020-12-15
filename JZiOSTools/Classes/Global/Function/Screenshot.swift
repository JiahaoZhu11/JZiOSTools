//
//  Screenshot.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

/// 截图
/// - Parameters:
///   - view: 要截图的视图
///   - insets: 边距，默认值 = nil
/// - Returns: 截取的图片
public func Screenshot(ofView view: UIView, withInsets insets: UIEdgeInsets? = nil) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, UIScreen.main.scale)
    guard let currentContext = UIGraphicsGetCurrentContext() else { return nil }
    view.layer.render(in: currentContext)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    guard let insets = insets else { return image }
    return image?.crop(inRect: CGRect(x: insets.left, y: insets.top, width: view.bounds.width - insets.left - insets.right, height: view.bounds.height - insets.top - insets.bottom))
}
