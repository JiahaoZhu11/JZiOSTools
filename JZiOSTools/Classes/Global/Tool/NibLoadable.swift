//
//  NibLoadable.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/30.
//

public enum JZNibError: Error {
    case unableToLoadNib
}

public protocol NibLoadable {
    
}

public extension NibLoadable where Self: UIView {
    
    /// 尝试从Nib中加载（连接View时调用）
    /// - Parameter nibName: nib文件名，默认值 = nil
    static func loadFromNib(_ nibName: String? = nil) throws -> Self {
        let loadName = nibName == nil ? "\(Self.self)" : nibName!
        if let view = Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as? Self {
            return view
        }
        throw JZNibError.unableToLoadNib
    }
    
    /// 尝试从Nib中加载（连接File's Owner时调用）
    /// - Parameter owber: File's Owner
    /// - Parameter nibName: nib文件名，默认值 = nil
    static func loadAsSubNib(withOwner owner: Any?, _ nibName: String? = nil) throws -> UIView {
        let loadName = nibName == nil ? "\(Self.self)" : nibName!
        if let view = Bundle.main.loadNibNamed(loadName, owner: owner, options: nil)?.first as? UIView {
            return view
        }
        throw JZNibError.unableToLoadNib
    }
    
}

public extension NibLoadable where Self: UIViewController {
    
    /// 尝试从Nib中加载
    /// - Parameter nibName: nib文件名，默认值 = nil
    static func loadFromNib(_ nibName: String? = nil) throws -> Self {
        let loadName = nibName == nil ? "\(Self.self)" : nibName!
        if let vc = Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as? Self {
            return vc
        }
        throw JZNibError.unableToLoadNib
    }
    
}
