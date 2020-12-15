//
//  String+Format.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/30.
//

import CommonCrypto

public extension String {
    
    /// 删除所有的空格
    /// - Parameters: None
    /// - Returns: 目标字符串
    func trimAll() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    /// 判断字符串是否包含其他字符串(必须全部一样)
    /// - Parameters:
    ///   - find: 需要查找的目标字符串
    /// - Returns: 是否找到字符串
    func contains(find: String) -> Bool {
        return self.range(of: find) != nil
    }
    
    /// 能否转为URL
    /// - Parameters:
    ///   - find: None
    /// - Returns: 能否转为URL
    func isUrlValid() -> Bool {
        if let _ = URL(string: self) {
            return true
        } else {
            return false
        }
    }
    
    /// 将原始的url编码为合法的url
    var urlEncoded: String {
        let encodeUrlString = self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        return encodeUrlString ?? ""
    }
    
    /// 将编码后的url转换回原始的url
    var urlDecoded: String {
        return self.removingPercentEncoding ?? ""
    }
    
    /// MD5编码
    var md5Encoded: String {
        get {
            let cStr = self.cString(using: .utf8)
            let digestLen = Int(CC_MD5_DIGEST_LENGTH)
            let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: digestLen)
            CC_MD5(cStr!, (CC_LONG)(strlen(cStr!)), buffer)
            
            let md5String = NSMutableString()
            for i in 0 ..< digestLen {
                md5String.appendFormat("%02X", buffer[i])
            }
            
            free(buffer)
            return md5String as String
        }
    }
    
    /// base64编码
    var base64Encoded: String {
        get {
            let data = self.data(using: String.Encoding.utf8)
            var base64String = data?.base64EncodedString(options: .lineLength76Characters)
            base64String = base64String?.replacingOccurrences(of: "\r", with: "")
            return base64String ?? ""
        }
    }
    
    /// base64解码
    var base64Decoded: String {
        get {
            let decodedData = Data(base64Encoded: self, options: Data.Base64DecodingOptions(rawValue: 0))
            return String(data: decodedData!, encoding: String.Encoding.utf8) ?? ""
        }
    }
    
}
