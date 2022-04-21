//
//  ContentView.swift
//  ChatApp
//
//  Created by Dyobi on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                TitleRow()
                
                ScrollViewReader { proxy in
                    
                    ScrollView {
                        
                        ForEach(messagesManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                        
                    } // ScrollView
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                    
                } // ScrollViewReader
                
            } // VStack
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
            
        } // VStack
        
    } // body
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
