//
//  DataStore.swift
//  CoreDataAssessment2
//
//  Created by Flatiron School on 10/13/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import Foundation
import CoreData

class DataStore {
    
    static let sharedDataStore = DataStore()
    var hospitals = [Hospital]()
    var vets = [Vet]()
    var pets = [Pet]()
    
    func generateTestData() {
        
        let hospital1: Hospital = NSEntityDescription.insertNewObject(forEntityName: Hospital.entityName, into: self.managedObjectContext) as! Hospital
        hospital1.name = "Westside Veterinary Center"
        
        let hospital2: Hospital = NSEntityDescription.insertNewObject(forEntityName: Hospital.entityName, into: self.managedObjectContext) as! Hospital
        hospital2.name = "Animal Medical Center"
        
        let hospital3: Hospital = NSEntityDescription.insertNewObject(forEntityName: Hospital.entityName, into: self.managedObjectContext) as! Hospital
        hospital3.name = "Battery Park Veterinary Hospital"
        
        let hospital4: Hospital = NSEntityDescription.insertNewObject(forEntityName: Hospital.entityName, into: self.managedObjectContext) as! Hospital
        hospital4.name = "Bronx Veterinary Center"
        
        let hospital5: Hospital = NSEntityDescription.insertNewObject(forEntityName: Hospital.entityName, into: self.managedObjectContext) as! Hospital
        hospital5.name = "Tribeca Soho Animal Hospital"
        
        let vet1: Vet = NSEntityDescription.insertNewObject(forEntityName: Vet.entityName, into: self.managedObjectContext) as! Vet
        vet1.name = "Dr. Patty Khuly"
        
        let vet2: Vet = NSEntityDescription.insertNewObject(forEntityName: Vet.entityName, into: self.managedObjectContext) as! Vet
        vet2.name = "Dr. Leanord Skull"
        
        let vet3: Vet = NSEntityDescription.insertNewObject(forEntityName: Vet.entityName, into: self.managedObjectContext) as! Vet
        vet3.name = "Dr. Skinner Humphry III"
        
        let vet4: Vet = NSEntityDescription.insertNewObject(forEntityName: Vet.entityName, into: self.managedObjectContext) as! Vet
        vet4.name = "Dr. Emily Kusker"
        
        let vet5: Vet = NSEntityDescription.insertNewObject(forEntityName: Vet.entityName, into: self.managedObjectContext) as! Vet
        vet5.name = "Dr. Edger Sammuel Romero"
        
        let pet1: Pet = NSEntityDescription.insertNewObject(forEntityName: Pet.entityName, into: self.managedObjectContext) as! Pet
        pet1.name = "Bacon"
        
        let pet2: Pet = NSEntityDescription.insertNewObject(forEntityName: Pet.entityName, into: self.managedObjectContext) as! Pet
        pet2.name = "Toro"
        
        let pet3: Pet = NSEntityDescription.insertNewObject(forEntityName: Pet.entityName, into: self.managedObjectContext) as! Pet
        pet3.name = "Lazer"
        
        let pet4: Pet = NSEntityDescription.insertNewObject(forEntityName: Pet.entityName, into: self.managedObjectContext) as! Pet
        pet4.name = "Thriller"
        
        let pet5: Pet = NSEntityDescription.insertNewObject(forEntityName: Pet.entityName, into: self.managedObjectContext) as! Pet
        pet5.name = "Stan"
        
        hospital1.vets?.insert(vet1)
        hospital1.vets?.insert(vet2)
        hospital1.vets?.insert(vet3)
        hospital1.vets?.insert(vet4)
        hospital1.vets?.insert(vet5)
        
        hospital2.vets?.insert(vet4)
        hospital2.vets?.insert(vet2)
        
        hospital3.vets?.insert(vet2)
        hospital3.vets?.insert(vet4)
        hospital3.vets?.insert(vet1)
        
        hospital4.vets?.insert(vet5)
        hospital4.vets?.insert(vet2)
        
        hospital5.vets?.insert(vet2)
        hospital5.vets?.insert(vet3)
        hospital5.vets?.insert(vet4)
        hospital5.vets?.insert(vet5)
        
        hospital1.pets?.insert(pet1)
        hospital1.pets?.insert(pet3)
        hospital1.pets?.insert(pet2)
        hospital1.pets?.insert(pet4)
        hospital1.pets?.insert(pet5)
        
        hospital2.pets?.insert(pet4)
        hospital2.pets?.insert(pet2)
        
        hospital3.pets?.insert(pet2)
        hospital3.pets?.insert(pet4)
        hospital3.pets?.insert(pet1)
        
        hospital4.pets?.insert(pet5)
        hospital4.pets?.insert(pet2)
        
        hospital5.pets?.insert(pet4)
        
        vet1.hospitals?.insert(hospital2)
        vet1.hospitals?.insert(hospital3)
        vet1.hospitals?.insert(hospital5)
        
        vet2.hospitals?.insert(hospital3)
        vet2.hospitals?.insert(hospital2)
        vet2.hospitals?.insert(hospital5)
        vet2.hospitals?.insert(hospital1)
        vet2.hospitals?.insert(hospital2)
        
        vet3.hospitals?.insert(hospital2)
        
        vet4.hospitals?.insert(hospital5)
        vet4.hospitals?.insert(hospital4)
        vet4.hospitals?.insert(hospital2)
        vet4.hospitals?.insert(hospital1)
        
        vet5.hospitals?.insert(hospital2)
        vet5.hospitals?.insert(hospital4)
        
        vet1.pets?.insert(pet4)
        vet1.pets?.insert(pet3)
        vet1.pets?.insert(pet1)
        
        vet2.pets?.insert(pet3)
        vet2.pets?.insert(pet1)
        vet2.pets?.insert(pet2)
        vet2.pets?.insert(pet4)
        
        vet3.pets?.insert(pet1)
        vet3.pets?.insert(pet3)
        vet3.pets?.insert(pet4)
        
        vet4.pets?.insert(pet3)
        
        vet5.pets?.insert(pet1)
        vet5.pets?.insert(pet5)
        
        pet1.hospital?.insert(hospital1)
        pet2.hospital?.insert(hospital3)
        pet3.hospital?.insert(hospital3)
        pet4.hospital?.insert(hospital5)
        pet5.hospital?.insert(hospital2)
        
        pet1.vet?.insert(vet2)
        pet2.vet?.insert(vet3)
        pet3.vet?.insert(vet1)
        pet4.vet?.insert(vet4)
        pet5.vet?.insert(vet5)
        
        saveContext()
        fetchData()
    }
    
