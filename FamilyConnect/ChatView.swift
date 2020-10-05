//
//  ChatView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct ChatView: View {
    @State var typingMessage: String = ""
    @State var conversation: Conversation
    @State var showEvaluationView: Bool = false
    @State var grade: Int = 0
    @State var comment: String = ""
    @Binding var showMessageView: Bool
    @State var showEvaluation: Bool = true
    
    var body: some View {
        ZStack {
            Color("appBackground").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ScrollView {
                    LazyVStack(content: {
                        if conversation.messages.count != 0 {
                            ForEach(0...conversation.messages.count-1, id: \.self) { count in
                                MessageView(message: conversation.messages[count])
                                    .padding(.horizontal)
                            }
                        }
                    })
                }
                HStack {
                    TextField("Message...", text: $typingMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(minHeight: 30)
                    Button(action: {
                        if typingMessage != "" {
                            let message = Message(sender: currentUser, timestamp: Date(), message: typingMessage)
                            
                            conversation.messages.append(message)
                            typingMessage = ""
                        }
                        UIApplication.shared.endEditing()
                    }) {
                        Text("Send")
                    }
                }
                .frame(minHeight: CGFloat(50)).padding()
            }
        }
        .sheet(isPresented: $showEvaluationView, content: {
            NavigationView {
                EvaluationView(showEvaluationView: $showEvaluationView, grade: $grade, comment: $comment, family: conversation.matchedFamily)
            }
        })
        .navigationBarTitle("\(conversation.matchedFamily.aidant.firstName) \(conversation.matchedFamily.aidant.lastName)", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            if showMessageView {
                self.showEvaluation = false
                self.showMessageView.toggle()
            } else if (!showMessageView && showEvaluation) {
                self.showEvaluationView.toggle()
            }
        }, label: {
            if showMessageView {
                Text("Done").foregroundColor(Color("appOrange"))
            } else if (!showMessageView && showEvaluation) {
                Text("Evaluer").foregroundColor(Color("appOrange"))
            }
        }))
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
    }
    
    struct PreviewWrapper: View {
        @State(initialValue: false) var showMessageView: Bool
        
        var body: some View {
            ChatView(conversation: conversations[0], showMessageView: $showMessageView)
        }
    }
}
