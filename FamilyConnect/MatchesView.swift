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
                List(matches) { match in
                    NavigationLink(destination: MatchRow(family: match)) {
                        MatchRow(family: match)
                            .padding(.vertical)
                    }
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
