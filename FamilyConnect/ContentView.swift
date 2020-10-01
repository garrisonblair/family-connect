//
//  ContentView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        TabView(selection:$selection) {
            MatchesView(matches: families)
                .tabItem {
                    Text("Matches")
                    Image(systemName: "link")
                }
                .tag(0)
            Text("Profil")
                .tabItem {
                    Text("Profils")
                    Image(systemName: "person.2.fill")
                }
                .tag(1)
            ChatView(conversation: conversation)
                .tabItem {
                    Text("Conversations")
                    Image(systemName: "bubble.left.fill")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
