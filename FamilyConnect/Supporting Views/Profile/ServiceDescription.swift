//
//  ServiceDescription.swift
//  FamilyConnect
//
//  Created by Garrison Blair on 2020-10-01.
//

import SwiftUI

struct ServiceDescription: View {
    let services: [Service]
    
    var body: some View {
        ForEach(0...services.count-1, id: \.self) { count in
            HStack {
                ServiceIcon(services[count])
                Text(services[count].description)
                    .padding(.leading)
                Spacer()
            }
            .padding(.horizontal, 30.0)
            if count != services.count - 1 {
                Divider()
                    .background(/*@START_MENU_TOKEN@*/Color("appBackground")/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ServiceDescription_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDescription(services: [walk, study, shop])
    }
}
