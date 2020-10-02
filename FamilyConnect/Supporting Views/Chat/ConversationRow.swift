//
//  ConversationRow.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct ConversationRow: View {
    let conversation: Conversation
    
    var body: some View {
        HStack {
            ProfileImage(imageName: conversation.matchedFamily.aidant.imageName, size: 75)
            VStack(alignment: .leading) {
                Text(conversation.matchedFamily.aidant.firstName + " " + conversation.matchedFamily.aidant.lastName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("appOrange"))
                Text(conversation.messages.last?.message ?? "")
                    .frame(maxWidth: 275, maxHeight: 75)
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

struct ConversationRow_Previews: PreviewProvider {
    static var previews: some View {
        ConversationRow(conversation: conversations[0])
    }
}
