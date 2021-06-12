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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - PagerTabStripDataSource
      
      override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

          let personalInfo_VC = self.storyboard?.instantiateViewController(withIdentifier: "ProductList_VC") as! ProductList_VC
     
          guard isReload else {
              return [personalInfo_VC, personalInfo_VC, personalInfo_VC]
          }
          var childViewControllers = [personalInfo_VC, personalInfo_VC, personalInfo_VC]
          for index in childViewControllers.indices {
              let nElements = childViewControllers.count - index
              let n = (Int(arc4random()) % nElements) + index
              if n != index {
                  childViewControllers.swapAt(index, n)
              }
          }
           let nItems = Int(1 + (arc4random() % 2))

        return Array(children.prefix(Int(nItems)))
      }
      
     override func reloadPagerTabStripView() {
          isReload = true
          if arc4random() % 2 == 0 {
              pagerBehaviour = .progressive(skipIntermediateViewControllers: arc4random() % 2 == 0, elasticIndicatorLimit: arc4random() % 2 == 0 )
          } else {
              pagerBehaviour = .common(skipIntermediateViewControllers: arc4random() % 2 == 0)
          }
          super.reloadPagerTabStripView()
      }

}
