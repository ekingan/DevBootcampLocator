//
//  Movie+CoreDataProperties.swift
//  watchThis
//
//  Created by Math LLC on 7/5/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var title: String?
    @NSManaged var image: NSData?
    @NSManaged var desc: String?
    @NSManaged var link: String?

}
