//
//  Message.swift
//  ChatApp
//
//  Created by Dyobi on 4/21/22.
//

import Foundation

struct Message: Identifiable, Codable {
    
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
    
}
