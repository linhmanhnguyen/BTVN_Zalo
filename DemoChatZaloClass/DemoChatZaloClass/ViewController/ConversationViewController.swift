//
//  ConversationViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 22/05/2023.
//

import UIKit

class ConversationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tblConversations: UITableView!
    
    var conversations: [Conversation] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        tblConversations.dataSource = self
        tblConversations.delegate = self
    }
    
    func initData(){
        //---------------------------------------------------------------------------
        //-----KHOI TAO DU LIEU TIN NHAN CHO CAC CUOC HOI THOAI
        var messagesOfConversation1: [Message] = []
        var membersOfConversation1: [User] = []
        let message1OfConversation1 = Message(id: 1, content: "Alo mn oi", senderID: 1, conversationID: 1, timeMessage: "20h20", status: "Thanh cong")
        let message2OfConversation1 = Message(id: 2, content: "Toi nay hoc 20h30 nhe", senderID: 1, conversationID: 1, timeMessage: "20h20", status: "Thanh cong")
        let message3OfConversation1 = Message(id: 3, content: "Hello", senderID: 1, conversationID: 1, timeMessage: "20h20", status: "Thanh Công")
        messagesOfConversation1.append(message1OfConversation1)
        messagesOfConversation1.append(message2OfConversation1)
        messagesOfConversation1.append(message3OfConversation1)
        let conversation1 = Conversation(id: 1, name: "K17-VietDevelopers", members: membersOfConversation1, messages: messagesOfConversation1, managers: [])
        
        var messagesOfConversation2: [Message] = []
        var membersOfConversation2: [User] = []
        let message1OfConversation2 = Message(id: 1, content: "Alo lớp trưởng ơi", senderID: 2, conversationID: 2, timeMessage: "19h", status: "Thanh Cong")
        let message2OfConversation2 = Message(id: 2, content: "Mọi người nhớ đăng kí học phần nhé", senderID: 3, conversationID: 2, timeMessage: "20h", status: "Thành Công")
        let message3OfConversation2 = Message(id: 3, content: "Cả lớp thi tốt", senderID: 1, conversationID: 2, timeMessage: "00h00", status: "Thành Công")
        messagesOfConversation2.append(message1OfConversation2)
        messagesOfConversation2.append(message2OfConversation2)
        messagesOfConversation2.append(message3OfConversation2)
        let conversation2 = Conversation(id: 2, name: "CNTT3-K15-HAUI", members: membersOfConversation2, messages: messagesOfConversation2, managers: [])
        
        var messagesOfConversation3: [Message] = []
        var membersOfConversation3: [User] = []
        let message1OfConversation3 = Message(id: 1, content: "Mọi người nhớ hoàn thành bài tập trong tối nay nhé", senderID: 1, conversationID: 3, timeMessage: "14h", status: "Thành Công")
        messagesOfConversation3.append(message1OfConversation3)
        let conversation3 = Conversation(id: 3, name: "Lingostar", members: membersOfConversation3, messages: messagesOfConversation3, managers: [])
        
        var messagesOfConversation4: [Message] = []
        var membersOfConversation4: [User] = []
        let message1OfConversation4 = Message(id: 1, content: "AAAAA", senderID: 1, conversationID: 4, timeMessage: "19h", status: "Thanh Cong")
        let message2OfConversation4 = Message(id: 2, content: "BBBBBBB", senderID: 1, conversationID: 4, timeMessage: "20h", status: "Thành Công")
        let message3OfConversation4 = Message(id: 3, content: "CCCCC", senderID: 1, conversationID: 4, timeMessage: "00h00", status: "Thành Công")
        messagesOfConversation4.append(message1OfConversation4)
        messagesOfConversation4.append(message2OfConversation4)
        messagesOfConversation4.append(message3OfConversation4)
        let conversation4 = Conversation(id: 4, name: "Cloud", members: membersOfConversation4, messages: messagesOfConversation4, managers: [])
        
        conversations.append(conversation1)
        conversations.append(conversation2)
        conversations.append(conversation3)
        conversations.append(conversation4)
        
        //---------------------------------------------------------------------------
        //---KHOI TAO THONG TIN NGUOI DUNG
        let user1 = User(id: 1, fullName: "Nguyen Manh Linh", avatar: "", phone: "", password: "", friends: [])
        let user2 = User(id: 2, fullName: "Vu Dinh Duan", avatar: "", phone: "", password: "", friends: [])
        let user3 = User(id: 3, fullName: "Nguyen Khac Hung", avatar: "", phone: "", password: "", friends: [])
        let user4 = User(id: 4, fullName: "Dinh Tien Hoang", avatar: "", phone: "", password: "", friends: [])
        let user5 = User(id: 5, fullName: "Tu Dinh Minh", avatar: "", phone: "", password: "", friends: [])
        let user6 = User(id: 6, fullName: "Giap Thi Phuong", avatar: "", phone: "", password: "", friends: [])
        let user7 = User(id: 7, fullName: "Le Dinh Linh", avatar: "", phone: "", password: "", friends: [])
        let user8 = User(id: 8, fullName: "Nguyen Kha Chuong", avatar: "", phone: "", password: "", friends: [])
        let user9 = User(id: 9, fullName: "Lớp Trưởng", avatar: "", phone: "", password: "", friends: [])
        let user10 = User(id: 10, fullName: "Chị Dinh", avatar: "", phone: "", password: "", friends: [])
        //khoi tao du lieu danh sach thanh vien cuoc hoi thoai 1
        membersOfConversation1.append(user1)
        membersOfConversation1.append(user2)
        membersOfConversation1.append(user3)
        membersOfConversation1.append(user4)
        membersOfConversation1.append(user5)
        membersOfConversation1.append(user6)
        membersOfConversation1.append(user7)
        membersOfConversation1.append(user8)
        //khoi tao du lieu danh sach thanh vien cuoc hoi thoai 2
        membersOfConversation2.append(user1)
        membersOfConversation2.append(user9)
        //khoi tao du lieu danh sach thanh vien cuoc hoi thoai 3
        membersOfConversation3.append(user1)
        membersOfConversation3.append(user10)
        //khoi tao du lieu danh sach thanh vien cuoc hoi thoai 4
        membersOfConversation4.append(user1)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let messagesConversationVC = self.storyboard!.instantiateViewController(withIdentifier: "ConversationMessageViewController") as! ConversationMessageViewController
        // khoi tao ra man hinh messagesConversationVC
        messagesConversationVC.messages = conversations[indexPath.row].messages
        // do du lieu mang messages cua man hinh messagesConversationVC = du lieu messages cua cuoc hoi thoai khi cham.(touch) vao
        show(messagesConversationVC, sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversations.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblConversations.dequeueReusableCell(withIdentifier:"ConversationCellIndentifier")!
        
        let lblConversationName = cell.viewWithTag(101) as! UILabel
        lblConversationName.text = conversations[indexPath.row].name
        
        let imgAvtConversations = cell.viewWithTag(200) as! UIImageView
        imgAvtConversations.image = UIImage(named: "default.png")
        imgAvtConversations.layer.cornerRadius = 30

        return cell
    }
}


