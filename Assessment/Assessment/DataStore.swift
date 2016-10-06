//
//  DataStore.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreData

class DataStore
{
    static let sharedInstance = DataStore()
    
    var hospitals : [Hospital] = []
    var doctors : [Doctor] = []
    var pets : [Pet] = []
    
    
    func fetchData()
    {
        
        let userRequest = NSFetchRequest<Hospital>(entityName: "Hospital")
        
        do{
            hospitals = try managedObjectContext.fetch(userRequest)
        }
        catch
        {
            print(error)
            hospitals = []
        }
        
        if hospitals == []
        {
            generateData()
        }
        
    }
    
    func fetchDoctorData()
    {
        let userRequest = NSFetchRequest<Doctor>(entityName: "Doctor")
        
        do{
            doctors = try managedObjectContext.fetch(userRequest)
        }
        catch
        {
            print(error)
            doctors = []
        }
        
        if doctors == []
        {
            generateData()
        }
    }
    
    func fetchPetData()
    {
        let userRequest = NSFetchRequest<Pet>(entityName: "Pet")
        
        do{
            pets = try managedObjectContext.fetch(userRequest)
        }
        catch
        {
            print(error)
            pets = []
        }
        
        if pets == []
        {
            generateData()
        }
    }
    
    func generateData()
    {
        let hospital1 = NSEntityDescription.insertNewObject(forEntityName: "Hospital", into: self.managedObjectContext) as! Hospital
        
        hospital1.name = "Tardis Hospital"
        
        let hospital2 = NSEntityDescription.insertNewObject(forEntityName: "Hospital", into: self.managedObjectContext) as! Hospital
        
        hospital2.name = "Grey's Ananomy Hospital"
        
        let hospital3 = NSEntityDescription.insertNewObject(forEntityName: "Hospital", into: self.managedObjectContext) as! Hospital
        
        hospital3.name = "Flatiron Hospital"
        
        let hospital4 = NSEntityDescription.insertNewObject(forEntityName: "Hospital", into: self.managedObjectContext) as! Hospital
        
        hospital4.name = "DaGhetto Vet Hospital"
        
        
    /****************************************************************************************/
        
        let doctor1 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor1.name = "The Doctor"
        
        let doctor2 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor2.name = "Who"
        
        let doctor3 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor3.name = "Meredith Grey"
        
        let doctor4 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor4.name = "Cristina Yang"
        
        let doctor5 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor5.name = "Alex Karev"
        
        
        let doctor6 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor6.name = "Johann"
        
        let doctor7 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor7.name = "Susan"
        
        let doctor8 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor8.name = "Joel"
        
        let doctor9 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor9.name = "Ian"
        
        let doctor10 = NSEntityDescription.insertNewObject(forEntityName: "Doctor", into: self.managedObjectContext) as! Doctor
        
        doctor10.name = "Susan Zheng"
        
        
        let pet1 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet

        pet1.name = "Marlon"
        
        let pet2 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet2.name = "Stella"
        
        let pet3 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet3.name = "Emma"
        
        let pet4 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet4.name = "Lily"
        
        let pet5 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet5.name = "Melissa"
        
        let pet6 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet6.name = "Tony"
        
        let pet7 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet7.name = "Joseph"
        
        let pet8 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet8.name = "Erol"
        
        let pet9 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet9.name = "Spike"
        
        let pet10 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet10.name = "Spots"
        
        let pet11 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet11.name = "Dan"
        
        let pet12 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet12.name = "Erika"
        
        let pet13 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet13.name = "Jesse"
        
        let pet14 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet14.name = "Rod"
        
        let pet15 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet15.name = "Summer"
        
        let pet16 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet16.name = "Jeff"
        
        let pet17 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet17.name = "Jeremy"
        
        let pet18 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet18.name = "Ryan"
        
        let pet19 = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: self.managedObjectContext) as! Pet
        
        pet19.name = "Roy"
        
        
        
        
        hospital1.doctors.insert(doctor1)
        hospital1.doctors.insert(doctor2)
        hospital1.doctors.insert(doctor10)
        hospital1.doctors.insert(doctor6)
        hospital1.doctors.insert(doctor8)
        
        hospital2.doctors.insert(doctor1)
        hospital2.doctors.insert(doctor2)
        hospital2.doctors.insert(doctor3)
        hospital2.doctors.insert(doctor4)
        hospital2.doctors.insert(doctor5)
        hospital2.doctors.insert(doctor9)
        hospital2.doctors.insert(doctor10)
        
        hospital3.doctors.insert(doctor3)
        hospital3.doctors.insert(doctor6)
        hospital3.doctors.insert(doctor7)
        hospital3.doctors.insert(doctor8)
        hospital3.doctors.insert(doctor9)
        
        hospital4.doctors.insert(doctor4)
        hospital4.doctors.insert(doctor5)
        hospital4.doctors.insert(doctor6)
        hospital4.doctors.insert(doctor7)
        hospital4.doctors.insert(doctor10)
        
        
        doctor1.pets.insert(pet1)
        doctor1.pets.insert(pet2)
        doctor1.pets.insert(pet3)
        doctor1.pets.insert(pet4)
        
        doctor2.pets.insert(pet5)
        doctor2.pets.insert(pet6)
        doctor2.pets.insert(pet7)
        
        doctor3.pets.insert(pet8)
        doctor3.pets.insert(pet9)
        doctor3.pets.insert(pet10)
        doctor3.pets.insert(pet11)
        
        doctor4.pets.insert(pet12)
        doctor4.pets.insert(pet13)
        
        doctor5.pets.insert(pet14)
        doctor5.pets.insert(pet15)
        doctor5.pets.insert(pet16)
        
        doctor6.pets.insert(pet17)
        doctor6.pets.insert(pet18)
        doctor6.pets.insert(pet19)
        
        doctor7.pets.insert(pet1)
        doctor7.pets.insert(pet13)
        doctor7.pets.insert(pet10)
        
        doctor8.pets.insert(pet13)
        doctor8.pets.insert(pet4)
        
        doctor9.pets.insert(pet2)
        doctor9.pets.insert(pet17)
        doctor9.pets.insert(pet7)
        
        doctor10.pets.insert(pet9)
        doctor10.pets.insert(pet10)
        doctor10.pets.insert(pet11)
        doctor10.pets.insert(pet18)
        
        pet1.hospital = hospital1
        pet2.hospital = hospital1
        pet3.hospital = hospital1
        pet4.hospital = hospital4
        pet5.hospital = hospital2
        pet6.hospital = hospital2
        pet7.hospital = hospital2
        pet8.hospital = hospital3
        pet9.hospital = hospital3
        pet10.hospital = hospital4
        pet11.hospital = hospital4
        pet12.hospital = hospital4
        pet13.hospital = hospital4
        pet14.hospital = hospital1
        pet15.hospital = hospital3
        pet16.hospital = hospital1
        pet17.hospital = hospital2
        pet18.hospital = hospital3
        pet19.hospital = hospital4
        
        
        saveContext()
        fetchData()
    }
    
    
    
    // MARK: - Core Data stack
    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
    }()
    
    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = Bundle.main.url(forResource: "Assessment", withExtension: "momd")!
        return NSManagedObjectModel(contentsOf: modelURL)!
    }()
    
    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.appendingPathComponent("movieDataModel.sqlite")
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
    
    lazy var applicationDocumentsDirectory: URL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "com.FlatironSchool.SlapChat" in the application's documents Application Support directory.
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return urls[urls.count-1]
    }()
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "Assessment")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
