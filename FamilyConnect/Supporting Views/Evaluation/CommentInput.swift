import SwiftUI

struct CommentInput: View {
    @Binding var comment: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Commentaire:")
                .font(.title)
            TextEditor(text: $comment)
                .frame(minHeight: 150, idealHeight: 250)
                .cornerRadius(25)
                .padding([.leading, .bottom, .trailing])
        }
        .background(Color("appBackground"))
        .cornerRadius(50)
        .padding(.top)
    }
}

struct CommentInput_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
    }
    struct PreviewWrapper: View {
        @State(initialValue: "") var comment: String
        
        var body: some View {
            CommentInput(comment: $comment)
        }
    }
}
