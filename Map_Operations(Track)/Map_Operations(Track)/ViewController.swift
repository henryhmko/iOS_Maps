//
//  ViewController.swift
//  Map_Operations(Track)
//
//  Created by Hyeonmok Ko on 2020/04/04.
//  Copyright © 2020 Hyeonmok Ko. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationService()
        // Do any additional setup after loading the view.
    }
    
    func setupLocationManger() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func checkLocationService() {
        if CLLocationManager.locationServicesEnabled(){
            //setup location manager
            setupLocationManger()
            checkLocationAuthorization()
        } else {
            //Alert user that location access must be enabled
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            //primary option
            mapView.showsUserLocation = true
            break
        case .denied:
            //Show alert telling them how to turn on location setting
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        case .authorizedAlways:
            break
        //below update?
        @unknown default:
            break
        //above update?
        }
    }
}


//extension ViewController: CLLocationManagerDelegate {
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        <#code#>
//    }
//
//    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//        <#code#>
//    }
//}
