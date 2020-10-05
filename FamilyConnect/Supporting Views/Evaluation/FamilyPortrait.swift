import SwiftUI

struct FamilyPortrait: View {
    let family: Family
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ProfileImage(imageName: family.aidant.imageName, size: 150)
                    Text(family.aidant.firstName)
                        .font(.headline)
                }
                Spacer()
                VStack {
                    ProfileImage(imageName: family.aide.imageName, size: 150)
                    Text(family.aide.firstName)
                        .font(.headline)
                }
            }
            .padding(.bottom, 3.0)
            Text("Famille \(family.familyName)")
                .font(.largeTitle)
        }
        .padding(.all)
        .cornerRadius(50)
    }
}

struct FamilyPortrait_Previews: PreviewProvider {
    static var previews: some View {
        FamilyPortrait(family: families[0])
    }
}
