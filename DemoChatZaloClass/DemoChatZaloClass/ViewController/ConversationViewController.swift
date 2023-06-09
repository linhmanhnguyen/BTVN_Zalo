//
//  ConversationViewController.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 22/05/2023.
//

import UIKit

class ConversationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tblConversations: UITableView!
    @IBOutlet weak var textSearch: UITextField!
    var conversations: [Conversation] = []
    var filterData: [Conversation]!
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
        let message1OfConversation1 = Message(id: 1, content: "Alo mn oi", senderID: 1, conversationID: 1, timeMessage: "20h20", status: "Thanh cong")
        let message2OfConversation1 = Message(id: 2, content: "Toi nay hoc 20h30 nhe", senderID: 6, conversationID: 1, timeMessage: "20h20", status: "Thanh cong")
        let message3OfConversation1 = Message(id: 3, content: "Hello", senderID: 5, conversationID: 1, timeMessage: "20h20", status: "Thanh Công")
        let message4OfConversation1 = Message(id: 4, content: "Lớp làm xong phần ảnh rồi mí nghỉ nhé", senderID: 8, conversationID: 1, timeMessage: "0h00", status: "thành công")
        let message5OfConversation1 = Message(id: 5, content: "Hahahahahahahahahaha", senderID: 11, conversationID: 1, timeMessage: "00h00", status: "Thanh cong")
        messagesOfConversation1.append(message1OfConversation1)
        messagesOfConversation1.append(message2OfConversation1)
        messagesOfConversation1.append(message3OfConversation1)
        messagesOfConversation1.append(message4OfConversation1)
        messagesOfConversation1.append(message5OfConversation1)
        let conversation1 = Conversation(id: 1, name: "K17-VietDevelopers", members: [], messages: messagesOfConversation1, managers: [])
        
        var messagesOfConversation2: [Message] = []
        let message1OfConversation2 = Message(id: 1, content: "Alo lớp trưởng ơi", senderID: 1, conversationID: 2, timeMessage: "19h", status: "Thanh Cong")
        let message2OfConversation2 = Message(id: 2, content: "Mọi người nhớ đăng kí học phần nhé", senderID: 3, conversationID: 2, timeMessage: "20h", status: "Thành Công")
        let message3OfConversation2 = Message(id: 3, content: "Cả lớp thi tốt", senderID: 8, conversationID: 2, timeMessage: "00h00", status: "Thành Công")
        messagesOfConversation2.append(message1OfConversation2)
        messagesOfConversation2.append(message2OfConversation2)
        messagesOfConversation2.append(message3OfConversation2)
        let conversation2 = Conversation(id: 2, name: "CNTT3-K15-HAUI", members: [], messages: messagesOfConversation2, managers: [])
        
        var messagesOfConversation3: [Message] = []
        let message1OfConversation3 = Message(id: 1, content: "Mọi người nhớ hoàn thành bài tập trong tối nay nhé", senderID: 1, conversationID: 3, timeMessage: "14h", status: "Thành Công")
        messagesOfConversation3.append(message1OfConversation3)
        let conversation3 = Conversation(id: 3, name: "Lingostar", members: [], messages: messagesOfConversation3, managers: [])
        
        var messagesOfConversation4: [Message] = []
        let message1OfConversation4 = Message(id: 1, content: "AAAAA", senderID: 1, conversationID: 4, timeMessage: "19h", status: "Thanh Cong")
        let message2OfConversation4 = Message(id: 2, content: "BBBBBBB", senderID: 1, conversationID: 4, timeMessage: "20h", status: "Thành Công")
        let message3OfConversation4 = Message(id: 3, content: "CCCCC", senderID: 1, conversationID: 4, timeMessage: "00h00", status: "Thành Công")
        messagesOfConversation4.append(message1OfConversation4)
        messagesOfConversation4.append(message2OfConversation4)
        messagesOfConversation4.append(message3OfConversation4)
        let conversation4 = Conversation(id: 4, name: "Cloud", members: [], messages: messagesOfConversation4, managers: [])
        
        conversations.append(conversation1)
        conversations.append(conversation2)
        conversations.append(conversation3)
        conversations.append(conversation4)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let messagesConversationVC = self.storyboard!.instantiateViewController(withIdentifier: "ConversationMessageViewController") as! ConversationMessageViewController
        // khoi tao ra man hinh messagesConversationVC
        messagesConversationVC.messages = conversations[indexPath.row].messages
        // do du lieu mang messages cua man hinh messagesConversationVC = du lieu messages cua cuoc hoi thoai khi cham.(touch) vao
        show(messagesConversationVC, sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if textSearch.text == ""{
            return conversations.count
        }else{
            return conversationIsSearched.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var currentConversation: Conversation
        let cell = tblConversations.dequeueReusableCell(withIdentifier:"ConversationCellIndentifier")!
        
        if (isSearched){
            currentConversation = conversationIsSearched[indexPath.row]
        }else{
            currentConversation = conversations[indexPath.row]
        }
        
        let lblConversationName = cell.viewWithTag(101) as! UILabel
        lblConversationName.text = currentConversation.name
        
        let imgAvtConversations = cell.viewWithTag(200) as! UIImageView
        imgAvtConversations.image = UIImage(named: "default.png")
        imgAvtConversations.layer.cornerRadius = 30

        return cell
    }
    
    // Tim kiem
    var conversationIsSearched: [Conversation] = []
    var isSearched: Bool = false
    let lblKhongTimThayLienHe = UILabel(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
    @IBAction func btnSearchConversation(_ sender: UIButton) {
        search()
    }
    func search(){
        let nameConversation: String = textSearch.text!
        conversationIsSearched = []
        if nameConversation != ""{
            isSearched = true
            for check in conversations {
                if check.name.lowercased().contains(nameConversation.lowercased()){
                    conversationIsSearched.append(check)
                }
                if conversationIsSearched.count == 0 {
                    lblKhongTimThayLienHe.isHidden = false
                    tblConversations.isHidden = true
                }
                else {
                    lblKhongTimThayLienHe.isHidden = true
                    tblConversations.isHidden = false
                }
            }
        }else{
            conversationIsSearched = conversations
            isSearched = false
            lblKhongTimThayLienHe.isHidden = true
        }
        tblConversations.reloadData()
    }
    // Xoa nhom chat bang thao tac vuot
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        conversations.remove(at: indexPath.row)
        tblConversations.reloadData()
    }
}





