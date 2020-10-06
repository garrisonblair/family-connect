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
var rating5 = Rating(commenter: "Phillipe", comment: "Tres gentille personne, a toujours des histoires passionnantes. Cuisine tres bien!", grade: 4.0)
var rating6 = Rating(commenter: "Juliette", comment: "Adorable! A ce jour je n'ai jamais reussi a gagner au cartes quand on joue ensemble", grade: 4.0)

var rating1star = Rating(commenter: "David", comment: "", grade: 1.0)
var rating2star = Rating(commenter: "David", comment: "", grade: 2.0)
var rating3star = Rating(commenter: "David", comment: "", grade: 3.0)
var rating4star = Rating(commenter: "David", comment: "", grade: 4.0)
var rating5star = Rating(commenter: "David", comment: "", grade: 5.0)


var ratings = [rating1, rating2, rating3]

var profiles = [
    Profile(firstName: "Jean", lastName: "Davis", imageName: "profile1", city: "Marseille", birthDate: Date(), age: 34, languages: ["french": french, "english": english], description: "Jeune, dynamique, disponible en soiree et weekends pour de la marche, socialiser et passer de bons moments", services: ["printer": printer, "car": car, "clean": clean, "social": social], ratings: [rating1, rating3, rating2star, rating3star]),
    Profile(firstName: "Martine", lastName: "Ramin", imageName: "profile2", city: "Marseille", birthDate: Date(), age: 27, languages: ["french": french], description: "J'ai beaucoup de temps libre a consacrer a aider toute personne qui peut en avoir besoin", services: ["walk": walk, "social": social, "clean": clean], ratings: [rating1, rating3, rating2, rating5star, rating5star, rating5star, rating5star]),
    Profile(firstName: "Debo", lastName: "Mason", imageName: "profile3", city: "Marseille", birthDate: Date(), age: 29, languages: ["french": french, "italian": italian], description: "Jeune, dynamique, disponible en soiree et weekends pour de la marche, socialiser et passer de bons moments", services: ["walk": walk, "shop": shop, "study": study], ratings: [rating1, rating2, rating4star, rating5star]),
    Profile(firstName: "Paul", lastName: "Dubois", imageName: "profile4", city: "Marseille", birthDate: Date(), age: 31, languages: ["french": french], description: "J'ai beaucoup de temps libre a consacrer a aider toute personne qui peut en avoir besoin", services: ["printer": printer, "car": car, "clean": clean, "social": social], ratings: [rating3, rating5star, rating4star]),
    Profile(firstName: "Martine", lastName: "Davis", imageName: "profile5", city: "Paris", birthDate: Date(), age: 77, languages: ["french": french], description: "Je cherche simplement quelqu'un avec qui discuter, se balader, raconter mes histoires", services: ["walk": walk, "social": social], ratings: [rating5, rating6]),
    Profile(firstName: "Marc", lastName: "Ramin", imageName: "profile6", city: "Paris", birthDate: Date(), age: 67, languages: ["french": french], description: "A besoin de quelqu'un qui pourrait me conduire et m'accompagner jusqu'au marché, et de temps a autres me connecter avec ma famille par facetime", services: ["walk": walk, "social": social, "printer": printer, "car": car], ratings: [rating5, rating4, rating1star]),
    Profile(firstName: "Louis", lastName: "Robert", imageName: "profile7", city: "Paris", birthDate: Date(), age: 76, languages: ["french": french], description: "Je cherche simplement quelqu'un avec qui discuter, se balader, raconter mes histoires", services: ["walk": walk, "clean": clean, "shop": shop, "printer": printer], ratings: [rating4, rating6]),
    Profile(firstName: "Jeanne", lastName: "Dubois", imageName: "profile8", city: "Paris", birthDate: Date(), age: 81, languages: ["french": french], description: "A besoin de quelqu'un qui pourrait me conduire et m'accompagner jusqu'au marché, et de temps a autres me connecter avec ma famille par facetime", services: ["walk": walk, "shop": shop, "car": car], ratings: []),
    Profile(firstName: "Philippe", lastName: "Dupont", imageName: "profile9", city: "Paris", birthDate: Date(), age: 46, languages: ["french": french], description: "Je cherche simplement quelqu'un avec qui discuter, se balader, raconter mes histoires", services: ["walk": walk, "social": social, "printer": printer, "car": car], ratings: [rating4, rating6]),
    Profile(firstName: "Marion", lastName: "Dupont", imageName: "profile10", city: "Paris", birthDate: Date(), age: 68, languages: ["french": french], description: "A besoin de quelqu'un qui pourrait me conduire et m'accompagner jusqu'au marché, et de temps a autres me connecter avec ma famille par facetime", services: ["walk": walk, "shop": shop, "car": car], ratings: [])
]

