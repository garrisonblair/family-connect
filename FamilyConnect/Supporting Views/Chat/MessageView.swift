//
//  MessageView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack(alignment: .bottom) {
            if !isSameUser(message.sender, and: currentUser) {
                ProfileImage(imageName: message.sender.imageName, size: 60)
            } else {
                Spacer()
            }
            MessageContentView(message: message)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: messages1[2])
    }
}
