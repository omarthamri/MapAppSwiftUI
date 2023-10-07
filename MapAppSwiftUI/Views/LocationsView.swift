//
//  LocationsView.swift
//  MapAppSwiftUI
//
//  Created by omar thamri on 5/10/2023.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            VStack(spacing: 0) {
                header
                .padding()
                Spacer()
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    private var header: some View {
        VStack {
        Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
            .font(.title2)
            .fontWeight(.black)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .overlay(alignment: .leading) {
                Image(systemName: "arrow.down")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding()
            }
            LocationsListView()
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
}
