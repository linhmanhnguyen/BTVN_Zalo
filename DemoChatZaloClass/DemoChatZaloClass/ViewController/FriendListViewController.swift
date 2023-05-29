//
//  FriendListViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 29/05/2023.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblFriendsList: UITableView!
    
    var friendsOfUser: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tblFriendsList.dataSource = self
        tblFriendsList.delegate = self
        initFriendsListData()
    }
    
    func initFriendsListData(){
        let friend1 = User(id: 1, fullName: "Nguyen Manh Linh", avatar: "", phone: "", password: "", friends: [])
        let friend2 = User(id: 2, fullName: "Vu Dinh Duan", avatar: "", phone: "", password: "", friends: [])
        let friend3 = User(id: 3, fullName: "Nguyen Khac Hung", avatar: "", phone: "", password: "", friends: [])
        let friend4 = User(id: 4, fullName: "Dinh Tien Hoang", avatar: "", phone: "", password: "", friends: [])
        friendsOfUser.append(friend1)
        friendsOfUser.append(friend2)
        friendsOfUser.append(friend3)
        friendsOfUser.append(friend4)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsOfUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblFriendsList.dequeueReusableCell(withIdentifier: "FriendListIdentifier")!
        let imgAvts = cell.viewWithTag(100) as! UIImageView
        imgAvts.image = UIImage(named: "default.png")
        let lblUserNames = cell.viewWithTag(101) as! UILabel
        lblUserNames.text = friendsOfUser[indexPath.row].fullName
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
