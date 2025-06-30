//
//  UserCellVCTableViewCell.swift
//  EliteFresher_UIKit
//
//  Created by iKame Elite Fresher 2025 on 6/30/25.
//

import UIKit

class UserCellVC: UITableViewCell {
    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var weightHeight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func configure(with user: User) {
        fullName.text = "\(user.firstName) - \(user.lastName)"
        weightHeight.text = "\(user.weight)kg - \(user.height)cm"
    }
}
