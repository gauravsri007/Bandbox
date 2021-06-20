//
//  Home_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 11/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import IHKeyboardAvoiding

//import SVProgressHUD
//import Alamofire

class Home_VC: UIViewController {
//    @IBOutlet weak var view_bg_sideMenu: UIView!
//    @IBOutlet weak var view_sideMenu: UIView!
    
    @IBOutlet weak var tblView_menu: UITableView!
     @IBOutlet weak var view_menu: UIView!
//    @IBOutlet weak var cons_menu_trailing: NSLayoutConstraint!
    @IBOutlet weak var view_menu_bg: UIView!
    
    var arr_menu_values             : [String] = []
    var arr_menu_imagaes            : [String] = []
    var panGesture       = UIPanGestureRecognizer()
    var isSideMenuSelected : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUIConfiguration()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Your Basket (10)", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillLayoutSubviews() {

      }

    func setUIConfiguration(){
            
//            self.cons_menu_trailing.constant = 0//self.view.frame.size.width
//        print(" self.cons_menu_trailing.constant", self.cons_menu_trailing.constant)

            arr_menu_values = ["Home","My Profile","My Order","My Basket","Offers","Notification","Privacy Policy","Terms of Service","Help & Support","Rate Us","Share with Friends","Logout"]
            arr_menu_imagaes = ["home","account","order_history","my_cart","offer_zone","notification","privacy_policy","t&C","upport","rate_us","share","logout"]
           
            let tap_OnMenu = UITapGestureRecognizer(target: self, action: #selector(self.handleTap_menu(_:)))
            self.view_menu_bg.addGestureRecognizer(tap_OnMenu)
            
            self.view_menu_bg.isHidden = true
//            self.view_menu.isHidden = true

            self.view_menu.frame.origin.x = -screenWidth
            print("self.view_menu.frame.origin.x",self.view_menu.frame.origin.x)
        

            
        }
    
     @objc func handleTap_menu(_ sender: UITapGestureRecognizer? = nil) {
      sideMenu_close()

     }
    
    func sideMenu_open(){
          UIView.animate(withDuration: Double(0.5), animations: {
              //             self.cons_menu_trailing.constant = 66
              self.view_menu.frame.origin.x = 0
            self.navigationController?.navigationBar.isHidden = true

              self.view.layoutIfNeeded()
          })
          { (completed) in
              self.view_menu_bg.isHidden = false
          }
       
    }
    
    func sideMenu_close(){
        isSideMenuSelected = false
        
        self.view_menu_bg.isHidden = true
        
        UIView.animate(withDuration: Double(0.5), animations: {
            self.view_menu.frame.origin.x = -screenWidth
            self.view.layoutIfNeeded()
        })
        { (completed) in
            self.navigationController?.navigationBar.isHidden = false

        }
    }
     
@IBAction func menu_clicked(_ sender: Any) {
    isSideMenuSelected = !isSideMenuSelected
    
    if isSideMenuSelected{
        
        sideMenu_open()
    }
    else{
        sideMenu_close()
    }
}
 
    override func viewDidAppear(_ animated: Bool) {
          
          super.viewDidAppear(animated)
          KeyboardAvoiding.avoidingView = self.view

      }

}



extension Home_VC : UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arr_menu_values.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
            let cell = tableView.dequeueReusableCell(withIdentifier: "Menu_Cell") as! Menu_Cell
            cell.menu_title.text = arr_menu_values[indexPath.row]
            cell.img_menu.image = UIImage(named: arr_menu_imagaes[indexPath.row])
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

            return 52
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
//            tableView.deselectRow(at: indexPath, animated: true)
//            switch indexPath.row {
//            case 0:
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "VisionCamera_VC") as! VisionCamera_VC
//                vc.modalPresentationStyle = .fullScreen
//                self.present(vc, animated: true, completion: nil)
//                break
//            case 1:
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactUs_VC") as! ContactUs_VC
//                vc.modalPresentationStyle = .fullScreen
//                self.present(vc, animated: true, completion: nil)
//                break
//            case 2:
//                let vc = self.storyboard?.instantiateViewController(withIdentifier: "PrivacyPolicy_VC") as! PrivacyPolicy_VC
//                vc.modalPresentationStyle = .fullScreen
//                self.present(vc, animated: true, completion: nil)
//                break
//            case 3:
//                shareApp()
//                break
//            default:
//                break
//            }
    }
    
    func shareApp(){
        // Setting description
        //Set the default sharing message.
        let message = "Bharat Scan : Best Indian Document Scanning App Inspired by Atmnirbhar Bharat"
        //Set the link to share.
        if let link = NSURL(string: "https://www.apple.com/ios/app-store/")
        {
            let objectsToShare = [message,link] as [Any]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
            self.present(activityVC, animated: true, completion: nil)
        }
    }

    
}



