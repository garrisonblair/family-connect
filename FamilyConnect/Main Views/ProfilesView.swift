import SwiftUI

struct ProfilesView: View {
    @State var selection = 0
    var family: Family
    
    var sizeAidant: CGFloat {
        get {
            if selection == 0 {
                return 175.0
            } else {
                return 75.0
            }
        }
    }
    var sizeAide: CGFloat {
        get {
            if selection == 1 {
                return 175.0
            } else {
                return 75.0
            }
        }
    }
    
    var body: some View {
        ZStack {
            Color("appleGray").ignoresSafeArea()
            VStack {
                HStack {
                    ProfileImage(imageName: family.aidant.imageName, size: sizeAidant)
                        .padding(.top)
                        .animation(.default)
                        .onTapGesture(count: 1, perform: {
                            selection = 0
                        })
                    ProfileImage(imageName: family.aide.imageName, size: sizeAide)
                        .padding(.top)
                        .animation(.default)
                        .onTapGesture(count: 1, perform: {
                            selection = 1
                        })
                }
                NavigationView {
//                    TabView(selection:$selection) {
                        ProfileFormView(profile: family.aidant)
//                            .tabItem {
//                                Text("L'Aidant(e)")
//                                Image(systemName: "circle.fill")
//                            }
//                            .tag(0)
//                        ProfileFormView(profile: family.aide)
//                            .tabItem {
//                                Text("L'Aidé(e)")
//                                Image(systemName: "circle.fill")
//                            }
//                            .tag(1)
//                    }
//                    .tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                }
            }
        }
    }
}

struct ProfilesView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilesView(family: families[0])
            .preferredColorScheme(.light)
    }
}
