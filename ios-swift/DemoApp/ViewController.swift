//
//  ViewController.swift
//  DemoApp
//
//  Created by August Lilleaas on 06/12/2018.
//  Copyright © 2018 August Lilleaas. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController, RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return URL(string: "http://localhost:8081/index-dev.ios.bundle?platform=ios")
    }
    
    override func loadView() {
        let bridge = RCTBridge(delegate: self, launchOptions: nil)
        let rootView = RCTRootView(bridge: bridge, moduleName: "RNIosTest", initialProperties:nil)
        self.view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

