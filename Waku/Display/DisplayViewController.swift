//
//  DisplayViewController.swift
//  Waku
//
//  Created by Mitsuaki Ihara on 2018/11/28.
//  Copyright © 2018年 Mitsuaki Ihara. All rights reserved.
//

import UIKit
import WebKit

class DisplayViewController: UIViewController {

    var url: String?
    
    convenience init() {
        self.init(url: nil)
    }
    
    init(url: String?) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        let view = DisplayView()
        view.displayArea.uiDelegate = self
        self.view = view
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let url = self.url,
            let myURL = URL(string: url) else { fatalError("Please set url.") }
        let myRequest = URLRequest(url: myURL)
        let view = self.view as! DisplayView
        view.displayArea.load(myRequest)
    }
}

extension DisplayViewController: WKUIDelegate {}
