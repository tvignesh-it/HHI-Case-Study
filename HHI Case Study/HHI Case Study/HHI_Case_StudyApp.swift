//
//  HHI_Case_StudyApp.swift
//  HHI Case Study
//
//  Created by Vignesh on 04/03/22.
//

import SwiftUI

@main
struct HHI_Case_StudyApp: App {
    @StateObject var settings = Settings()
    var body: some Scene {
        WindowGroup {
            HomeScreen().environmentObject(settings)
        }
    }
}
