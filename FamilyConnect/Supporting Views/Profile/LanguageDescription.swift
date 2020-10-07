import SwiftUI

struct LanguageDescription: View {
    let languages: [Language]
    
    var body: some View {
        HStack {
            ForEach(0...languages.count-1, id: \.self) { count in
                Text("\(languages[count].image) \(languages[count].name)")
                if count != languages.count - 1 {
                    Divider()
                        .background(Color("appBackground"))
                        .frame(maxHeight: 50)
                }
            }
        }
        .padding(.top, languages.count == 1 ? 5.0 : 0.0)
    }
}

struct LanguageDescription_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDescription(languages: [french, english])
    }
}
