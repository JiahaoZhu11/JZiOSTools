//
//  NSAttributedString+WithHeadIndentWithLineSpacing.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/1.
//

public extension NSAttributedString {
    
    /// 返回带首行缩进&行间距的富文本
    /// - Parameters:
    ///   - indent: 首行缩进
    ///   - lineSpacing: 行间距
    /// - Returns: 结果富文本
    @objc func getAttributedStringWithStyle(withHeaderIndent indent: CGFloat, withLineSpacing lineSpacing: CGFloat) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(attributedString: self)
        attributedString.addStyle(withHeaderIndent: indent, withLineSpacing: lineSpacing)
        return attributedString
    }
    
}
