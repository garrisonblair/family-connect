//
//  ProfileImage.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct ProfileImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 175, height: 175)
            .clipShape(RoundedRectangle(cornerRadius: 45.0))
            .shadow(radius: 10)
            .overlay(RoundedRectangle(cornerRadius: 45.0)
            .stroke(Color("appOrange"), lineWidth: 5))
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(imageName: profiles[0].imageName)
    }
}
