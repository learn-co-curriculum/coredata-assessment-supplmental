//
//  Doctor+CoreDataProperties.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData

extension Doctor {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Doctor> {
        return NSFetchRequest<Doctor>(entityName: "Doctor");
    }

    @NSManaged public var name: String?
    @NSManaged public var hospitals: Set<Hospital>
    @NSManaged public var pets: Set<Pet>

}

// MARK: Generated accessors for hospitals
extension Doctor {

    @objc(addHospitalsObject:)
    @NSManaged public func addToHospitals(_ value: Hospital)

    @objc(removeHospitalsObject:)
    @NSManaged public func removeFromHospitals(_ value: Hospital)

    @objc(addHospitals:)
    @NSManaged public func addToHospitals(_ values: NSSet)

    @objc(removeHospitals:)
    @NSManaged public func removeFromHospitals(_ values: NSSet)

}

// MARK: Generated accessors for pets
extension Doctor {

    @objc(addPetsObject:)
    @NSManaged public func addToPets(_ value: Pet)

    @objc(removePetsObject:)
    @NSManaged public func removeFromPets(_ value: Pet)

    @objc(addPets:)
    @NSManaged public func addToPets(_ values: NSSet)

    @objc(removePets:)
    @NSManaged public func removeFromPets(_ values: NSSet)

}
