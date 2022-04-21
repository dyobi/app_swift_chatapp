//
//  MessageBubble.swift
//  ChatApp
//
//  Created by Dyobi on 4/21/22.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    @State private var showTime: Bool = false
    
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            
            HStack {
                
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
                
            } // HStack
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
            
        } // VStack
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
        
    } // body
    
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "I've been coding SwiftUI application from scratch and it's so much fun!", received: true, timestamp: Date()))
    }
}
