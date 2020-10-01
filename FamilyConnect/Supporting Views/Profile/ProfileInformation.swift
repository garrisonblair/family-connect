//
//  ProfileInformation.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct ProfileInformation: View {
    let profile: Profile
    
    var body: some View {
        VStack {
            HStack {
                Text(profile.firstName)
                Text(profile.lastName)
            }
            Text("\(profile.age)")
            Text(profile.city)
            LanguageDescription(languages: profile.languages)
        }
    }
}

struct ProfileInformation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInformation(profile: profiles[0])
    }
}
