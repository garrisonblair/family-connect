//
//  LanguageDescription.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct LanguageDescription: View {
    let languages: [Language]
    
    var body: some View {
        HStack {
            ForEach(0...languages.count-1, id: \.self) { count in
                Text("\(languages[count].image) \(languages[count].name)")
                if count != languages.count - 1 {
                    Divider()
                        .background(/*@START_MENU_TOKEN@*/Color("appBackground")/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct LanguageDescription_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDescription(languages: [french, english])
    }
}
