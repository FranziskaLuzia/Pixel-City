//
//  DroppablePin.swift
//  Pixel-City
//
//  Created by Franziska Kammerl on 11/1/17.
//  Copyright © 2017 Franziska Kammerl. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
