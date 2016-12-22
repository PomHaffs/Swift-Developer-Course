//
//  ViewController.swift
//  FindingUserLocation
//
//  Created by Tomas-William Haffenden on 22/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Allowing VC to control location manager
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //provides ALLL location info speed, direction, time etc... as an array
        //print(locations)
        
        
        //below copied from previous thing.
        let userLocation: CLLocation = locations[0]
        
//        let latitude = userLocation.coordinate.latitude
//        let longitude = userLocation.coordinate.longitude
        
//        let latDelta: CLLocationDegrees = 0.05
//        let longDelta: CLLocationDegrees = 0.05
//
//        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
//        
//        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
//        
//        mapView.setRegion(region, animated: true)
        
        //FIND ADDRESS
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
            
            if error != nil {
                
                print(error as? Any)
            } else {
                //might not give an address so ?
                if let placemark = placemarks?[0] {
                    //print(placemark)
                    
                    var subLocality = ""
                    if placemark.subLocality != nil {
                        subLocality = placemark.subLocality!
                    }
                    
                    var subAdmin = ""
                    if placemark.subAdministrativeArea != nil {
                        subAdmin = placemark.subAdministrativeArea!
                    }
                    
                    var subThoroughfare = ""
                    if placemark.subThoroughfare != nil {
                        subThoroughfare = placemark.subThoroughfare!
                    }
                    
                    var thoroughfare = ""
                    if placemark.thoroughfare != nil {
                        thoroughfare = placemark.thoroughfare!
                    }
                   
                    var postCode = ""
                    if placemark.postalCode != nil {
                        postCode = placemark.postalCode!
                    }
                    
                    var country = ""
                    if placemark.country != nil {
                        country = placemark.country!
                    }
                    
                    
                print(subThoroughfare + thoroughfare + "\n" + subLocality + "\n" + subAdmin + "\n" + postCode + "\n" + country)
                    
                }
            
            }
            
            
        }
        
        
    }



}

