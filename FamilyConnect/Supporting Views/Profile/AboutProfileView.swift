//
//  AboutProfileView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct AboutProfileView: View {
    let firstName: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("A propos de " + firstName + ":")
                .font(.headline)
                .padding(.bottom)
            Text(description)
        }
    }
}

struct AboutProfileView_Previews: PreviewProvider {
    static var previews: some View {
        AboutProfileView(firstName: "Chris", description: "Le 26/09/2020 à 14:38, ce correspondant a cherché à vous joindre 1 fois sans laisser de message.Le 26/09/2020 à 14:38, ce correspondant a cherché à vous joindre 1 fois sans laisser de message.")
    }
}
