//
//  UIView+containingViewController.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/20.
//

public extension UIView {
    
    /// 返回持有当前View的View Controller
    /// - Parameters:None
    /// - Returns: 持有当前View的View Controller
    @objc func containingViewController() -> UIViewController? {
        guard var responder = next else { return nil }
        while !(responder is UIViewController) {
            guard let nextResponder = responder.next else { return nil }
            responder = nextResponder
        }
        return responder as? UIViewController
    }
    
}
