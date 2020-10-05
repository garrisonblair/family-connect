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
var english = Language(name: "Anglais", image: "🇬🇧")
var italian = Language(name: "Italien", image: "🇮🇹")
var german = Language(name: "Allemand", image: "🇩🇪")
var spanish = Language(name: "Espagnol", image: "🇪🇸")

var rating1 = Rating(commenter: "Frank", comment: "Tres gentil, attentionné. Aide ma mere avec ses courses et sa marche toutes les semaines", grade: 5.0)
var rating2 = Rating(commenter: "Henri", comment: "Aide avec les courses 2 fois par semaine mais reste un peu froid et réservé.", grade: 3.0)
var rating3 = Rating(commenter: "Juliette", comment: "S'occupe bien de ma grandmere, l'aide avec les courses et le ménage au moins une fois par semaine", grade: 4.0)
var rating4 = Rating(commenter: "Patrick", comment: "Tres gentil, attentionné. Aide ma mere avec ses courses et sa marche toutes les semaines", grade: 5.0)
var rating5 = Rating(commenter: "Phillipe", comment: "Tres gentille personne, a toujours des histoires passionnantes.", grade: 4.0)
var rating6 = Rating(commenter: "Juliette", comment: "Adorable! A ce jour je n'ai jamais reussi a gagner au cartes quand on joue ensemble", grade: 4.0)

var rating1star = Rating(commenter: "David", comment: "", grade: 1.0)
var rating2star = Rating(commenter: "David", comment: "", grade: 2.0)
var rating3star = Rating(commenter: "David", comment: "", grade: 3.0)
var rating4star = Rating(commenter: "David", comment: "", grade: 4.0)
var rating5star = Rating(commenter: "David", comment: "", grade: 5.0)


var ratings = [rating1, rating2, rating3]

var profiles = [
    Profile(firstName: "Jean", lastName: "Davis", imageName: "profile1", city: "Marseille", birthDate: Date(), age: 34, languages: [french, english], description: "Jeune, dynamique, disponible en soiree et weekends pour de la marche, socialiser et passer de bons moments", services: [printer, car, clean, social], ratings: [rating1, rating3, rating2star, rating3star]),
    Profile(firstName: "Martine", lastName: "Ramin", imageName: "profile2", city: "Marseille", birthDate: Date(), age: 27, languages: [french], description: "J'ai beaucoup de temps libre a consacrer a aider toute personne qui peut en avoir besoin", services: [walk, social, clean], ratings: [rating1, rating3, rating2, rating5star, rating5star, rating5star, rating5star]),
    Profile(firstName: "Debo", lastName: "Mason", imageName: "profile3", city: "Marseille", birthDate: Date(), age: 29, languages: [french, italian], description: "Jeune, dynamique, disponible en soiree et weekends pour de la marche, socialiser et passer de bons moments", services: [walk, shop, study], ratings: [rating1, rating2, rating4star, rating5star]),
    Profile(firstName: "Paul", lastName: "Dubois", imageName: "profile4", city: "Marseille", birthDate: Date(), age: 31, languages: [french], description: "J'ai beaucoup de temps libre a consacrer a aider toute personne qui peut en avoir besoin", services: [printer, car, clean, social], ratings: [rating3, rating5star, rating4star]),
    Profile(firstName: "Martine", lastName: "Davis", imageName: "profile5", city: "Paris", birthDate: Date(), age: 77, languages: [french], description: "Je cherche simplement quelqu'un avec qui discuter, se balader, raconter mes histoires", services: [walk, social], ratings: [rating5, rating6]),
    Profile(firstName: "Marc", lastName: "Ramin", imageName: "profile6", city: "Paris", birthDate: Date(), age: 67, languages: [french], description: "A besoin de quelqu'un qui pourrait me conduire et m'accompagner jusqu'au marché, et de temps a autres me connecter avec ma famille par facetime", services: [walk, social, printer, car], ratings: [rating5, rating4, rating1star]),
    Profile(firstName: "Louis", lastName: "Robert", imageName: "profile7", city: "Paris", birthDate: Date(), age: 76, languages: [french], description: "Je cherche simplement quelqu'un avec qui discuter, se balader, raconter mes histoires", services: [walk, clean, shop, printer], ratings: [rating4, rating6]),
    Profile(firstName: "Jeanne", lastName: "Dubois", imageName: "profile8", city: "Paris", birthDate: Date(), age: 81, languages: [french], description: "A besoin de quelqu'un qui pourrait me conduire et m'accompagner jusqu'au marché, et de temps a autres me connecter avec ma famille par facetime", services: [walk, shop, car], ratings: [])
]

var families = [
    Family(familyName: "Davis", aide: profiles[4], aidant: profiles[0]),
    Family(familyName: "Ramin", aide: profiles[5], aidant: profiles[1]),
    Family(familyName: "Mason", aide: profiles[6], aidant: profiles[2]),
    Family(familyName: "Dubois", aide: profiles[7], aidant: profiles[3])
]

var currentUser = Profile(firstName: "Garrison", lastName: "Blair", imageName: "", city: "Paris", birthDate: Date(), age: 24, languages: [french], description: "", services: [walk, clean, social], ratings: ratings)

var messages1 = [
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour, j'apprecie beaucoup votre profil, je pense que nos familles pourraient s'entraider, ca vous tente?"),
    Message(sender: profiles[0], timestamp: Date(), message: "Bonjour"),
    Message(sender: profiles[0], timestamp: Date(), message: "Oui cela serait super! Par contre, avez vous une voiture?"),
    Message(sender: currentUser, timestamp: Date(), message: "Oui!"),
    Message(sender: profiles[0], timestamp: Date(), message: "Tres bien! Voici mon numéro, appelez moi: 0645551234")
]
var messages2 = [
    Message(sender: profiles[1], timestamp: Date(), message: "Bonjour, j'apprecie beaucoup votre profil, je pense que nos familles pourraient s'entraider, ca vous tente?"),
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour"),
    Message(sender: currentUser, timestamp: Date(), message: "Oui cela serait super! Par contre, avez vous une voiture?"),
    Message(sender: profiles[1], timestamp: Date(), message: "Oui!"),
    Message(sender: currentUser, timestamp: Date(), message: "Tres bien! Voici mon numéro, appelez moi: 0645551234")
]

var conversation1 = Conversation(matchedFamily: families[0], messages: messages1)
var conversation2 = Conversation(matchedFamily: families[1], messages: messages2)

var conversations = [conversation1, conversation2]
