//
//  CustomButton.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation
import SwiftUI

var buttonStyle = TextViewInButton()

struct CustomButton{
    func button(action: @escaping () -> Void, image: String, text: String ) -> some View{
        Button(action: action) {
            buttonStyle.textView(image: image, text: text)
        }
        .buttonStyle(MyButtonStyle())
    }
}
