import SwiftUI

struct ProfileImage: View {
    let imageName: String
    var size: CGFloat = 175
    var radius: CGFloat {
        size / 4
    }
    var stroke: CGFloat {
        size / 50
    }
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    init(imageName: String, size: CGFloat) {
        self.imageName = imageName
        self.size = size
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .overlay(RoundedRectangle(cornerRadius: radius)
            .stroke(Color("appOrange"), lineWidth: stroke))
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(imageName: profiles[0].imageName)
    }
}
