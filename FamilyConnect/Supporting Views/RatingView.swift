//
//  RatingView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct RatingView: View {
    let rating: Double
    
    var body: some View {
        HStack {
            Image(systemName: rating > 0.8 ? "heart.fill" : "heart")
            Image(systemName: rating > 1.8 ? "heart.fill" : "heart")
            Image(systemName: rating > 2.8 ? "heart.fill" : "heart")
            Image(systemName: rating > 3.8 ? "heart.fill" : "heart")
            Image(systemName: rating > 4.8 ? "heart.fill" : "heart")
        }
        .foregroundColor(Color("appOrange"))
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3.9)
    }
}