    func fetchData() {
        
        let hospitalFetchRequest = NSFetchRequest<Hospital>(entityName: Hospital.entityName)
        let vetFetchRequest = NSFetchRequest<Vet>(entityName: Vet.entityName)
        let petFetchRequest = NSFetchRequest<Pet>(entityName: Pet.entityName)
        
        do {
            self.hospitals = try self.managedObjectContext.fetch(hospitalFetchRequest)
            self.vets = try self.managedObjectContext.fetch(vetFetchRequest)
            self.pets = try self.managedObjectContext.fetch(petFetchRequest)
            
        } catch let NSCoreDataError as NSError {
            print(NSCoreDataError)
        }
        
        if hospitals.count == 0  {
            generateTestData()
        }
        if vets.count == 0 {
            generateTestData()
        }
        if pets.count == 0 {
            generateTestData()
        }
        
    }
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
                print("Save() DATA to managedObjectContext successfull")
            } catch {
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                print("SAVE DATA FAILED!!")
            }
        }
    }
    
    // MARK: - Core Data stack
    // Managed Object Context property getter. This is where we've dropped our "boilerplate" code.
    // If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
    }()
    
    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = Bundle.main.url(forResource: "CoreDataAssessment2", withExtension: "momd")!
        return NSManagedObjectModel(contentsOf: modelURL)!
    }()
    
    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.appendingPathComponent("playingWithCoreData.sqlite")
        var failureReason = "There was an error creating or loading the application's saved data."
        do {
            try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: url, options: nil)
        } catch {
            // Report any error we got.
            var dict = [String: AnyObject]()
            dict[NSLocalizedDescriptionKey] = "Failed to initialize the application's saved data" as AnyObject?
            dict[NSLocalizedFailureReasonErrorKey] = failureReason as AnyObject?
            
            dict[NSUnderlyingErrorKey] = error as NSError
            let wrappedError = NSError(domain: "YOUR_ERROR_DOMAIN", code: 9999, userInfo: dict)
            // Replace this with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog("Unresolved error \(wrappedError), \(wrappedError.userInfo)")
            abort()
        }
        
        return coordinator
    }()
    
    //MARK: Application's Documents directory
    // Returns the URL to the application's Documents directory.
    
    lazy var applicationDocumentsDirectory: NSURL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "com.FlatironSchool.SlapChat" in the application's documents Application Support directory.
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return urls[urls.count-1] as NSURL
    }()
}
