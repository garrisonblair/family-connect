//
//  Modele.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

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
    var commenter: Profile
    var comment: String
}

struct Profile: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var imageName: String
    var city: String
    var birthDate: Date
    var age: Int
    var languages: [Language]
    var description: String
    var services: [Service]
    var rating: Double
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
    var matchedProfile: Profile
    var messages: [Message]
}
