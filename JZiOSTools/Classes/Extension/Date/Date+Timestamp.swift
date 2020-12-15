//
//  Date+Timestamp.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/12/1.
//

public extension Date {
    
    /// 当前时间戳 - 10位 (second)
    var timestamp: Int {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return timeStamp
    }

    /// 当前时间戳 - 13位 (millisecond)
    var milliTimestamp: Int64 {
        get {
            let timeInterval: TimeInterval = self.timeIntervalSince1970
            let millisecond = Int64(round(timeInterval*1000))
            return millisecond
        }
    }
    
}
