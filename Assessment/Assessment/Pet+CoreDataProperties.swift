//
//  Pet+CoreDataProperties.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData


extension Pet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pet> {
        return NSFetchRequest<Pet>(entityName: "Pet");
    }

    @NSManaged public var name: String?
    @NSManaged public var doctors: Doctor?
    @NSManaged public var hospital: Hospital?

}
