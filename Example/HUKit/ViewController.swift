//
//  ViewController.swift
//  HUKit
//
//  Created by 871792412@qq.com on 08/13/2020.
//  Copyright (c) 2020 871792412@qq.com. All rights reserved.
//

import UIKit
import HUKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.hu_randomColor()
        testCurrentVC()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            let al = UIAlertController.init(title: "123", message: "222", preferredStyle: .alert)
            al.addAction(UIAlertAction.init(title: "ok", style: .default, handler: {[weak self] (ac) in
                self?.present(VCB.init(), animated: true
                    , completion: nil)
            }))
            self.present(al, animated: true, completion: nil)
        }
    }
    
    func testCurrentVC() {
        if #available(iOS 10.0, *) {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (tim) in
                print(VCTool.getCurrentVC())
            }.fire()
        } else {
            // Fallback on earlier versions
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

