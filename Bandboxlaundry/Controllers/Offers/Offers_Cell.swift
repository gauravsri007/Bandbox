//
//  Offers_Cell.swift
//  Bandboxlaundry
//
//  Created by kumar Gaurav on 14/06/21.
//  Copyright © 2021 kumar Gaurav. All rights reserved.
//

import UIKit

class Offers_Cell: UITableViewCell {
    @IBOutlet weak var view_bg: UIView!{
        didSet{
            view_bg.layer.cornerRadius = 6
            view_bg.addShadow(color: .gray)
        }
    }

    @IBOutlet weak var img_offer: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
