//
//  ProvinsiTableViewCell.swift
//  Table view
//
//  Created by Admin on 12/11/20.
//

import UIKit

class ProvinsiTableViewCell: UITableViewCell {

    @IBOutlet weak var ProvinsiView: UIView!
    
    @IBOutlet weak var ProvinsiImg: UIImageView!
    
    @IBOutlet weak var ProvinsiLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
