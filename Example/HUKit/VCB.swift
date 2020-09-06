//
//  VCB.swift
//  HUKit_Example
//
//  Created by 胡洲 on 2020/9/7.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class VCB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            let al = UIAlertController.init(title: "123", message: "222", preferredStyle: .alert)
            al.addAction(UIAlertAction.init(title: "ok", style: .default, handler: {[weak self] (ac) in
                self?.present(VCC.init(), animated: true
                    , completion: nil)
            }))
            self.present(al, animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
