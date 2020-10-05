import SwiftUI

struct GradeInput: View {
    @Binding var grade: Int
    
    var body: some View {
        HStack {
            Button(action: {
                self.grade = self.grade == 1 ? 0 : 1
            }, label: {
                Image(systemName: grade > 0 ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
            Button(action: {
                self.grade = 2
            }, label: {
                Image(systemName: grade > 1 ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
            Button(action: {
                self.grade = 3
            }, label: {
                Image(systemName: grade > 2 ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
            Button(action: {
                self.grade = 4
            }, label: {
                Image(systemName: grade > 3 ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
            Button(action: {
                self.grade = 5
            }, label: {
                Image(systemName: grade > 4 ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 40, height: 40)
            })
        }
        .padding(.vertical)
        .foregroundColor(Color("appOrange"))
    }
}

struct GradeInput_Previews: PreviewProvider {
    static var previews: some View {
        PreviewWrapper()
    }
    struct PreviewWrapper: View {
        @State(initialValue: 0) var grade: Int
        
        var body: some View {
            GradeInput(grade: $grade)
        }
    }
}
