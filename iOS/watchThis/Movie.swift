//
//  Movie.swift
//  watchThis
//
//  Created by Math LLC on 7/5/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Movie: NSManagedObject {
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }

    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }
}
