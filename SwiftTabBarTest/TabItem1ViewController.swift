//
//  TabItem1ViewController.swift
//  SwiftTabBarTest
//
//  Created by Stephen on 2022/10/21.
//

import UIKit

class TabItem1ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .black
        tabBarItemSetting()
    }
    
    private func tabBarItemSetting() {
        tabBarItem.image = UIImage(systemName: "square")!
        // 標題位置偏移
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 5, vertical: 20)
        // 右上角標示框內容
        tabBarItem.badgeValue = "badge"
        // 右上角標示框顏色
        tabBarItem.badgeColor = .black
        // 右上角標示框的text屬性及item狀態
        ///  item狀態分為
        ///  normal -> 沒被選上
        ///  selected -> 被選上
        tabBarItem.setBadgeTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.yellow], for: UIControl.State.normal)
        tabBarItem.setBadgeTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.brown], for: .selected)
    }
    
    private func startCustomzation() {
        
    }
}
