//
//  Forgot_password_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 18/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Forgot_password_VC: UIViewController {
    @IBOutlet weak var txtField_email: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = false
     }

    @IBAction func signin_clicked(_ sender: Any) {
        
    }


}
