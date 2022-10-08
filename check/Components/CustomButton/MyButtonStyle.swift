//
//  MyButtonStyle.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation
import SwiftUI

struct MyButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 350, height: 40, alignment: .leading)
            .background(Color("colorButton"))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5)
            .scaleEffect(configuration.isPressed ? 0.92 : 1.0)
    }
}
