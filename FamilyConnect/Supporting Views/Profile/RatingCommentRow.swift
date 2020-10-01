//
//  RatingCommentRow.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct RatingCommentRow: View {
    let rating: Rating
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Commentaire de " + rating.commenter + ":")
                .font(.headline)
                .padding(.bottom)
            Text(rating.comment)
        }
    }
}

struct RatingCommentRow_Previews: PreviewProvider {
    static var previews: some View {
        RatingCommentRow(rating: rating1)
    }
}