var families = [
    Family(familyName: "Davis", aide: profiles[4], aidant: profiles[0]),
    Family(familyName: "Ramin", aide: profiles[5], aidant: profiles[1]),
    Family(familyName: "Mason", aide: profiles[6], aidant: profiles[2]),
    Family(familyName: "Dubois", aide: profiles[7], aidant: profiles[3]),
    Family(familyName: "Dupont", aide: profiles[9], aidant: profiles[8])
]

var currentUser = Profile(firstName: "Garrison", lastName: "Blair", imageName: "", city: "Paris", birthDate: Date(), age: 24, languages: ["french": french], description: "", services: ["walk": walk, "clean": clean, "social": social], ratings: ratings)

var messages1 = [
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour, j'apprecie beaucoup votre profil, je pense que nos familles pourraient s'entraider, ca vous tente?"),
    Message(sender: profiles[0], timestamp: Date(), message: "Bonjour"),
    Message(sender: profiles[0], timestamp: Date(), message: "Oui cela serait super! Par contre, avez vous une voiture?"),
    Message(sender: currentUser, timestamp: Date(), message: "Oui!"),
    Message(sender: profiles[0], timestamp: Date(), message: "Tres bien! Voici mon numéro, appelez moi: 064***1234")
]
var messages2 = [
    Message(sender: profiles[1], timestamp: Date(), message: "Bonjour, nous regardions avec grand intérêt vos offres de soutien familial qui correspondent aux besoins de mon grand père. Pensez vous que je puisse vous rendre service en échange?"),
    Message(sender: currentUser, timestamp: Date(), message: "Un grand merci pour votre proposition toutefois nous avons été contacté par une famille la semaine passée avec laquelle tout se passe bien. Je me permettrais de revenir si besoin. Si toutefois vous aviez besoin de quoique ce soit, tenez moi au courant!"),
    Message(sender: profiles[1], timestamp: Date(), message: "Merci beaucoup pour votre réponse. Excellente journée")
]
var messages3 = [
    Message(sender: profiles[2], timestamp: Date(), message: "Bonjour, j'espère que vous allez bien. J'ai regardé votre profil et je pense que je peux aider votre grand-mère pour lui faire des courses et si elle le souhaite aller se dégourdir les jambes"),
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour, Merci pour votre proposition! J'en serais ravie. Est ce que votre père aime aller au cinéma?"),
    Message(sender: profiles[2], timestamp: Date(), message: "Oui il adore ça!"),
    Message(sender: currentUser, timestamp: Date(), message: "Je vous propose de nous appeler par Facetime si cela vous convient. Ce soir 18h?"),
    Message(sender: profiles[2], timestamp: Date(), message: "Parfait! voici mon Numéro. Au plaisir")
]
var messages4 = [
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour, j'ai beaucoup apprécié la sensibilité de votre présentation. Ma grand mère adorerait passer un dimanche entourée de petits enfants. Elle est très patiente et excellente cuisinière, je pense que le profil de votre famille lui conviendrait à merveille. Dites moi ce qui pourrait faire plaisir à votre maman?"),
    Message(sender: profiles[3], timestamp: Date(), message: "Bonjour, Ce serait volontiers de l'accueillir pour un déjeuner en famille dès ce week end si elle le souhaite. Ma mère a besoin de petites courses type produits d'entretien et litière pour son chat qui sont trop lourdes pour elle à porter. Pourriez vous me dire si cela serait envisageable de votre côté?"),
    Message(sender: currentUser, timestamp: Date(), message: "Oui aucun soucis avec plaisir"),
    Message(sender: profiles[3], timestamp: Date(), message: "Génial appelons nous, voici mon numero 062***545")
]
var messages5 = [
    Message(sender: currentUser, timestamp: Date(), message: "Bonjour! Votre profil nous intéresse beaucoup. Nous serions ravis de pouvoir échanger avec vous!"),
    Message(sender: profiles[4], timestamp: Date(), message: "Hello! Très volontiers,  nous serions enchantés, ma mère adore les chats et pourraient accueillir votre animal si vous partez en vacances. 😀"),
    Message(sender: currentUser, timestamp: Date(), message: "Génial!! on adore cette idée. Est ce qu'un whatsapp/Facetime ce we vous conviendrait? Echangeons!")
]

var conversation1 = Conversation(matchedFamily: families[0], messages: messages1)
var conversation2 = Conversation(matchedFamily: families[1], messages: messages2)
var conversation3 = Conversation(matchedFamily: families[2], messages: messages3)
var conversation4 = Conversation(matchedFamily: families[3], messages: messages4)
var conversation5 = Conversation(matchedFamily: families[4], messages: messages5)


var conversations = [conversation1, conversation2, conversation3, conversation4, conversation5]
