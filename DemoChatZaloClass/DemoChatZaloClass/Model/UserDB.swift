//
//  UserDB.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 30/05/2023.
//

import Foundation
class UserDatabase {
    
    var userDatabase: [User] = []
    
    init(){
        let user1 = User(id: 1, fullName: "Nguyen Manh Linh", avatar: "me.png", phone: "", password: "", friends: [])
        let user2 = User(id: 2, fullName: "Vu Dinh Duan", avatar: "duan.png", phone: "", password: "", friends: [])
        let user3 = User(id: 3, fullName: "Nguyen Khac Hung", avatar: "hung.png", phone: "", password: "", friends: [])
        let user4 = User(id: 4, fullName: "Dinh Tien Hoang", avatar: "hoang.png", phone: "", password: "", friends: [])
        let user5 = User(id: 5, fullName: "Tu Dinh Minh", avatar: "default.png", phone: "", password: "", friends: [])
        let user6 = User(id: 6, fullName: "Giap Thi Phuong", avatar: "cphuong.png", phone: "", password: "", friends: [])
        let user7 = User(id: 7, fullName: "Le Dinh Linh", avatar: "alinh.png", phone: "", password: "", friends: [])
        let user8 = User(id: 8, fullName: "Nguyen Kha Chuong", avatar: "achuong.png", phone: "", password: "", friends: [])
        let user9 = User(id: 9, fullName: "Lớp Trưởng", avatar: "default.png", phone: "", password: "", friends: [])
        let user10 = User(id: 10, fullName: "Chị Dinh", avatar: "default.png", phone: "", password: "", friends: [])
        
        self.userDatabase.append(user1)
        self.userDatabase.append(user2)
        self.userDatabase.append(user3)
        self.userDatabase.append(user4)
        self.userDatabase.append(user5)
        self.userDatabase.append(user6)
        self.userDatabase.append(user7)
        self.userDatabase.append(user8)
        self.userDatabase.append(user9)
        self.userDatabase.append(user10)
    }
    
    func getUserDetailByUserId(userID: Int) -> User? {
        for UserID in userDatabase {
            if UserID.id == userID{
                return UserID
            }
        }
        return nil
    }
}
