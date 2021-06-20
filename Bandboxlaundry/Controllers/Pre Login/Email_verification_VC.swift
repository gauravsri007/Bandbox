//
//  Email_verification_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 18/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Email_verification_VC: UIViewController {

    @IBOutlet weak var txtField_email: UITextField!
    @IBOutlet weak var view_txtFieldBG: UIView!{
         didSet{
             view_txtFieldBG.layer.borderWidth = 1
             view_txtFieldBG.layer.borderColor = UIColor.gray.cgColor
             view_txtFieldBG.layer.cornerRadius = 4
         }
     }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.tintColor = .black
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
    }

    
    @IBAction func continue_to_app_clicked(_ sender: Any) {
        
        
    }
    
//    @IBAction func back_Clicked(_ sender: Any) {
//        self.navigationController?.popViewController(animated: true)
//    }
//    

}
