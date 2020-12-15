//
//  Timer+ScheduledTimer.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

public extension Timer {
    
    /// 制定计时器（一个方法适配各系统）
    /// - Parameters:
    ///   - interval: 计时器时长
    ///   - repeats: 是否重复
    ///   - block: 计时器完成时执行的操作
    /// - Returns: 计时器
    static func scheduledTimer(interval: TimeInterval, repeats: Bool, block: @escaping ((_ timer: Timer) -> ())) -> Timer {
        if #available(iOS 10.0, *) {
            return Timer.scheduledTimer(withTimeInterval: interval,
                                        repeats: repeats,
                                        block: block)
        } else {
            return Timer.scheduledTimer(timeInterval: interval,
                                        target: self,
                                        selector: #selector(action(timer:)),
                                        userInfo: block,
                                        repeats: repeats)
        }
    }
    
    @objc private class func action(timer: Timer) {
        guard let block = timer.userInfo as? ((Timer) -> ()) else {
            return
        }
        block(timer);
    }
    
}
