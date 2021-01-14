//
//  String+SubString.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2021/1/14.
//

public extension String {
    
    // 截取字符串：从index到结束处
    // - Parameter beginIndex: 开始索引
    // - Parameter endIndex: 结束索引
    // - Returns: 子字符串
    func subStringFrom(_ beginIndex: Int, to endIndex: Int? = nil) -> String {
        guard beginIndex < self.count else { return "" }
        let firstIndex = self.index(self.endIndex, offsetBy: beginIndex - self.count)
        if let endIndex = endIndex, endIndex < self.count {
            guard beginIndex <= endIndex else { return "" }
            let lastIndex = self.index(self.endIndex, offsetBy: endIndex + 1 - self.count)
            return String(self[firstIndex..<lastIndex])
        } else {
            return String(self[firstIndex..<self.endIndex])
        }
    }

    //从0索引处开始查找是否包含指定的字符串，返回Int类型的索引
    //返回第一次出现的指定子字符串在此字符串中的索引
    func findFirst(_ sub: String) -> Int {
        var pos = -1
        if let range = range(of: sub, options: .literal) {
            if !range.isEmpty {
                pos = self.distance(from: startIndex, to: range.lowerBound)
            }
        }
        return pos
    }

    //从0索引处开始查找是否包含指定的字符串，返回Int类型的索引
    //返回最后出现的指定子字符串在此字符串中的索引
    func findLast(_ sub: String) -> Int {
        var pos = -1
        if let range = range(of: sub, options: .backwards) {
            if !range.isEmpty {
                pos = self.distance(from: startIndex, to: range.lowerBound)
            }
        }
        return pos
    }

    //从指定索引处开始查找是否包含指定的字符串，返回Int类型的索引
    //返回第一次出现的指定子字符串在此字符串中的索引
    func findFirst(_ sub: String, _ begin: Int) -> Int {
        let str:String = self.subStringFrom(begin)
        let pos:Int = str.findFirst(sub)
        return pos == -1 ? -1 : (pos + begin)
    }

    //从指定索引处开始查找是否包含指定的字符串，返回Int类型的索引
    //返回最后出现的指定子字符串在此字符串中的索引
    func findLast(_ sub: String, _ begin: Int) -> Int {
        let str:String = self.subStringFrom(begin)
        let pos:Int = str.findLast(sub)
        return pos == -1 ? -1 : (pos + begin)
    }
    
    // 截取字符串：从在两个subString中间
    // - Parameter firstSub: 前subString
    // - Parameter secondSub: 后subString
    // - Returns: 子字符串
    func subStringEnclosedBy(_ firstSub: String, and secondSub: String) -> String {
        let firstSubIndex = self.findFirst(firstSub)
        guard firstSubIndex > -1 else { return "" }
        let beginIndex = firstSubIndex + firstSub.count
        let secondSubIndex = self.findFirst(secondSub, beginIndex)
        guard secondSubIndex > -1 else { return "" }
        let endIndex = secondSubIndex - 1
        return self.subStringFrom(beginIndex, to: endIndex)
    }
    
}
