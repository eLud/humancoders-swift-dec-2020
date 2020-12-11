//
//  Location.swift
//  Geoloc
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import Foundation
import CoreLocation

class Location: NSObject, ObservableObject {

    @Published var latitude: Double = 0
    @Published var longitude: Double = 0

    // 1 Get a manager
    let locationManager = CLLocationManager()

    func getLocation() {

        // 2 Check for service
        guard CLLocationManager.locationServicesEnabled() else { return }

        // 3 Set a delegate
        locationManager.delegate = self

        // 4 Auth
        locationManager.requestWhenInUseAuthorization()

        // 5 Geoloc
        if locationManager.authorizationStatus == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }

}

extension Location: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        if let first = locations.first {
            latitude = first.coordinate.latitude
            longitude = first.coordinate.longitude
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("did fail with error \(error)")
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print("did change auth \(manager.authorizationStatus)")
        if locationManager.authorizationStatus == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
}
