//
//  TKTRunInMainThread.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

/// 在主进程中执行
/// - Parameters:
///   - callBack: 需要执行的操作
/// - Returns: None
public func RunInMainThread(_ callBack: @escaping () -> Void) {
    if Thread.isMainThread {
        callBack()
    } else {
        DispatchQueue.main.async {
            callBack()
        }
    }
}
