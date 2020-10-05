//
//  FamilyPortrait.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-02.
//

import SwiftUI

struct FamilyPortrait: View {
    let family: Family
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ProfileImage(imageName: family.aidant.imageName)
                    Text(family.aidant.firstName)
                        .font(.headline)
                }
                Spacer()
                VStack {
                    ProfileImage(imageName: family.aide.imageName)
                    Text(family.aide.firstName)
                        .font(.headline)
                }
            }
            Text("Famille \(family.familyName)")
                .font(.largeTitle)
        }
        .padding(.all)
        .background(Color("appBackground"))
        .cornerRadius(50)
    }
}

struct FamilyPortrait_Previews: PreviewProvider {
    static var previews: some View {
        FamilyPortrait(family: families[0])
    }
}
