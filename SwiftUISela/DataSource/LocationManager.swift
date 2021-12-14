//
//  LocationManager.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/13.
//

import Foundation
import CoreLocation
import Combine


class LocationManager: NSObject, ObservableObject {
    static let shared = LocationManager()
    
    @Published var locationStatus: CLAuthorizationStatus?
    {
        willSet {
            objectWillChange.send()
        }
    }

    @Published var lastLocation: CLLocation? {
        willSet {
            objectWillChange.send()
        }
    }

    var statusString: String {
        guard let status = locationStatus else {
            return "unknown"
        }

        switch status {
        case .notDetermined: return "notDetermined"
        case .authorizedWhenInUse: return "authorizedWhenInUse"
        case .authorizedAlways: return "authorizedAlways"
        case .restricted: return "restricted"
        case .denied: return "denied"
        default: return "unknown"
        }

    }

    let objectWillChange = PassthroughSubject<Void, Never>()

    private let locationManager = CLLocationManager()
    private override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.distanceFilter = 100
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.pausesLocationUpdatesAutomatically = false
        locationManager.allowsBackgroundLocationUpdates = true
        self.locationManager.startUpdatingLocation()

    }
}


extension LocationManager: CLLocationManagerDelegate {
        // 授权状态变化回调
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        self.locationStatus = status
        print(#function, statusString)
    }

    // 更新位置变化的回调
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        self.lastLocation = location
        print("新的定位数据 \(location)")
        print(#function, location)
    }
}
