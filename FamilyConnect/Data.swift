//
//  Data.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-09-30.
//

import SwiftUI

var printer = Service(iconName: "printer", iconColor: Color("iconLightBlue"), description: "Aide Technologique")
var car = Service(iconName: "car", iconColor: Color("iconRed"), description: "Véhicule")
var shop = Service(iconName: "cart", iconColor: Color("iconGreen"), description: "Aide Courses")
var study = Service(iconName: "book", iconColor: Color("iconPurple"), description: "Aide Etude")
var clean = Service(iconName: "paintbrush", iconColor: Color("iconDarkBlue"), description: "Aide Maison")
var social = Service(iconName: "bubble.left.and.bubble.right", iconColor: Color("iconYellow"), description: "Contact Social")
var walk = Service(iconName: "figure.walk", iconColor: Color("iconBrown"), description: "Marche")

var french = Language(name: "Francais", image: "🇫🇷")

var profiles = [
    Profile(firstName: "Chris", lastName: "Evans", imageName: "profile1", city: "Paris", birthDate: Date(), age: 34, languages: [french], description: "", services: [printer, car, clean, social], rating: 4.6),
    Profile(firstName: "Scarlett", lastName: "Johansson", imageName: "profile2", city: "Marseille", birthDate: Date(), age: 67, languages: [french], description: "", services: [walk, social], rating: 4.9),
    Profile(firstName: "Chris", lastName: "Hemsworth", imageName: "profile3", city: "Paris", birthDate: Date(), age: 56, languages: [french], description: "", services: [walk, shop, study], rating: 3.6)
]

var families = [
    Family(familyName: "Evans", aide: profiles[1], aidant: profiles[0]),
    Family(familyName: "Johansson", aide: profiles[0], aidant: profiles[1]),
    Family(familyName: "Hemsworth", aide: profiles[1], aidant: profiles[2])
]
