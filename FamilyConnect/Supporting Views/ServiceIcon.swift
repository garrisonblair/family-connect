import SwiftUI

struct ServiceIcon: View {
    let service: Service?
    var size: CGFloat = 60
    
    init() {
        self.service = nil
    }
    
    init(_ service: Service) {
        self.service = service
    }
    
    init(_ service: Service, size: CGFloat) {
        self.size = size
        self.service = service
    }
    
    var body: some View {
        ZStack {
            if let unwrappedService = service {
                Image(systemName: unwrappedService.iconName)
                    .resizable()
                    .scaledToFit()
                    .padding(.all)
                    .frame(width: size, height: size)
                    .background(unwrappedService.iconColor)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            } else {
                Image(systemName: car.iconName)
                    .resizable()
                    .scaledToFit()
                    .padding(.all)
                    .frame(width: size, height: size)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .opacity(0.0)
            }
        }
        .frame(width: size, height: size)
    }
}

struct ServiceIcon_Previews: PreviewProvider {
    static var previews: some View {
        ServiceIcon(clean)
    }
}
