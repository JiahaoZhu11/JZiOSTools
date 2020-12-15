//
//  Bundle.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/4.
//

/// 获取主工程bundle路径
/// - Parameters: None
/// - Returns: 主工程bundle
public func GetaMainBundle() -> Bundle? {
    guard let bundlePath = Bundle.main.path(forResource: "TKTResources", ofType: "bundle") else { return nil }
    return Bundle(path: bundlePath)
}

/// 获取资源文件bundle路径
/// - Parameters:
///   - aClass: 资源文件类
///   - namespace: 命名空间
/// - Returns: 资源文件bundle
public func GetModuleBundle(for aClass: AnyClass, namespace: String) -> Bundle? {
    let bundlePath = Bundle.init(for: aClass).resourcePath
    let resourcePath = "\(bundlePath ?? "")" + "/\(namespace).bundle"
    let bundle = Bundle.init(path: resourcePath)
    return bundle
}
