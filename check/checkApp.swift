//
//  checkApp.swift
//  check
//
//  Created by Risul Rashed
//

import SwiftUI

@main
struct checkApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UsrEnterRead())
        }
    }
}
