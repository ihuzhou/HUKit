//
//  ColorExtensionTest.swift
//  HUKit_Example
//
//  Created by hzhou on 2020/8/25.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import HUKit

class ColorExtensionTest: XCTestCase {
    

    func testRandomColor() {
        let color = UIColor.hu_randomColor()
        XCTAssert(color != nil, "random color success")
    }

    func testGetImage() {
        let color = UIColor.hu_randomColor()
        let image = color.hu_getImage(in: CGSize.init(width: 100, height: 100))
        XCTAssert(image != nil, "image is created")
    }

    func testHexColor() {
        let hexStr1 = "#FF121212"
        let hexStr2 = "#121212"
        let color1 = UIColor.hu_hexColor(in: hexStr1)
        let color2 = UIColor.hu_hexColor(in: hexStr2)

    }
}
