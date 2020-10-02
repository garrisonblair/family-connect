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
                .padding(.top)
            RatingView(rating: profile.rating)
            ScrollView {
                LazyVStack(content: {
                    ProfileInformation(profile: profile)
                        .framedStyle()
                        .padding(.bottom)
                    ServiceDescription(services: profile.services)
                    
                    AboutProfileView(firstName: profile.firstName, description: profile.description)
                        .framedStyle()
                        .padding(.top)
                    Divider()
                        .background(Color("appBackground"))
                    Text("Commentaires")
                        .font(.title)
                        .fontWeight(.bold)
                    ForEach(0...profile.ratings.count-1, id: \.self) { count in
                        RatingCommentRow(rating: profile.ratings[count])
                            .framedStyle()
                            .padding(.top)
                    }
                })
            }
        }
        .padding(.horizontal)
    }
}

extension View {
    func framedStyle(color: Color = Color("appBackground")) -> some View {
        self.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .padding(.all)
            .background(color)
            .cornerRadius(20.0)

    }
}

struct MatchProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MatchProfileView(profile: profiles[0])
    }
}
