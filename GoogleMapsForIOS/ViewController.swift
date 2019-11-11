//
//  ViewController.swift
//  GoogleMapsForIOS
//
//  Created by Rutaks on 11/11/2019.
//  Copyright © 2019 Rutaks. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a GMSCameraPosition that tells the map to display the
        // Coordinate -1.962519, 30.106779 at zoom level 6.
        // Coordinates Are Remera Kigali Rwanda
        let camera = GMSCameraPosition.camera(withLatitude: -1.962519, longitude: 30.106779, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -1.962519, longitude: 30.106779)
        marker.title = "Kigali"
        marker.snippet = "Rwanda"
        marker.map = mapView
    }


}

