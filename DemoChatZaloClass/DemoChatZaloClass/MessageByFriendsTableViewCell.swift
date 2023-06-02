//
//  MessageByFriendsTableViewCell.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 29/05/2023.
//

import UIKit

class MessageByFriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFriendName: UILabel!
    @IBOutlet weak var lblMessagesContent: UILabel!
    @IBOutlet weak var imgAvt: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
