//
//  mapsbanten.swift
//  wisata Banten Lama
//
//  Created by My Macbook on 02/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit
import MapKit

class customPin: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle:String, pinSubtitle:String, location:CLLocationCoordinate2D) {
        self.title = pinTitle
        self.subtitle = pinSubtitle
        self.coordinate = location
    }
}
class mapsbanten: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var mapb: MKMapView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let location = CLLocationCoordinate2D(latitude: -6.036, longitude: 106.154014)
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        self.mapb.setRegion(region, animated: true)
        let pin = customPin(pinTitle: "Wista Banten Lama", pinSubtitle: "Banten Kasemen Kota Serang Banten", location: location)
        self.mapb.addAnnotation(pin)
        self.mapb.delegate = self
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customannotation")
    annotationView.canShowCallout = true
        return annotationView
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
