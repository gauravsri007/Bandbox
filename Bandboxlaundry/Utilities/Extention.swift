//
//  Extention.swift
//  RozgaarIndia
//
//  Created by KUMAR GAURAV on 11/05/20.
//  Copyright © 2020 KUMAR GAURAV. All rights reserved.
//
import UIKit


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
