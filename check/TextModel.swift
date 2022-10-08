//
//  TextRead.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation
import SwiftUI

class TextModel: ObservableObject  {
    @Published var data = [User]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "Userdata", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let dataJ = try? Data(contentsOf: url)
        let gotData = try? JSONDecoder().decode([User].self, from: dataJ!)
        self.data = gotData!
        
    }
     
}


