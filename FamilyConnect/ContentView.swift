import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        TabView(selection:$selection) {
            MatchesView(matches: families)
                .tabItem {
                    Text("Matchs")
                    Image(systemName: "link")
                }
                .tag(0)
            ProfilesView(family: currentFamily)
                .tabItem {
                    Text("Profils")
                    Image(systemName: "person.2.fill")
                }
                .tag(1)
            ConversationsList(conversations: conversations)
                .tabItem {
                    Text("Conversations")
                    Image(systemName: "bubble.left.fill")
                }
                .tag(2)
        }
        .accentColor(Color("appOrange"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
