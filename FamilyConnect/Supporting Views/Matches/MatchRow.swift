import SwiftUI

struct MatchRow: View {
    let family: Family
    var services: [Service] {
        get {
            family.aidant.getServices()
        }
    }
    
    var body: some View {
        HStack {
            ProfileImage(imageName: family.aidant.imageName)
            VStack {
                Text(family.familyName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("appOrange"))
                HStack {
                    services.count > 0 ? ServiceIcon(services[0]) : ServiceIcon()
                    services.count > 1 ? ServiceIcon(services[1]) : ServiceIcon()
                }
                HStack {
                    services.count > 2 ? ServiceIcon(services[2]) : ServiceIcon()
                    services.count > 3 ? ServiceIcon(services[3]) : ServiceIcon()
                }
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: 175)
            Image(systemName: "chevron.right")
                .foregroundColor(Color("appOrange"))
        }
        .padding(.all)
    }
}

struct MatchRow_Previews: PreviewProvider {
    static var previews: some View {
        MatchRow(family: families[0])
    }
}
