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
        
    }
    
    
    
    @IBAction func check_avlbl_Clicked(_ sender: UIButton) {
    }
    
    @IBAction func signin_Clicked(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
