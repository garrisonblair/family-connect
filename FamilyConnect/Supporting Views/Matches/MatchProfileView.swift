import SwiftUI

struct MatchProfileView: View {
    @State var showComments: Bool = false
    
    let profile: Profile
    let isAidant: Bool
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(content: {
                    ProfileInformation(profile: profile)
                        .framedStyle()
                        .padding(.bottom)
                    
                    Text(isAidant ? "Je propose :" : "Je recherche :")
                        .foregroundColor(.gray)
                    
                    ServiceDescription(services: profile.getServices())
                    
                    AboutProfileView(firstName: profile.firstName, description: profile.description)
                        .framedStyle()
                        .padding(.top)
                    Divider()
                        .background(Color("appBackground"))
                    Text("Les avis")
                        .font(.title)
                        .fontWeight(.bold)
                    if profile.ratings.count > 0 {
                        if profile.ratings[0].comment != "" {
                            RatingCommentRow(rating: profile.ratings[0])
                                .framedStyle()
                                .padding(.top)
                        }
                        if profile.ratings.count > 1 {
                            if profile.ratings[1].comment != "" {
                                RatingCommentRow(rating: profile.ratings[1])
                                    .framedStyle()
                                    .padding(.top)
                            }
                        }
                        Button(action: {self.showComments.toggle()}, label: {
                            Text("Voir tous les avis")
                                .foregroundColor(Color("appOrange"))
                                .padding()
                        })
                        .padding(.bottom, 40.0)
                    } else {
                        Text("Il n'y a pas d'avis a ce moment")
                            .padding(.bottom, 40.0)
                    }
                })
            }
            .sheet(isPresented: $showComments, content: {
                VStack {
                    HStack {
                        Text("Les avis")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {self.showComments.toggle()}, label: {
                            Text("Terminé")
                                .foregroundColor(Color("appOrange"))
                        })
                    }
                    .padding()
                    Divider()
                    ScrollView {
                        ForEach(0...profile.ratings.count-1, id: \.self) { count in
                            if profile.ratings[count].comment != "" {
                                RatingCommentRow(rating: profile.ratings[count])
                                    .framedStyle()
                                    .padding(.top)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
            })
        }
        .padding(.horizontal)
    }
}

extension View {
    func framedStyle(color: Color = Color("appBackground")) -> some View {
        self.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .padding(.all)
            .background(color)
            .cornerRadius(20.0)
        
    }
}

struct MatchProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MatchProfileView(profile: profiles[0], isAidant: true)
    }
}
