//
//  ConversationMessageViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 22/05/2023.
//

import UIKit

class ConversationMessageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblMessage: UITableView!
    var messages: [Message] = []
    var userDatabaseObject = UserDatabase()

    override func viewDidLoad() {
        super.viewDidLoad()
        tblMessage.dataSource = self
        tblMessage.delegate = self
        
        tblMessage.register(UINib(nibName:"MessageByFriendsTableViewCell",bundle: nil),forCellReuseIdentifier: "MessageByFriendCellIdentifier")
        tblMessage.register(UINib(nibName: "MessageByLoginUserTableViewCell", bundle: nil), forCellReuseIdentifier: "MessageByLoginUserCellIdentifier")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if messages[indexPath.row].senderID == 1 {
            let messagesOfUserCell = tblMessage.dequeueReusableCell(withIdentifier: "MessageByLoginUserCellIdentifier") as! MessageByLoginUserTableViewCell
            messagesOfUserCell.lblMessagesContent.text = messages[indexPath.row].content
            let imgName = userDatabaseObject.getUserDetailByUserId(userID: messages[indexPath.row].senderID)!.avatar
            messagesOfUserCell.imgAvt.image = UIImage(named: "\(imgName)")
            return messagesOfUserCell
        }else{
            let messagesOfFriendCell = tblMessage.dequeueReusableCell(withIdentifier: "MessageByFriendCellIdentifier") as! MessageByFriendsTableViewCell
            messagesOfFriendCell.lblMessagesContent.text = messages[indexPath.row].content
            
            if let imgAvtDetail = userDatabaseObject.getUserDetailByUserId(userID: messages[indexPath.row].senderID) {
                messagesOfFriendCell.imgAvt.image = UIImage(named: "\(imgAvtDetail.avatar)")
            }else{
                messagesOfFriendCell.imgAvt.image = UIImage(named: "default.png")
            }
            
            if let userDetail = userDatabaseObject.getUserDetailByUserId(userID: messages[indexPath.row].senderID){
                messagesOfFriendCell.lblFriendName.text = userDetail.fullName
            }else{
                messagesOfFriendCell.lblFriendName.text = "Ko co ten"
            }
            messagesOfFriendCell.lblFriendName.text = userDatabaseObject.getUserDetailByUserId(userID: messages[indexPath.row].senderID)?.fullName
            
            return messagesOfFriendCell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

