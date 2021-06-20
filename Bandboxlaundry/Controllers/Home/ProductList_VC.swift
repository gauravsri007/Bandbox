//
//  ProductList_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 12/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SDWebImage

class ProductList_VC: UIViewController,IndicatorInfoProvider {
 
    @IBOutlet weak var view_bottom: UIView!
    @IBOutlet weak var tblView_productList: UITableView!
    var itemInfo: IndicatorInfo = "Profile"
    var strTitle : String = ""
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        print("IndicatorInfo",strTitle)
           return IndicatorInfo(title: strTitle)
       }
    
    var arr_image_url :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView_productList.delegate = self
        tblView_productList.dataSource = self

        // Do any additional setup after loading the view.
        let tap_bottomView = UITapGestureRecognizer(target: self, action: #selector(self.handleTap_menu(_:)))
        self.view_bottom.addGestureRecognizer(tap_bottomView)
        arr_image_url = ["https://www.laundra.co.uk/img/services-alterations-and-repairs-80.jpg","https://www.laundra.co.uk/img/commercial-laundry-high-quality-and-exceptional-service.jpg","https://www.laundra.co.uk/img/services-laundry-wash-dry-and-fold-80.jpg","https://www.laundra.co.uk/img/commercial-laundry-high-quality-and-exceptional-service.jpg","https://www.laundra.co.uk/img/commercial-laundry-high-quality-and-exceptional-service.jpg"]
        
    }
    
    @objc func handleTap_menu(_ sender: UITapGestureRecognizer? = nil) {
        
        let basketVC = self.storyboard!.instantiateViewController(withIdentifier:"Basket_VC") as! Basket_VC
        self.navigationController?.pushViewController(basketVC, animated: true)

    }
    
}


extension ProductList_VC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductList_Cell", for: indexPath) as! ProductList_Cell
        
        cell.view_amt_bg.roundCorners(corners: [.bottomLeft,.topLeft], radius: cell.view_amt_bg.frame.height)
        let url = URL(string: arr_image_url[indexPath.row])!
        
        
        cell.img_bg.sd_setImage(with: URL(string: arr_image_url[indexPath.row]), placeholderImage: UIImage(named: "placeholder"))
        
        
        if indexPath.row == 0{
            cell.view_red.isHidden = false
        }
        else{
            cell.view_red.isHidden = true

        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr_image_url.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 238
    }
}
