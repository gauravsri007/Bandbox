//
//  Home_Container.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 12/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Home_Container: ButtonBarPagerTabStripViewController {
    var isReload = false
    var menuItems = [UIViewController]()
    var arr_menu_name : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonBarView.selectedBar.backgroundColor = .white
        buttonBarView.backgroundColor = UIColor.systemGreen
        settings.style.buttonBarItemBackgroundColor = UIColor.systemGreen
        settings.style.buttonBarItemTitleColor = .white
        settings.style.selectedBarHeight = 100.0

    }
    

    // MARK: - PagerTabStripDataSource
      
      override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
//        var arr_vc :[UIViewController] = []
          let personalInfo_VC = self.storyboard?.instantiateViewController(withIdentifier: "ProductList_VC") as! ProductList_VC
        for i in 0...8{
            menuItems.append(personalInfo_VC)
        }
//
//          guard isReload else {
//              return arr_vc//[personalInfo_VC]
//          }
//          var childViewControllers = arr_vc//[personalInfo_VC]
//          for index in childViewControllers.indices {
//              let nElements = childViewControllers.count - index
//              let n = (Int(arc4random()) % nElements) + index
//              if n != index {
//                  childViewControllers.swapAt(index, n)
//              }
//          }
//        let nItems = Int(1 + (Int(arc4random()) % arr_vc.count))
//
//        return Array(children.prefix(Int(nItems)))
        var children = [UIViewController]()
        if menuItems.count == 0 {
             let child = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductList_VC") as! ProductList_VC
             children.append(child)
             return children
         } else {
//             let menuItemsUrls = menuItems.map{$0.url}
            var i = 0
            arr_menu_name = ["Top","Laundry","Bedding","Suits","Trousers","Outdoors","Accessories","Home","Buisness"]
             for menuItem in menuItems {
                print("menuItem",menuItem)
                print("arr_menu_name[i]",arr_menu_name[i])
                print("arr_ i",i)

                 let child = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductList_VC") as! ProductList_VC
                child.strTitle = arr_menu_name[i] ?? "Ok"
//                 child.url = menuItem.url
                 children.append(child)
                i = i + 1
             }

             return children
         }
      }
      
     override func reloadPagerTabStripView() {
          isReload = true
          if arc4random() % 2 == 0 {
              pagerBehaviour = .progressive(skipIntermediateViewControllers: arc4random() % 2 == 0, elasticIndicatorLimit: arc4random() % 2 == 0 )
          } else {
              pagerBehaviour = .common(skipIntermediateViewControllers: arc4random() % 2 == 0)
          }
//          self.menuItems = menuItems

          DispatchQueue.main.async {
                self.reloadPagerTabStripView()
          }
        
    }

}
