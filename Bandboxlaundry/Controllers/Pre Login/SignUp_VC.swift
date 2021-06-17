//
//  SignUp_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 18/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class SignUp_VC: UIViewController {
    @IBOutlet weak var txtField_name: UITextField!
    @IBOutlet weak var txtField_email: UITextField!
    @IBOutlet weak var txtField_mobile: UITextField!
    @IBOutlet weak var txtField_password: UITextField!
    @IBOutlet weak var txtField_confirm_password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = false
     }
    
    
    @IBAction func signup_clicked(_ sender: UIButton) {
    }
    
 

}
