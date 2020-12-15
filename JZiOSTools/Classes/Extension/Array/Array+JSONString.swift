//
//  Array+JSONString.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/30.
//

public extension Array {
    
    /// 返回JSON字符串
    /// - Parameters: None
    /// - Returns: JSON字符串
    func arrayToJSONString() -> String? {
        if let data = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions.init(rawValue: 0)) {
            if let jsonStr = String(data: data, encoding: String.Encoding.utf8) {
                return jsonStr
            }
        }
        return nil
    }
    
}
