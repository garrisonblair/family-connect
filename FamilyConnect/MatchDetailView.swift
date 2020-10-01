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
    
    let family: Family
    var title: String {
        get {
            return selection == 0 ? "Personne Aidante" : "Personne Aidée"
        }
    }
    
    var body: some View {
        TabView(selection:$selection) {
            MatchProfileView(profile: family.aidant)
                .tabItem {
                    Text("Aidant")
                    Image(systemName: "person.crop.circle.fill")
                        .foregroundColor(selection == 0 ? Color("appOrange") : .gray)
                }
                .tag(0)
            MatchProfileView(profile: family.aide)
                .tabItem {
                    Text("Aide")
                    Image(systemName: "person.crop.circle.fill")
                }
                .tag(1)
        }
        .sheet(isPresented: $showMessageView, content: {
            HStack{
                Text("\(family.aidant.firstName) \(family.aidant.lastName)")
                    .font(.title2)
                Spacer()
                Button(action: {
                    self.showMessageView.toggle()
                }, label: {
                    Text("Done")
                })
            }
            .padding()
            .background(Color.white)
            ChatView(conversation: getConversation(with: family.aidant))
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

func getConversation(with profile: Profile) -> Conversation {
    var conversation: Conversation?
    for item in conversations {
        if item.matchedProfile.id == profile.id {
            conversation = item
            break
        }
    }
    if conversation == nil {
        conversation = Conversation(matchedProfile: profile, messages: [])
        conversations.append(conversation!)
    }
    return conversation!
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(family: families[0])
    }
}
