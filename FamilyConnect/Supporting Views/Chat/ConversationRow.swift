import SwiftUI

struct ConversationRow: View {
    let conversation: Conversation
    
    var body: some View {
        HStack {
            ProfileImage(imageName: conversation.matchedFamily.aidant.imageName, size: 75)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(conversation.matchedFamily.aidant.firstName + " " + conversation.matchedFamily.aidant.lastName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("appOrange"))
                HStack {
                    Text(conversation.messages.last?.message ?? "")
                        .frame(maxWidth: 275, maxHeight: 75, alignment: .leading)
                }
            }
        }
    }
}

struct ConversationRow_Previews: PreviewProvider {
    static var previews: some View {
        ConversationRow(conversation: conversations[0])
    }
}
