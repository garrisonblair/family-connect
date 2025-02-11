import SwiftUI

struct Service {
    let iconName: String
    let iconColor: Color
    let description: String
}

struct Language {
    let name: String
    let image: String // emoji drapeau ?
}

struct Rating {
    var commenter: String
    var comment: String
    var grade: Double
}

struct Profile: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var imageName: String
    var city: String
    var birthDate: Date
    var age: Int
    var languages: [String: Language]
    var description: String
    var services: [String: Service]
    var ratings: [Rating]
    var rating: Double {
        get {
            var total = 0.0
            for item in ratings {
                total += item.grade
            }
            return total / Double(ratings.count)
        }
    }
    
    init(firstName: String, lastName: String, imageName: String, city: String, birthDate: Date, age: Int, languages: [String: Language], description: String, services: [String: Service], ratings: [Rating]) {
        self.firstName = firstName
        self.lastName = lastName
        self.imageName = imageName
        self.city = city
        self.birthDate = birthDate
        self.age = age
        self.languages = languages
        self.description = description
        self.services = services
        self.ratings = ratings
    }
    
    func getServices() -> [Service] {
        var serviceArray:[Service] = []
        for service in services {
            serviceArray.append(service.value)
        }
        return serviceArray
    }
    
    func getLanguages() -> [Language] {
        var languageArray: [Language] = []
        for language in languages {
            languageArray.append(language.value)
        }
        return languageArray
    }
}

struct Family: Identifiable {
    var id = UUID()
    var familyName: String
    var aide: Profile
    var aidant: Profile
}

struct Message: Identifiable {
    var id = UUID()
    var sender: Profile
    var timestamp: Date
    var message: String
}

struct Conversation: Identifiable {
    var id = UUID()
    var matchedFamily: Family
    var messages: [Message]
}
