//
//  UIViewController+NavigationBar.swift
//  JZiOSTools
//
//  Created by Jiahao Zhu on 2020/11/30.
//

public extension UIViewController {
    
    /// 当前View Controller
    static var current: UIViewController? {
        get {
            let window = UIApplication.shared.delegate?.window
            var vc = window??.rootViewController
            if vc?.presentedViewController != nil {
                while ((vc?.presentedViewController) != nil) {
                    vc = vc?.presentedViewController
                    if vc is UINavigationController {
                        vc = (vc as! UINavigationController).visibleViewController
                    } else if vc is UITabBarController {
                        vc = (vc as! UITabBarController).selectedViewController
                        if vc is UINavigationController {
                            vc = (vc as! UINavigationController).visibleViewController
                        }
                    }
                }
            } else {
                if vc is UINavigationController {
                    vc = (vc as! UINavigationController).visibleViewController
                } else if vc is UITabBarController {
                    vc = (vc as! UITabBarController).selectedViewController
                    if vc is UINavigationController {
                        vc = (vc as! UINavigationController).visibleViewController
                    }
                }
            }
            return vc
        }
    }
    
    /// 当前Navigation Controller
    static var currentNav: UINavigationController? {
        get {
            return current?.navigationController
        }
    }
    
    /// 隐藏Navigation Bar
    /// - Parameters:
    ///   - animated: 是否使用转场动画
    /// - Returns: None
    func hiddenNavigationBar(animated: Bool) {
        guard let nav = self.navigationController, !nav.isNavigationBarHidden else { return }
        nav.setNavigationBarHidden(true, animated: animated)
    }
    
    /// 显示Navigation Bar
    /// - Parameters:
    ///   - animated: 是否使用转场动画
    /// - Returns: None   
    func showNavigationBar(animated: Bool) {
        guard let nav = self.navigationController, nav.isNavigationBarHidden else { return }
        nav.setNavigationBarHidden(false, animated: animated)
    }

}
