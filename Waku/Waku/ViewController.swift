//
//  ViewController.swift
//  Waku
//
//  Created by Mitsuaki Ihara on 2018/11/28.
//  Copyright © 2018年 Mitsuaki Ihara. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var wkWebView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        wkWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        wkWebView.uiDelegate = self
        view = wkWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string: "https://www.google.co.jp/")
        let myRequest = URLRequest(url: myURL!)
        wkWebView.load(myRequest)
    }


}

extension ViewController: WKUIDelegate {}
