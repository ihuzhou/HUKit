//
//  VCExtension.swift
//  FBSnapshotTestCase
//
//  Created by 胡洲 on 2020/9/7.
//

import Foundation

///获取当前VC的类以及方法
public class VCTool {
    ///获取当前屏幕上最前的VC，包含UIAlertController等
    class public func getCurrentVC() -> UIViewController? {
        
        guard let rootVC = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        let currentVC = VCTool.getCurrentVC(from: rootVC)
        return currentVC
    }

    public class func getCurrentVC(from rVC:UIViewController) -> UIViewController? {
        var rootVC:UIViewController = rVC
        var currentVC:UIViewController? = nil
        while rootVC.presentedViewController != nil {
            rootVC = rootVC.presentedViewController!
        }
        if let tabVC = rootVC as? UITabBarController,let selectVC = tabVC.selectedViewController {
            currentVC = getCurrentVC(from: selectVC)
        } else if let nav = rootVC as? UINavigationController, let visableVC = nav.visibleViewController {
            currentVC = getCurrentVC(from: visableVC)
        } else {
            currentVC = rootVC
        }
        return currentVC
    }
}




public extension UIViewController {
    
}
