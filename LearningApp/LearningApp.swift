//
//  LearningApp.swift
//  LearningApp
//
//  Created by JH on 2021-08-07.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
