//
//  MatchDetailView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct MatchDetailView: View {
    @State var selection = 0
    @State var showMessageView: Bool = false
    var sizeAidant: CGFloat {
        get {
            if selection == 0 {
                return 175.0
            } else {
                return 50.0
            }
        }
    }
    var sizeAide: CGFloat {
        get {
            if selection == 1 {
                return 175.0
            } else {
                return 75.0
            }
        }
    }
    
    let family: Family
    var title: String {
        get {
            return selection == 0 ? "Personne Aidante" : "Personne Aidée"
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ProfileImage(imageName: family.aidant.imageName, size: sizeAidant)
                    .padding(.top)
                    .animation(.default)
                    .onTapGesture(count: 1, perform: {
                        selection = 0
                    })
                ProfileImage(imageName: family.aide.imageName, size: sizeAide)
                    .padding(.top)
                    .animation(.default)
                    .onTapGesture(count: 1, perform: {
                        selection = 1
                    })
            }
            RatingView(rating: selection == 0 ? family.aidant.rating : family.aide.rating)
            TabView(selection:$selection) {
                MatchProfileView(profile: family.aidant)
                    .tabItem {
                        Text("Aidant")
                        Image(systemName: "circle.fill")
                            .foregroundColor(selection == 0 ? Color("appOrange") : .gray)
                    }
                    .tag(0)
                MatchProfileView(profile: family.aide)
                    .tabItem {
                        Text("Aide")
                        Image(systemName: "circle.fill")
                    }
                    .tag(1)
            }
            .sheet(isPresented: $showMessageView, content: {
                NavigationView {
                    ChatView(conversation: getConversation(with: family), showMessageView: $showMessageView)
                }
            })
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                selection == 0 ? self.showMessageView.toggle() : nil
            }, label: {
                Text("Contacter")
                    .foregroundColor(selection == 0 ? Color("appOrange") : .gray)
            }))
        }
    }
}

func getConversation(with family: Family) -> Conversation {
    var conversation: Conversation?
    for item in conversations {
        if item.matchedFamily.aidant.id == family.aidant.id {
            conversation = item
            break
        }
    }
    if conversation == nil {
        conversation = Conversation(matchedFamily: family, messages: [])
        conversations.append(conversation!)
    }
    return conversation!
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(family: families[0])
    }
}
