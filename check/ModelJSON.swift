//
//  ModelJSON.swift
//
//  Created by Risul Rashed
//

import Foundation

struct User: Codable, Identifiable{
    
    enum CodingKeys: CodingKey{
        case pass

    }
    
    var id = UUID()
    var pass: String

}
