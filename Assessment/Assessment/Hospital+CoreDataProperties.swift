//
//  Hospital+CoreDataProperties.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData

extension Hospital {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hospital> {
        return NSFetchRequest<Hospital>(entityName: "Hospital");
    }

    @NSManaged public var name: String?
    @NSManaged public var doctors: Set<Doctor>

}

// MARK: Generated accessors for doctors
extension Hospital {

    @objc(addDoctorsObject:)
    @NSManaged public func addToDoctors(_ value: Doctor)

    @objc(removeDoctorsObject:)
    @NSManaged public func removeFromDoctors(_ value: Doctor)

    @objc(addDoctors:)
    @NSManaged public func addToDoctors(_ values: NSSet)

    @objc(removeDoctors:)
    @NSManaged public func removeFromDoctors(_ values: NSSet)

}
