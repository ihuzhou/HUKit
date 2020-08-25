//
//  ArrayExtension.swift
//  HUKit
//
//  Created by hzhou on 2020/8/25.
//

import UIKit

extension Array {
    /// 安全获取array的索引
    func hu_safe(_ index:Int) -> Element? {
        if index >= 0 && index < self.count {
            return self[index]
        }
        return nil
    }
}
