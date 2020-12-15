//
//  UIImage+CropImage.swift
//  JZiOSTools
//
//  Created by JIahao Zhu on 2020/11/4.
//

public extension UIImage {
    
    /// 切割指定区域内图片
    /// - Parameters:
    ///   - rect: 所截图片在UIImage中的位置
    /// - Returns: 切割完成的图片
    func crop(inRect rect: CGRect) -> UIImage? {
        var rect = rect
        rect.origin.x *= self.scale
        rect.origin.y *= self.scale
        rect.size.width *= self.scale
        rect.size.height *= self.scale
        guard let image = self.cgImage?.cropping(to: rect) else { return nil }
        return UIImage(cgImage: image, scale: self.scale, orientation: self.imageOrientation)
    }
    
}
