//
//  MapAppSwiftUIApp.swift
//  MapAppSwiftUI
//
//  Created by omar thamri on 3/10/2023.
//

import SwiftUI

@main
struct MapAppSwiftUIApp: App {
    @StateObject private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
