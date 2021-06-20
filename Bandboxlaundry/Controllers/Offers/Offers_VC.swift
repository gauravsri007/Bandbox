//
//  Offers_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 14/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Offers_VC: UIViewController {

    @IBOutlet weak var tblView_offers: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}


extension Offers_VC : UITableViewDataSource,UITableViewDelegate{
   
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5//self.arr_menu_values.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Offers_Cell") as! Offers_Cell
//        cell.view_bg.layer.cornerRadius = 14
//        cell.view_bg.addShadow(color: UIColor.lightGray)
//        cell.view_orderDetails.layer.borderWidth = 1
//        cell.view_orderDetails.layer.borderColor = UIColor.gray.cgColor

//        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 325
    }
    
//    func viewDetailsTapped(cell: MyOrder_Cell) {
//        let indexPath = self.tblView_MyOrder.indexPath(for: cell)
//        print("Enter viewDetailsTapped")
//
//    }
    

}
