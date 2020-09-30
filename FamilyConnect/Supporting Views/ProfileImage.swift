//
//  ProfileImage.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

struct ProfileImage: View {
    let imageName: String
    var size: CGFloat = 175
    var radius: CGFloat {
        size / 4
    }
    var stroke: CGFloat {
        size / 35
    }
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    init(imageName: String, size: CGFloat) {
        self.imageName = imageName
        self.size = size
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .shadow(radius: 10)
            .overlay(RoundedRectangle(cornerRadius: radius)
            .stroke(Color("appOrange"), lineWidth: stroke))
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(imageName: profiles[0].imageName)
    }
}
