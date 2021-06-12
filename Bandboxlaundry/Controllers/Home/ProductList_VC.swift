//
//  ProductList_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 12/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ProductList_VC: UIViewController,IndicatorInfoProvider {
 
    @IBOutlet weak var tblView_productList: UITableView!
    var itemInfo: IndicatorInfo = "Profile"

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
           return itemInfo
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView_productList.delegate = self
        tblView_productList.dataSource = self

        // Do any additional setup after loading the view.
    }
    

  

}


extension ProductList_VC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductList_Cell", for: indexPath) as! ProductList_Cell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
}