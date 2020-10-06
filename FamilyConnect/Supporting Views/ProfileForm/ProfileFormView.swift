//
//  FormView.swift
//  Ecran ma Famille
//
//  Created by Hodah Massamba-Wa on 01/10/2020.
//

import SwiftUI

struct ProfileFormView: View {
    @State var profile: Profile
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var dateDeNaissance: String = ""
    @State var about: String = ""
    
    @State var isVehicle: Bool = false
    @State var isService: Bool = false
    
    //Picker Ville
    @State var indexPickerOne = 0
    var optionPicker = ["Paris", "Marseille", "Lyon", "Orléans", "Lille", "Rennes", "Nantes"]
    
    // Picker + Toggles LANGUES
    @State var Langues: String = ""
    @State var isFrench = false
    @State var isEnglish = false
    @State var isSpanish = false
    @State var isItalian = false
    @State var isArabic = false
    @State var isChinese = false
    
    // Picker + Toggles AIDE
    
    @State var Help: String = ""
    
    @State var isShopping = false
    @State var isWalk = false
    @State var isStudy = false
    @State var isCleaning = false
    @State var isSocial = false
    @State var isSport = false
    @State var isTech = false
    
    var body: some View {
        ZStack {
            Color("appleGray")
            VStack {
                Form {
                    Section(header: Text("Votre Profil")) {
                        TextField("Prenom", text: $firstName)
                            .onAppear {
                                self.firstName = profile.firstName
                            }
                            .onChange(of: firstName, perform: { value in
                                self.profile.firstName = value
                            })
                        TextField("Nom", text: $lastName)
                            .onAppear {
                                self.lastName = profile.lastName
                            }
                            .onChange(of: lastName, perform: { value in
                                self.profile.lastName = value
                            })
                        TextField("Date de naissance", text: $dateDeNaissance)
                        
                        Picker(selection: $indexPickerOne, label:
                                Text("Ville")) {
                            ForEach(0 ..< optionPicker.count){
                                Text(self.optionPicker[$0]).foregroundColor(.black)
                            }
                        }
                        .navigationBarHidden(true)
                        VStack {
                            Picker(selection: $Langues, label:
                                    Text("Langues"), content: {
                                        
                                        Toggle(isOn: $isFrench) {
                                            Text("Français").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["french"] != nil {
                                                self.isFrench = true
                                            }
                                        }
                                        .onChange(of: isFrench, perform: { value in
                                            if value {
                                                self.profile.languages["french"] = french
                                            } else {
                                                self.profile.languages.removeValue(forKey: "french")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                        Toggle(isOn: $isEnglish) {
                                            Text("Anglais").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["english"] != nil {
                                                self.isEnglish = true
                                            }
                                        }
                                        .onChange(of: isEnglish, perform: { value in
                                            if value {
                                                self.profile.languages["english"] = english
                                            } else {
                                                self.profile.languages.removeValue(forKey: "english")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                        Toggle(isOn: $isSpanish) {
                                            Text("Espagnol").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["spanish"] != nil {
                                                self.isSpanish = true
                                            }
                                        }
                                        .onChange(of: isSpanish, perform: { value in
                                            if value {
                                                self.profile.languages["spanish"] = spanish
                                            } else {
                                                self.profile.languages.removeValue(forKey: "spanish")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                        Toggle(isOn: $isItalian) {
                                            Text("Italien").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["italian"] != nil {
                                                self.isItalian = true
                                            }
                                        }
                                        .onChange(of: isItalian, perform: { value in
                                            if value {
                                                self.profile.languages["italian"] = italian
                                            } else {
                                                self.profile.languages.removeValue(forKey: "italian")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                        Toggle(isOn: $isArabic) {
                                            Text("Arabe").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["arabic"] != nil {
                                                self.isArabic = true
                                            }
                                        }
                                        .onChange(of: isArabic, perform: { value in
                                            if value {
                                                self.profile.languages["arabic"] = arabic
                                            } else {
                                                self.profile.languages.removeValue(forKey: "arabic")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                        Toggle(isOn: $isChinese) {
                                            Text("Chinois").foregroundColor(.black)
                                        }
                                        .onAppear {
                                            if profile.languages["chinese"] != nil {
                                                self.isChinese = true
                                            }
                                        }
                                        .onChange(of: isChinese, perform: { value in
                                            if value {
                                                self.profile.languages["chinese"] = chinese
                                            } else {
                                                self.profile.languages.removeValue(forKey: "chinese")
                                            }
                                        })
                                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                        
                                    }
                            )}
                            .navigationBarHidden(true)
                    }
                    
                    //Section VOS SERVICES
                    
                    Section(header: Text("Vos Services")) {
                        
                        Toggle(isOn: $isVehicle) {
                            Text("Véhicule")
                        }
                        .onAppear {
                            if profile.services["car"] != nil {
                                self.isVehicle = true
                            }
                        }
                        .onChange(of: isVehicle, perform: { value in
                            if value {
                                self.profile.services["car"] = car
                            } else {
                                self.profile.services.removeValue(forKey: "car")
                            }
                        })
                        .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                    }
                    
                    Toggle(isOn: $isService) {
                        Text("Aide")
                    }
                    .onAppear {
                        if !profile.services.isEmpty {
                            self.isService = true
                        }
                    }
                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                    
                    if isService{
                        VStack {
                            Picker(selection: $Help, label:
                                    Text("Sélectionnez le type d'Aide")
                                   , content: {
                                    
                                    Toggle(isOn: $isShopping) {
                                        Text("Courses").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["shop"] != nil {
                                            self.isShopping = true
                                        }
                                    }
                                    .onChange(of: isShopping, perform: { value in
                                        if value {
                                            self.profile.services["shop"] = shop
                                        } else {
                                            self.profile.services.removeValue(forKey: "shop")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                    
                                    Toggle(isOn: $isWalk) {
                                        Text("Marche").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["walk"] != nil {
                                            self.isWalk = true
                                        }
                                    }
                                    .onChange(of: isWalk, perform: { value in
                                        if value {
                                            self.profile.services["walk"] = walk
                                        } else {
                                            self.profile.services.removeValue(forKey: "walk")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                    
                                    Toggle(isOn: $isStudy) {
                                        Text("Etudes").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["study"] != nil {
                                            self.isStudy = true
                                        }
                                    }
                                    .onChange(of: isStudy, perform: { value in
                                        if value {
                                            self.profile.services["study"] = study
                                        } else {
                                            self.profile.services.removeValue(forKey: "study")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                    
                                    Toggle(isOn: $isCleaning) {
                                        Text("Maison").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["clean"] != nil {
                                            self.isCleaning = true
                                        }
                                    }
                                    .onChange(of: isCleaning, perform: { value in
                                        if value {
                                            self.profile.services["clean"] = clean
                                        } else {
                                            self.profile.services.removeValue(forKey: "clean")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                    
                                    Toggle(isOn: $isSocial) {
                                        Text("Contact social").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["social"] != nil {
                                            self.isSocial = true
                                        }
                                    }
                                    .onChange(of: isSocial, perform: { value in
                                        if value {
                                            self.profile.services["social"] = social
                                        } else {
                                            self.profile.services.removeValue(forKey: "social")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                    
                                    Toggle(isOn: $isTech) {
                                        Text("Technologie").foregroundColor(.black)
                                    }
                                    .onAppear {
                                        if profile.services["printer"] != nil {
                                            self.isTech = true
                                        }
                                    }
                                    .onChange(of: isTech, perform: { value in
                                        if value {
                                            self.profile.services["printer"] = printer
                                        } else {
                                            self.profile.services.removeValue(forKey: "printer")
                                        }
                                    })
                                    .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                                   }
                            )}
                            .navigationBarHidden(true)
                    }
                    Section(header: Text("À propos de moi")) {
                        TextEditor(text: $about)
                            .onAppear {
                                self.about = profile.description
                            }
                            .onChange(of: about, perform: { value in
                                self.profile.description = value
                            })
                            .frame(minHeight: 50, idealHeight: 150)
                            .cornerRadius(25)
                            .padding(.bottom)
                    }
                }
                .padding(.top)
                .foregroundColor(.orange)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ProfileFormView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileFormView(profile: profiles[0])
        }
    }
}

