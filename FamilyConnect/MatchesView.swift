//
//  MatchesView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct MatchesView: View {
    let matches: [Family]
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationView {
                ScrollView {
                    LazyVStack(content: {
                        ForEach(0...matches.count-1, id: \.self) { count in
                            NavigationLink(destination: MatchDetailView(family: matches[count])) {
                                MatchRow(family: matches[count])
                            }
                            Divider()
                                .background(/*@START_MENU_TOKEN@*/Color("appBackground")/*@END_MENU_TOKEN@*/)
                        }
                    })
                }
                .navigationTitle("Matchs")
            }
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView(matches: families)
    }
}
