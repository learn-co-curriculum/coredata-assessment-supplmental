//
//  Hospital+CoreDataProperties.swift
//  CoreDataAssessment2
//
//  Created by Dennis Vera on 10/15/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import Foundation
import CoreData

extension Hospital {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hospital> {
        return NSFetchRequest<Hospital>(entityName: "Hospital");
    }

    @NSManaged public var name: String?
    @NSManaged public var pets: Set<Pet>?
    @NSManaged public var vets: Set<Vet>?

}

// MARK: Generated accessors for pets
extension Hospital {

    @objc(addPetsObject:)
    @NSManaged public func addToPets(_ value: Pet)

    @objc(removePetsObject:)
    @NSManaged public func removeFromPets(_ value: Pet)

    @objc(addPets:)
    @NSManaged public func addToPets(_ values: NSSet)

    @objc(removePets:)
    @NSManaged public func removeFromPets(_ values: NSSet)

}

// MARK: Generated accessors for vets
extension Hospital {

    @objc(addVetsObject:)
    @NSManaged public func addToVets(_ value: Vet)

    @objc(removeVetsObject:)
    @NSManaged public func removeFromVets(_ value: Vet)

    @objc(addVets:)
    @NSManaged public func addToVets(_ values: NSSet)

    @objc(removeVets:)
    @NSManaged public func removeFromVets(_ values: NSSet)

}
