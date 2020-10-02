//
//  EvaluationView.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-02.
//

import SwiftUI

struct EvaluationView: View {
    @Binding var showEvaluationView: Bool
    @Binding var grade: Int
    @Binding var comment: String
    @State var family: Family
    
    func saveEvaluation(grade: Int, comment: String) {
        let rating = Rating(commenter: currentUser.firstName, comment: comment, grade: Double(grade))
        self.family.aidant.ratings.append(rating)
    }
    
    var body: some View {
        VStack {
            FamilyPortrait(family: family)
            GradeInput(grade: $grade)
            CommentInput(comment: $comment)
        }
        .navigationBarTitle("Evaluation")
        .navigationBarItems(leading: Button(action: {
            self.grade = 0
            self.comment = ""
            self.showEvaluationView.toggle()
        }, label: {
            Text("Annuler")
                .foregroundColor(Color("appOrange"))
        }), trailing: Button(action: {
            saveEvaluation(grade: self.grade, comment: self.comment)
            self.showEvaluationView.toggle()
        }, label: {
            Text("Confirmer")
                .foregroundColor(Color("appOrange"))
        }))
        .padding()
    }
}

struct EvaluationView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
    }
    
    struct PreviewWrapper: View {
        @State(initialValue: 0) var grade: Int
        @State(initialValue: "") var comment: String
        @State(initialValue: true) var showEvaluationView: Bool
        
        var body: some View {
            EvaluationView(showEvaluationView: $showEvaluationView, grade: $grade, comment: $comment, family: families[0])
        }
    }
}

struct CommentInput: View {
    @Binding var comment: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Commentaire:")
                .font(.title)
            TextEditor(text: $comment)
                .cornerRadius(25)
                .padding([.leading, .bottom, .trailing])
        }
        .background(Color("appBackground"))
        .cornerRadius(50)
        .padding(.top)
    }
}
