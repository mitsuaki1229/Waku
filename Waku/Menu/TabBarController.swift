//
//  TabBarController.swift
//  Waku
//
//  Created by Mitsuaki Ihara on 2018/11/28.
//  Copyright © 2018年 Mitsuaki Ihara. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    enum DisplayTag: Int {
        case home
        case mypage
        case cart
    }

    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        setUpViewControllers()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    private func setUpViewControllers() {

        var viewControllers: [UIViewController] = []

        let topDisplayViewController =
                DisplayViewController(url: "http://www.example.com/")
        topDisplayViewController.tabBarItem = UITabBarItem(title: "HOME",
                image: #imageLiteral(resourceName: "home"), tag: DisplayTag.home.rawValue)
        let mypageDisplayViewController =
                DisplayViewController(url: "http://www.example.org/")
        mypageDisplayViewController.tabBarItem = UITabBarItem(title: "MyPage",
                image: #imageLiteral(resourceName: "mypage"), tag: DisplayTag.mypage.rawValue)
        let cartDisplayViewController =
                DisplayViewController(url: "http://www.example.net/")
        cartDisplayViewController.tabBarItem = UITabBarItem(title: "Cart",
                image: #imageLiteral(resourceName: "cart"), tag: DisplayTag.cart.rawValue)

        viewControllers.append(contentsOf: [topDisplayViewController, mypageDisplayViewController, cartDisplayViewController])

        self.viewControllers = viewControllers
    }
}
