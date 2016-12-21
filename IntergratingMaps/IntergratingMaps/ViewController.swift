//
//  ViewController.swift
//  IntergratingMaps
//
//  Created by Tomas-William Haffenden on 21/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit
//ADDED mapkit
import MapKit

//ADDED MKMap....
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sydney
        let latitude: CLLocationDegrees = -33.8756271
        let longitude: CLLocationDegrees = 151.2160727
        //This is zoom
        let latDelta: CLLocationDegrees = 5.0
        let longDelta: CLLocationDegrees = 5.0
        //overall zoom level, combo of latDelta and longDelta
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

