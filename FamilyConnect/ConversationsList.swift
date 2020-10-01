//
//  ConversationsList.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct ConversationsList: View {
    var conversations: [Conversation]
    
    var body: some View {
        NavigationView {
            List {
                if !conversations.isEmpty {
                    ForEach(0...conversations.count-1, id: \.self) { count in
                        NavigationLink(
                            destination: ChatView(conversation: conversations[count]),
                            label: {
                                ConversationRow(conversation: conversations[count])
                            })
                    }
                    .onDelete(perform: deleteItems)
                }
            }
            .navigationBarTitle("Conversations")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

func deleteItems(at offsets: IndexSet) {
    conversations.remove(atOffsets: offsets)
}

struct ConversationsList_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsList(conversations: conversations)
    }
}
