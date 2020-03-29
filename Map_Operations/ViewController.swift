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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let location = CLLocationCoordinate2D(latitude: 33.3941317, longitude: 126.2309518)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapview.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Beautiful Hyeop-Jae"
        annotation.subtitle = "yeeet"
        mapview.addAnnotation(annotation)
    }

    @IBOutlet weak var mapview: MKMapView!
    
}

