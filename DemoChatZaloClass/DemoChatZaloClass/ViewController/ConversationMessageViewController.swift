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
    var members: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tblMessage.dataSource = self
        tblMessage.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblMessage.dequeueReusableCell(withIdentifier:"MessageCellIndentifier")!
        let lblMessages = cell.viewWithTag(102) as! UILabel
        lblMessages.text = messages[indexPath.row].content
        
        //let lblUserNames = cell.viewWithTag(103) as! UILabel
        //lblUserNames.text = messages[indexPath.row].
        
        let lblMessageTimes = cell.viewWithTag(104) as! UILabel
        lblMessageTimes.text = messages[indexPath.row].timeMessage
        
        let imgUsers = cell.viewWithTag(201) as! UIImageView
        imgUsers.image = UIImage(named: "default.png")
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
