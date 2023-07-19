//
//  MapView.swift
//  landmark
//
//  Created by Bohlale Manage on 2023/06/14.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
        @State private var region = MKCoordinateRegion()


        var body: some View {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
        }


        private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
                )
    }
}
