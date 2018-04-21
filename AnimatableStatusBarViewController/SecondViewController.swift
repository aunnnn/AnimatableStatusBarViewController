//
//  SecondViewController.swift
//  AnimatableStatusBarViewController
//
//  Created by Wirawit Rueopas on 21/4/18.
//  Copyright © 2018 Wirawit Rueopas. All rights reserved.
//

import UIKit

class SecondViewController: AnimatableStatusBarViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var animatedStatusBarPrefersStatusBarHidden: Bool {
        return false
    }

    // IMPORTANT: `.fade` here is used when this view controller appears (viewWillAppear).
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .fade
    }

    @IBAction func buttonPushed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

