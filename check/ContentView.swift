//
//  ContentView.swift
//  check
//
//  Created by Risul Rashed
//

import SwiftUI
import UniformTypeIdentifiers


struct ContentView: View {
    @EnvironmentObject var userEnter: UsrEnterRead
    @ObservedObject var model = TextModel()
    @State var changeLabel: String = ""
    var createButton = CustomButton()
    var myPss = RandomPassword()
    var myOwnPass = MakeStrong()
    var pasteboard = UIPasteboard.general

    //var passCheck = PasswordCheck()
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Password Checker")
                    .bold()
                    .foregroundColor(Color("colorButton"))
                    .shadow(color: .black, radius: 10, x: 0, y: 2)
                    .font(.largeTitle)
                Label(userEnter.showToUsr, systemImage: "globe.americas.fill")
                    .font(.largeTitle)
                Button {
                    pasteboard.string = userEnter.showToUsr
                } label: {
                    Text("Copy")
                }
                .disabled(userEnter.showToUsr == "Enter Text First" ? true : (!userEnter.showToUsr.isEmpty ? false : true))

                TextEnter()
                VStack(spacing: 20){
                    createButton.button(action: {
                        userEnter.showToUsr = myOwnPass.changeIt(password: userEnter.usrEnterPassword)
                    }, image: "rectangle.and.pencil.and.ellipsis", text: "Generate Strong")
                    createButton.button(action: {
                        //userEnter.showToUsr = "GOT IT"
                        check(pass: userEnter.usrEnterPassword)
                    }, image: "a.magnify", text: "Vulnerability Check")
                    createButton.button(action: {
                        userEnter.showToUsr = myPss.randomString()
                    }, image: "wand.and.stars", text: "Generate New")
                    
                }
                
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func check(pass: String) {

        guard !pass.isEmpty else{
            userEnter.showToUsr = "Enter Text First"
            return
        }
        for item in model.data{
        
            if item.pass == pass || pass.count<8{
                //exist = true
                userEnter.showToUsr = "Pass is not secure"
                
                return
            }
            else{
                userEnter.showToUsr = "Looks OK!"
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UsrEnterRead())
    }
}
