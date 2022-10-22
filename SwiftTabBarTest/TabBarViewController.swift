//
//  TabBarViewController.swift
//  SwiftTabBarTest
//
//  Created by Stephen on 2022/10/21.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tabBarDetialShow()
//        tabBarSetting()
    }
    
    
    // MARK: Function
    private func tabBarDetialShow() {
        print(tabBar)

        if let items = tabBar.items {
            print("item們：", items)
        }
        if let selectItem = tabBar.selectedItem {
            print("選擇item：", selectItem)
        }
        print("itemWidth: ", tabBar.itemWidth)
        print("itemSpacing: ", tabBar.itemSpacing)
        print("isCustomizing: ", tabBar.isCustomizing)
    }
    
    private func tabBarSetting() {
        // bar透明嗎
        tabBar.isTranslucent = false
        // 文字跟圖像的顏色
        tabBar.tintColor = .orange
        // 背景顏色
        tabBar.backgroundColor = UIColor.cyan
        // 沒被選到bar物件的顏色
        tabBar.unselectedItemTintColor = UIColor.systemPink
        
        tabBar.items?[0].image = UIImage(systemName: "square")!
        tabBar.items?[1].image = UIImage(systemName: "rectangle")!
        // 被選到的item的圖示
        tabBar.selectionIndicatorImage = UIImage(systemName: "moon.fill")!
        // item的相對位置（置中或均分）
        tabBar.itemPositioning = .centered
        // item的寬度
        tabBar.itemWidth = 50
        // item與item之間的間距
        tabBar.itemSpacing = 5
        // 官方文件寫說是背景色, 看不見效果，可能被背景色遮擋
        tabBar.barTintColor = .yellow
        tabBar.backgroundImage = UIImage(systemName: "circle.fill")!
        tabBar.shadowImage = UIImage(systemName: "circle")!
    }
}

// MARK: UITabBarControllerDelegate

extension TabBarViewController {
    
    // Managing tab bar selections
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("tab bar controller should selected?")
        return false
    }
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("tab bar controller 被選擇")
    }
    
    // Managing tab bar customizations
    func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController]) {
    }
    func tabBarController(_ tabBarController: UITabBarController, willEndCustomizing viewControllers: [UIViewController], changed: Bool) {
        
    }
    func tabBarController(_ tabBarController: UITabBarController, didEndCustomizing viewControllers: [UIViewController], changed: Bool) {
        
    }
    
    // Overriding view rotation settings
//    func tabBarControllerSupportedInterfaceOrientations(_ tabBarController: UITabBarController) -> UIInterfaceOrientationMask {}
//    func tabBarControllerPreferredInterfaceOrientationForPresentation(_ tabBarController: UITabBarController) -> UIInterfaceOrientation {}
    
    // Supporting custom tab bar transition animations
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        nil
    }
    func tabBarController(_ tabBarController: UITabBarController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        nil
    }
}

//MARK: UITabBarDelegate

extension TabBarViewController {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("tab bar 被選擇")
        print(item.title)
    }
    override func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem]) {
        print("tab bar 開始客製化")
    }
    override func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool) {
        print("tab bar 結束客製化")
    }
    override func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem]) {
        print("tab bar 即將開始客製化")
    }
    override func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool) {
        print("tab bar 即將結束客製化")
    }
}
