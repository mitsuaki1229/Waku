//
//  DisplayView.swift
//  Waku
//
//  Created by Mitsuaki Ihara on 2018/11/28.
//  Copyright © 2018年 Mitsuaki Ihara. All rights reserved.
//

import UIKit
import WebKit

class DisplayView: UIView {

    let displayArea = WKWebView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubviews()
        installConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubviews() {
        addSubview(displayArea)
    }

    func installConstraints() {

        displayArea.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            displayArea.topAnchor.constraint(equalTo: topAnchor),
            displayArea.leadingAnchor.constraint(equalTo: leadingAnchor),
            displayArea.trailingAnchor.constraint(equalTo: trailingAnchor),
            displayArea.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
