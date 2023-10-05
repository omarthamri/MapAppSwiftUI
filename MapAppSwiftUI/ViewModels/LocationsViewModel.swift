//
//  LocationsViewModel.swift
//  MapAppSwiftUI
//
//  Created by omar thamri on 5/10/2023.
//

import Foundation


class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}

