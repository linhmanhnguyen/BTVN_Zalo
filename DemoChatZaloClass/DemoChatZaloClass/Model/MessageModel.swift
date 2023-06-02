//
//  MessageModel.swift
//  DemoChatZaloClass
//
//  Created by Nguyễn Mạnh Linh on 22/05/2023.
//

import Foundation

class Message{
    var id: Int = 0
    var content: String = ""
    var senderID: Int = 0
    var conversationID: Int = 0
    var timeMessage: String = ""
    var status: String = ""
    
    init(id: Int, content: String, senderID: Int, conversationID: Int, timeMessage: String, status: String) {
        self.id = id
        self.content = content
        self.senderID = senderID
        self.conversationID = conversationID
        self.timeMessage = timeMessage
        self.status = status
    }
}
