//
//  Vet+CoreDataProperties.swift
//  CoreDataAssessment2
//
//  Created by Dennis Vera on 10/15/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import Foundation
import CoreData

extension Vet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Vet> {
        return NSFetchRequest<Vet>(entityName: "Vet");
    }

    @NSManaged public var name: String?
    @NSManaged public var hospitals: Set<Hospital>?
    @NSManaged public var pets: Set<Pet>?

}

// MARK: Generated accessors for hospitals
extension Vet {

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
extension Vet {

    @objc(addPetsObject:)
    @NSManaged public func addToPets(_ value: Pet)

    @objc(removePetsObject:)
    @NSManaged public func removeFromPets(_ value: Pet)

    @objc(addPets:)
    @NSManaged public func addToPets(_ values: NSSet)

    @objc(removePets:)
    @NSManaged public func removeFromPets(_ values: NSSet)

}
