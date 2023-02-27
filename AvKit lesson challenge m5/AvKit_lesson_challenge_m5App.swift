//
//  AvKit_lesson_challenge_m5App.swift
//  AvKit lesson challenge m5
//
//  Created by Stephen Brady on 27/02/2023.
//

import SwiftUI
import AVKit

@main
struct AvKit_lesson_challenge_m5App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(HawkVmodel())
        }
    }
}
