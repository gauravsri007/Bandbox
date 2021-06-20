//
//  Login_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 18/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit
import MaterialComponents

class Login_VC: UIViewController {

    @IBOutlet weak var btn_google: UIButton!{
        didSet{
            btn_google.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var btn_facebook: UIButton!{
        didSet{
            btn_facebook.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var btn_signin: UIButton!{
        didSet{
            btn_signin.layer.cornerRadius = 5
        }
    }
    @IBOutlet weak var txtField_email: UITextField!
    @IBOutlet weak var txtField_password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillLayoutSubviews() {
        
        
        txtField_email.placeholderColor(color: .white)
        txtField_password.placeholderColor(color: .white)
        

        //------------NAVIGATION BAR ---------------
//        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController!.navigationBar.shadowImage = UIImage()
//        self.navigationController!.navigationBar.isTranslucent = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }
    
    
    
    @IBAction func forgot_password_clicked(_ sender: Any) {
        let forgotVC = self.storyboard!.instantiateViewController(withIdentifier:"Forgot_password_VC") as! Forgot_password_VC
          self.navigationController?.pushViewController(forgotVC, animated: true)
    }
    
    @IBAction func signin_clicked(_ sender: Any) {
        let homevc = self.storyboard?.instantiateViewController(withIdentifier: "Home_VC")as! Home_VC
        homevc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(homevc, animated: true)
//        self.present(homevc, animated: true, completion: nil)
    }
  
    @IBAction func facebook_clicked(_ sender: Any) {
    }
    
    @IBAction func google_clicked(_ sender: Any) {
    }
    
    
    @IBAction func signup_clicked(_ sender: Any) {
    }
    
    
}


