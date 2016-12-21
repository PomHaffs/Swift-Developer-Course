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
        
        //ADDING annotations to location
        
    let annotation = MKPointAnnotation()
        annotation.title = "Sydney"
        annotation.subtitle = "this is where i live now!"
        annotation.coordinate = location
        
        mapView.addAnnotation(annotation)
        
        //whole screen
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        longpress.minimumPressDuration = 2
        mapView.addGestureRecognizer(longpress)
        
    }
    
    //the ':' in 'longpress:' is needed or no information is sent with press
    func longpress(gestureRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: self.mapView)
        let coordinate = mapView.convert(touchPoint, toCoordinateFrom: self.mapView)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Somewhere New"
        annotation.subtitle = "next place to go!"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

