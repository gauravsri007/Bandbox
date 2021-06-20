//
//  CheckAvlbl_VC.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 17/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class CheckAvlbl_VC: UIViewController {

    @IBOutlet weak var view_bottom: UIView!
    @IBOutlet weak var txtField_pincode: UITextField!
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
    
    
    override func viewWillLayoutSubviews() {
        
        //------------NAVIGATION BAR ---------------
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    @IBAction func check_avlbl_Clicked(_ sender: UIButton) {
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        let checkVC = self.storyboard!.instantiateViewController(withIdentifier:"Email_verification_VC") as! Email_verification_VC
        self.navigationController?.pushViewController(checkVC, animated: true)
    }
    
    @IBAction func signin_Clicked(_ sender: Any) {
        let loginVC = self.storyboard!.instantiateViewController(withIdentifier:"Login_VC") as! Login_VC
         self.navigationController?.pushViewController(loginVC, animated: true)
        
    }


}
