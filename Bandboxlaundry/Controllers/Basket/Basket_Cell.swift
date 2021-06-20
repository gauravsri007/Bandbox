//
//  Basket_Cell.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 13/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Basket_Cell: UITableViewCell {
    @IBOutlet weak var view_lbl_bg: UIView!{
        didSet{
            view_lbl_bg.layer.cornerRadius = view_lbl_bg.frame.height / 2
            view_lbl_bg.layer.borderColor = UIColor.green.cgColor
            view_lbl_bg.layer.borderWidth = 1
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var btn_minus: UIButton!{
        didSet{
            btn_minus.layer.cornerRadius = btn_minus.frame.height / 2
        }
    }
    @IBOutlet weak var btn_plus: UIButton!{
        didSet{
            btn_plus.layer.cornerRadius = btn_plus.frame.height / 2
        }
    }
    @IBOutlet weak var lbl_value: UILabel!{
        didSet{
            lbl_value.layer.cornerRadius = lbl_value.frame.height / 2
        }
    }
    weak var delegate: BasketDelegate?

    
    @IBAction func increase_Action(_ sender: UIButton) {
        delegate?.plusTapped(cell: self)

    }
    
    
    @IBAction func decrease_Action(_ sender: UIButton) {
        delegate?.minusTapped(cell: self)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

protocol BasketDelegate : AnyObject{
    func minusTapped(cell : Basket_Cell)
    func plusTapped(cell : Basket_Cell)

}
