import SwiftUI

struct CommentInput: View {
    @Binding var comment: String
    
    init(comment: Binding<String>) {
        self._comment = comment
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Commentaire:")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading, 30.0)
                .padding(.top, 15.0)
            TextEditor(text: $comment)
                .frame(minHeight: 150, idealHeight: 250)
                .background(Color("appBackground"))
                .cornerRadius(25)
                .padding([.leading, .bottom, .trailing], 25.0)
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
