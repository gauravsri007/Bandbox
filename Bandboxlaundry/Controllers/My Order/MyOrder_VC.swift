//
//  MyOrder_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 13/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class MyOrder_VC: UIViewController {
 
    
    @IBOutlet weak var tblView_MyOrder: UITableView!

//    @IBOutlet weak var view_bottom: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap_bottomView = UITapGestureRecognizer(target: self, action: #selector(self.handleTap_menu(_:)))
//        self.view_bottom.addGestureRecognizer(tap_bottomView)
    }
    
    @objc func handleTap_menu(_ sender: UITapGestureRecognizer? = nil) {
         
         let basketVC = self.storyboard!.instantiateViewController(withIdentifier:"Basket_VC") as! Basket_VC
         self.navigationController?.pushViewController(basketVC, animated: true)

     }
  

}

extension MyOrder_VC : UITableViewDataSource,UITableViewDelegate,MyOrderDelegate{
   
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5//self.arr_menu_values.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyOrder_Cell") as! MyOrder_Cell
        cell.view_bg.layer.cornerRadius = 14
        cell.view_bg.addShadow(color: UIColor.lightGray)
        cell.view_orderDetails.layer.borderWidth = 1
        cell.view_orderDetails.layer.borderColor = UIColor.gray.cgColor

        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 325
    }
    
    func viewDetailsTapped(cell: MyOrder_Cell) {
        let indexPath = self.tblView_MyOrder.indexPath(for: cell)
        print("Enter viewDetailsTapped")
        
    }
    

}
