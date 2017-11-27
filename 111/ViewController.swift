//
//  ViewController.swift
//  111
//
//  Created by mac on 27.11.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bView: UIView!
    var changeColorAction: ((UIColor) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorAction = { color in
            self.bView.backgroundColor = color
        }
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        guard   let testfunc = changeColorAction else { return }
        guard let color = sender.backgroundColor else { return }
        testfunc(color)
    }

}

