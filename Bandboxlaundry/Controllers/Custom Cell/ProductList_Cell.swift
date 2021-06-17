//
//  ProductList_Cell.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 12/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class ProductList_Cell: UITableViewCell {

    @IBOutlet weak var lbl_specialCategory: UILabel!
    @IBOutlet weak var view_red: UIView!
    @IBOutlet weak var lbl_price: UILabel!
    @IBOutlet weak var lbl_category: UILabel!
    @IBOutlet weak var view_amt_bg: UIView!
    @IBOutlet weak var img_bg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
