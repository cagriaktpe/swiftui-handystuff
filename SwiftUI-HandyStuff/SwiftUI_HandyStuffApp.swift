//
//  SwiftUI_HandyStuffApp.swift
//  SwiftUI-HandyStuff
//
//  Created by Samet Çağrı Aktepe on 9.12.2023.
//

import SwiftUI

@main
struct SwiftUI_HandyStuffApp: App {
    let userIsSignedIn: Bool
    
    init() {
        self.userIsSignedIn = CommandLine.arguments.contains("-UITest_startSignedIn") ? true : false
        //self.userIsSignedIn = ProcessInfo.processInfo.arguments.contains("-UITest_startSignedIn") ? true : false
        //self.userIsSignedIn = ProcessInfo.processInfo.environment["-UITest-startSignedIn2"] == "true" ? true : false
        print("userSignedIn: \(userIsSignedIn)")
        
    }
    
    var body: some Scene {
        WindowGroup {
            SafeAreaExampleView()
        }
    }
}
