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

struct Profile {
    var firstName: String
    var lastName: String
    var image: CGImage
    var city: String
    var birthDate: Date
    var age: Int
    var languages: [Language]
    var description: String
    var Services: [Service]
    var rating: Double
}

struct Family {
    var familyName: String
    var aide: Profile
    var aidant: Profile
}
