//
//  TextViewInButton.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation
import SwiftUI

struct TextViewInButton{
    func textView(image: String, text: String) -> some View{
        HStack(){
            Image(systemName: image)
                .font(.title)
            
            Text(text)
                .font(.title2)
        }
        .padding(.leading, 60)
    }
}
