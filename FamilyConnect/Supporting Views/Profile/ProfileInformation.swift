import SwiftUI

struct ProfileInformation: View {
    let profile: Profile
    
    var body: some View {
        VStack {
            HStack {
                Text(profile.firstName)
                    .font(.title)
                Text(profile.lastName)
                    .font(.title)
            }
            Text("\(profile.age) ans")
            Text(profile.city)
            LanguageDescription(languages: profile.getLanguages())
        }
    }
}

struct ProfileInformation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInformation(profile: profiles[0])
    }
}
