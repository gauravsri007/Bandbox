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
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {

         txtField_email.placeholderColor(color: .white)
     }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .white
        
    }

    @IBAction func signin_clicked(_ sender: Any) {
        
    }


}
