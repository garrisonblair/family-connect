//
//  ChatView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct ChatView: View {
    var conversation: Conversation
    
    var body: some View {
        ZStack {
            Color("appBackground").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView {
                LazyVStack(content: {
                    ForEach(0...conversation.messages.count-1, id: \.self) { count in
                        MessageView(message: conversation.messages[count])
                            .padding(.trailing)
                    }
                })
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(conversation: conversation)
    }
}
