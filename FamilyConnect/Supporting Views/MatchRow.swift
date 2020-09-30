//
//  MatchRow.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct MatchRow: View {
    let family: Family
    
    var body: some View {
        HStack {
            ProfileImage(imageName: family.aidant.imageName)
            VStack {
                Text(family.familyName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("appOrange")/*@END_MENU_TOKEN@*/)
                HStack {
                    family.aidant.services.count > 0 ? ServiceIcon(family.aidant.services[0]) : ServiceIcon()
                    family.aidant.services.count > 1 ? ServiceIcon(family.aidant.services[1]) : ServiceIcon()
                }
                HStack {
                    family.aidant.services.count > 2 ? ServiceIcon(family.aidant.services[2]) : ServiceIcon()
                    family.aidant.services.count > 3 ? ServiceIcon(family.aidant.services[3]) : ServiceIcon()
                }
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: 175)
            }
    }
}

struct MatchRow_Previews: PreviewProvider {
    static var previews: some View {
        MatchRow(family: families[0])
    }
}
