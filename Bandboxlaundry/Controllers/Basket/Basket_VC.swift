//
//  Basket_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 13/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Basket_VC: UIViewController {

    @IBOutlet weak var view_bottom: UIView!
    @IBOutlet weak var tblView_basket: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap_bottomView = UITapGestureRecognizer(target: self, action: #selector(self.handleTap_menu(_:)))
         self.view_bottom.addGestureRecognizer(tap_bottomView)
    }
    
    @objc func handleTap_menu(_ sender: UITapGestureRecognizer? = nil) {
         
         let basketVC = self.storyboard!.instantiateViewController(withIdentifier:"MyOrder_VC") as! MyOrder_VC
         self.navigationController?.pushViewController(basketVC, animated: true)

     }


}


extension Basket_VC : UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5//self.arr_menu_values.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
            let cell = tableView.dequeueReusableCell(withIdentifier: "Basket_Cell") as! Basket_Cell
//            cell.menu_title.text = arr_menu_values[indexPath.row]
//            cell.img_menu.image = UIImage(named: arr_menu_imagaes[indexPath.row])
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

            return 96
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     

            }
    }
