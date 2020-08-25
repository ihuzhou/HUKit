//
//  ColorExtension.swift
//  HUKit
//
//  Created by hzhou on 2020/8/13.
//

import Foundation

extension UIColor {
    /// 根据颜色生成指定大小的纯色图片
    /// - Parameter size: CGSize
    /// - Returns: 返回可选值UIImage
    open func hu_getImage(in size:CGSize) -> UIImage? {
        let rect = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    /// 生成随意颜色
    /// - Returns: UIColor
    open class func hu_randomColor() -> UIColor {
       return UIColor.init(
            red:CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1)
    }


    /// 根据hex16进制色值设置
    /// - Parameter hexString: hexString
    /// - Returns: 返回可选UIColor
    open class func hu_hexColor(in hexString:String) -> UIColor? {
        let hex = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        guard hex.hasPrefix("#") && (hex.count == 7 || hex.count == 9) else {
            return nil
        }
        let newHex = hex.count == 7 ? "ff\(String.init(hex[hex.index(hex.startIndex, offsetBy: 1)...]))" : String.init(hex[hex.index(hex.startIndex, offsetBy: 1)...])
        var argb:UInt64 = 0
        Scanner.init(string: newHex).scanHexInt64(&argb)
        return UIColor.init(red:   CGFloat((argb & 0x00FF0000) >> 16 )  / 255.0,
                            green: CGFloat((argb & 0x0000FF00) >> 8 )   / 255.0,
                            blue:  CGFloat((argb & 0x000000FF))         / 255.0,
                            alpha: CGFloat((argb & 0xFF000000) >> 24 )  / 255.0)
    }
}
