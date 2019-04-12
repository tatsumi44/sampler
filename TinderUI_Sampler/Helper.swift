//
//  Helper.swift
//  TinderUI_Sampler
//
//  Created by k-tatsumi on 2019/04/11.
//  Copyright © 2019 k-tatsumi. All rights reserved.
//

import Foundation
import UIKit
extension ViewController{
    func alert(message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
