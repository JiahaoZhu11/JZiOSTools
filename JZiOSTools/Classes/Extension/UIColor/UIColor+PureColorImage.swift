//
//  UIColor+PureColorImage.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

public extension UIColor {
    
    /// 返回纯色图片
    /// - Parameters:
    ///   - size: 目标图片大小
    /// - Returns: 目标纯色图片
    func makePureColorImage(withSize size: CGSize) -> UIImage? {

        var image: UIImage? = nil
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(frame.size, false, UIScreen.main.scale)

        guard let context = UIGraphicsGetCurrentContext() else {
            return image
        }

        context.setFillColor(self.cgColor)
        context.fill(frame)
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image

    }

}
