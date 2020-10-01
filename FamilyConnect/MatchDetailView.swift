//
//  MatchDetailView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct MatchDetailView: View {
    @State var selection = 0
    let family: Family
    
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
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(family: families[0])
    }
}
