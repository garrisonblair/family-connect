//
//  MatchProfileView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct MatchProfileView: View {
    let profile: Profile
    
    var body: some View {
        VStack {
            ProfileImage(imageName: profile.imageName)
            Text(profile.firstName)
        }
    }
}

struct MatchProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MatchProfileView(profile: profiles[0])
    }
}
