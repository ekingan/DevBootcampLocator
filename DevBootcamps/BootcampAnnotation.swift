//
//  BootcampAnnotation.swift
//  DevBootcamps
//
//  Created by Math LLC on 7/6/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import Foundation
import MapKit

class BootcampAnnotaion: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
    
}