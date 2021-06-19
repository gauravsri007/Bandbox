//
//  Login_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 18/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Login_VC: UIViewController {

    @IBOutlet weak var txtField_email: UITextField!
    @IBOutlet weak var txtField_password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    override func viewWillLayoutSubviews() {
        
        //------------NAVIGATION BAR ---------------
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        
    }
    
    
    @IBAction func forgot_password_clicked(_ sender: Any) {
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
