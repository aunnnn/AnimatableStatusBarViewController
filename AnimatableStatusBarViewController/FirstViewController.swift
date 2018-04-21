//
//  FirstViewController.swift
//  AnimatableStatusBarViewController
//
//  Created by Wirawit Rueopas on 21/4/18.
//  Copyright © 2018 Wirawit Rueopas. All rights reserved.
//

import UIKit

class FirstViewController: AnimatableStatusBarViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // *** IMPORTANT
        // ----------------
        // You must inform the next view controller (SecondViewController)
        // via `animatedStatusBarPreviouslyHideStatusBar`
        // whether the previous view controller (FirstViewController)
        // shows or hide the status bar.
        let vc = segue.destination as! SecondViewController
        vc.animatedStatusBarPreviouslyHideStatusBar = true
    }

    // Hide status bar
    override var animatedStatusBarPrefersStatusBarHidden: Bool {
        return true
    }

    // IMPORTANT: This might be a little unintuitive, but `.slide` here is used when this view controller appears (viewWillAppear). So if you want to use slide animation for the status bar when showing the next view controller (`SecondViewController`), you need to set `.slide` in the `SecondViewController`, not `FirstViewController`.
    // In our case, .slide will take effect when we dismiss `SecondViewController`.
    //
    // In a nutshell, just remember that `preferredStatusBarUpdateAnimation` is tied to each view controller and it will be performed **only** in `viewWillAppear`.
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
}

