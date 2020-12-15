//
//  NSMutableAttributedString+WithHeadIndentWithLineSpacing.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/1.
//

public extension NSMutableAttributedString {
    
    /// 添加首行缩进&行间距
    /// - Parameters:
    ///   - indent: 首行缩进
    ///   - lineSpacing: 行间距
    /// - Returns: 结果富文本
    func addStyle(withHeaderIndent indent: CGFloat, withLineSpacing lineSpacing: CGFloat) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.lineBreakMode = .byTruncatingMiddle
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.firstLineHeadIndent = indent
        addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
    }
    
}
