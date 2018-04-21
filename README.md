# AnimatableStatusBarViewController
A UIViewController base class to enable status bar animation.

![preview](https://raw.githubusercontent.com/aunnnn/AnimatableStatusBarViewController/master/previewgif.gif)

## Overview

The animation is simply done in `viewWillAppear` by calling `self.setNeedsStatusBarAppearanceUpdate()` in `UIView.animate`. `AnimatableStatusBarViewController` keeps track of the status bar hidden state. 

So this should work with both present and push.

The downside of this approach is that you need to subclass from `AnimatableStatusBarViewController`.

## Installation
1. Copy [`AnimatableStatusBarViewController.swift`](https://github.com/aunnnn/AnimatableStatusBarViewController/blob/master/AnimatableStatusBarViewController/AnimatableStatusBarViewController.swift) to your project.
2. Subclass a view controller with `AnimatableStatusBarViewController` to suppport status bar animation.
3. Just checkout the code in this repo and you'll know how to setup.
