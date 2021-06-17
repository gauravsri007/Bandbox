//
//  MyOrder_Cell.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 13/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit



class MyOrder_Cell: UITableViewCell {

    @IBOutlet weak var lbl_amount: UILabel!
    @IBOutlet weak var lbl_orderStatus: UILabel!
    @IBOutlet weak var lbl_quantity: UILabel!
    @IBOutlet weak var lbl_orderID: UILabel!
    @IBOutlet weak var lbl_orderScheduled: UILabel!
    @IBOutlet weak var lbl_orderPlaced: UILabel!
    @IBOutlet weak var view_bg: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var view_orderDetails: UIView!
    weak var delegate: MyOrderDelegate?

    @IBAction func viewDetails_Action(_ sender: UIButton) {
        delegate?.viewDetailsTapped(cell : self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


protocol MyOrderDelegate : AnyObject{
    func viewDetailsTapped(cell : MyOrder_Cell)
    
}
