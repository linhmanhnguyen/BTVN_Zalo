//
//  FriendListViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 29/05/2023.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblFriendsList: UITableView!
    @IBOutlet weak var textSearch: UITextField!
    
    
    var friendsOfUser: [User] = []
    var userDatabaseObject = UserDatabase()
    override func viewDidLoad() {
        super.viewDidLoad()
        tblFriendsList.dataSource = self
        tblFriendsList.delegate = self
        initFriendsListData()
    }
    
    func initFriendsListData(){
        let friend1 = User(id: 1, fullName: "Nguyen Manh Linh", avatar: "me.png", phone: "", password: "", friends: [])
        let friend2 = User(id: 2, fullName: "Vu Dinh Duan", avatar: "duan.png", phone: "", password: "", friends: [])
        let friend3 = User(id: 3, fullName: "Nguyen Khac Hung", avatar: "hung.png", phone: "", password: "", friends: [])
        let friend4 = User(id: 4, fullName: "Dinh Tien Hoang", avatar: "hoang.png", phone: "", password: "", friends: [])
        friendsOfUser.append(friend1)
        friendsOfUser.append(friend2)
        friendsOfUser.append(friend3)
        friendsOfUser.append(friend4)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsOfUser.count
//        if textSearch.text == ""{
//            return friendsOfUser.count
//        }else{
//            return friendIsSearched.count
//        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var currentFriend: User
        let cell = tblFriendsList.dequeueReusableCell(withIdentifier: "FriendListIdentifier")!
        
//        if(isSearched){
//            currentFriend = friendsOfUser[indexPath.row]
//        }else{
//            currentFriend = friendIsSearched[indexPath.row]
//        }
        let imgAvtFriends = cell.viewWithTag(100) as! UIImageView
        
        if let imgAvtDetail = userDatabaseObject.getUserDetailByUserId(userID: friendsOfUser[indexPath.row].id) {
            imgAvtFriends.image = UIImage(named: "\(imgAvtDetail.avatar)")
        }
        
        let lblUserNames = cell.viewWithTag(101) as! UILabel
        lblUserNames.text = friendsOfUser[indexPath.row].fullName
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        friendsOfUser.remove(at: indexPath.row)
        tblFriendsList.reloadData()
    }

//    var friendIsSearched: [User] = []
//    var isSearched: Bool
//    let lblNil = UILabel(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
//    @IBAction func btnSearchFriend(_ sender: UIButton) {
//        searchFriend()
//    }
//    func searchFriend(){
//        let nameFriend: String = textSearch.text!
//        friendIsSearched = []
//        if nameFriend != ""{
//            isSearched = true
//            for check in friendsOfUser {
//                if check.fullName.lowercased().contains(nameFriend.lowercased()){
//                    friendIsSearched.append(check)
//                }
//                if friendIsSearched.count == 0 {
//                    lblNil.isHidden = false
//                    tblFriendsList.isHidden = true
//                }
//                else {
//                    lblNil.isHidden = true
//                    tblFriendsList.isHidden = false
//                }
//            }
//        }else{
//            friendIsSearched = friendsOfUser
//            isSearched = false
//            lblNil.isHidden = true
//        }
//        tblFriendsList.reloadData()
//    }
}

