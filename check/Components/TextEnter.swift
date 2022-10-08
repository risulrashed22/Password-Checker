//
//  TextEnter.swift
//  check
//
//  Created by Risul Rashed
//

import SwiftUI

struct TextEnter: View {
    @EnvironmentObject var userEnter: UsrEnterRead
    //var usrPut: String
    var body: some View {
        VStack{
            TextField("Enter Password", text: $userEnter.usrEnterPassword)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .frame(width: 350, height: 40)
                .font(.title)
                .background(.white)
                .cornerRadius(8)
                .shadow(color: .gray, radius: 5)
        }
        .padding()
    }
}

struct TextEnter_Previews: PreviewProvider {
    static var previews: some View {
        TextEnter()
            .environmentObject(UsrEnterRead())
    }
}
