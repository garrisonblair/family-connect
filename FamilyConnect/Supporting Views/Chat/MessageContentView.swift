//
//  MessageContentView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct MessageContentView: View {
    let message: Message
    
    var body: some View {
        VStack() {
            Text(message.message)
                .padding(.all, 10.0)
                .foregroundColor(.white)
                .background(isSameUser(message.sender, and: currentUser) ? Color("appOrange") : .gray)
                .cornerRadius(10.0)
                .frame(minWidth: 10, maxWidth: 300, minHeight: 0, alignment: isSameUser(message.sender, and: currentUser) ? .trailing : .leading)
        }
    }
}

func getFormattedTime(from date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    
    return dateFormatter.string(from: date)
}

func isSameUser(_ profile1: Profile, and profile2: Profile) -> Bool {
    return profile1.id == profile2.id
}

struct MessageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MessageContentView(message: messages1[1])
    }
}
