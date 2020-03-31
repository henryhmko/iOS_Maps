//
//  ViewController.swift
//  Map_Operations
//
//  Created by Hyeonmok Ko on 2020/03/29.
//  Copyright © 2020 Hyeonmok Ko. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
//    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkLocationServices()
//    }
    }
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            checkLocationAuthorization()
        }   else {
//            Show alert letting the user know they have to turn this on.
        }
    }
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
         case .denied: //Show alert telling users how to turn on permissions
         break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            mapView.showsUserLocation = true
        case .restricted: //Show an alert letting them know what's up
            break
        case .authorizedAlways:
            break
        @unknown default:
            <#fatalError()#>
        }
    }

//        let location = CLLocationCoordinate2D(latitude: 33.3941317, longitude: 126.2309518)
//        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapview.setRegion(region, animated: true)
//
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = "Beautiful Hyeop-Jae"
//        annotation.subtitle = "yeeet"
//        mapview.addAnnotation(annotation)
//
//}
}
