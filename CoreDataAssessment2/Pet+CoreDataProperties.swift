//
//  Pet+CoreDataProperties.swift
//  CoreDataAssessment2
//
//  Created by Dennis Vera on 10/15/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import Foundation
import CoreData

extension Pet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pet> {
        return NSFetchRequest<Pet>(entityName: "Pet");
    }

    @NSManaged public var name: String?
    @NSManaged public var hospital: Set<Hospital>?
    @NSManaged public var vet: Set<Vet>?

}

// MARK: Generated accessors for hospital
extension Pet {

    @objc(addHospitalObject:)
    @NSManaged public func addToHospital(_ value: Hospital)

    @objc(removeHospitalObject:)
    @NSManaged public func removeFromHospital(_ value: Hospital)

    @objc(addHospital:)
    @NSManaged public func addToHospital(_ values: NSSet)

    @objc(removeHospital:)
    @NSManaged public func removeFromHospital(_ values: NSSet)

}

// MARK: Generated accessors for vet
extension Pet {

    @objc(addVetObject:)
    @NSManaged public func addToVet(_ value: Vet)

    @objc(removeVetObject:)
    @NSManaged public func removeFromVet(_ value: Vet)

    @objc(addVet:)
    @NSManaged public func addToVet(_ values: NSSet)

    @objc(removeVet:)
    @NSManaged public func removeFromVet(_ values: NSSet)

}
