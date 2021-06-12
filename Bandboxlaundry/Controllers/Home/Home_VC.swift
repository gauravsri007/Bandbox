//
//  Home_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 11/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import XLPagerTabStrip
//import SVProgressHUD
//import Alamofire

class Home_VC: UIViewController {
    @IBOutlet weak var view_bg_sideMenu: UIView!
    @IBOutlet weak var view_sideMenu: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    
    override func viewWillLayoutSubviews() {
        self.setUI_SideMenu()
        
        self.view_folder_bg.isHidden = true

        view_bg_sideMenu.isHidden = true
        view_sideMenu.isHidden = true
     


    }
    
    func setUI_SideMenu(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view_helping.addGestureRecognizer(tap)
    }
    
    
    @IBAction func clickedSideMenu(_ sender: Any) {

          UIView.animate(
              withDuration: 0.4,
              delay: 0.0,
              options: .curveLinear,
              animations: {
                  
                  self.view.layoutIfNeeded()

                  self.view_bg_sideMenu.frame.origin.x = 0
                  self.view_sideMenu.isHidden = false
                  self.view_bg_sideMenu.isHidden = false
//                  self.view_helping.isHidden = false

                  
          }) { (completed) in
          }
          
      }

       //MARK:- API
        //MARK:-
        
//        func get_Portfolio_Data_API(){
//
//            // * Chechk Whether Network is Unreachable *
//            if !(NetworkManager.sharedInstance.reachability.connection != .unavailable){
//                self.view.MyToast()
//                return
//            }
//            SVProgressHUD.show()
//            let body: NSMutableDictionary? = ["email":getEmail(),
//                                              "request_type":"ios",
//                                              "token":getToken()]
//
//            let strUrl = kBaseURL + "getPortfolioByEmail" as String
//            let url = NSURL(string: strUrl)
//            var request = URLRequest(url: url! as URL)
//            request.httpMethod = "POST"
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//            let data = try! JSONSerialization.data(withJSONObject:body as Any , options: JSONSerialization.WritingOptions.prettyPrinted)
//
//            let json = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
//            request.httpBody = json!.data(using: String.Encoding.utf8.rawValue)
//            let alamoRequest = AF.request(request as URLRequestConvertible)
//            alamoRequest.validate(statusCode: 200..<300)
//            alamoRequest.responseString { response in
//                SVProgressHUD.dismiss()
//                switch response.result {
//                case .success:
//                    let resultsArray = response.value
//                    let dic = convertToDictionary(text: resultsArray!)! as NSDictionary
//                    let isSuccess : String = dic.value(forKey: "status") as! String
//                    if isSuccess == "success"{
//                        if let newDic = dic.value(forKey: "data") as? NSDictionary{
//
//
//    //                    if let arr_active = newDic.value(forKey: "active_job") as? NSArray{
//    //                        arr_Portfolio_Active_Job = arr_active
//    //                    }
//                        if let arrPortfolio = newDic.value(forKey: "portfolio") as? NSArray{
//                            arr_Portfolio = arrPortfolio
//                        }
//
//                    }
//                    }
//                case .failure(let error):
//                    SVProgressHUD.dismiss()
//                    GlobalMethods.manager.error_Log_API(error: "API -> getPortfolioByEmail , error ->\(error.localizedDescription)")
//
//                    break
//                }
//            }
//        }
  

}
