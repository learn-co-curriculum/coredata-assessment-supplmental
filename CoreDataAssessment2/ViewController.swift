//
//  ViewController.swift
//  CoreDataAssessment2
//
//  Created by Flatiron School on 10/13/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var title3Label: UILabel!
    
    let sharedDataStore = DataStore()
    
    var hospital: Hospital?
    var veterinarian: Vet?
    var pet: Pet?
    
    var hospitals = [String]()
    var vetNames = [String]()
    var petNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedDataStore.fetchData()
        hospitalDetails()
        veterinarianDetails()
        petDetails()
    }
    
    func hospitalDetails() {
        
        guard let hospitalName = hospital?.name else {return}
        title1Label.text = hospitalName
        
        guard let unwrappedVet = hospital?.vets else {return}
        for vet in unwrappedVet {
            vetNames.append(vet.name!)
        }
        
        guard let unwrappedPet = hospital?.pets else {return}
        for pet in unwrappedPet {
            petNames.append(pet.name!)
        }

        title2Label.text = "Veterinarian:\n\(vetNames.joined(separator: ", "))"
        title3Label.text = "PetName:\n\(petNames.joined(separator: ", "))"
    }
    
    func veterinarianDetails() {
        
        guard let vetName = veterinarian?.name else {return}
        title1Label.text = vetName
        
        guard let unwrappedHospital = veterinarian?.hospitals else {return}
        for hospital in unwrappedHospital {
            hospitals.append(hospital.name!)
        }
        
        guard let unwrappedPet = veterinarian?.pets else {return}
        for pet in unwrappedPet {
            petNames.append(pet.name!)
        }
        
        title2Label.text = "Medical Center:\n\(hospitals.joined(separator: ", "))"
        title3Label.text = "Pet Name:\n\(petNames.joined(separator: ", "))"
    }
    
    func petDetails() {
        
        guard let petName = pet?.name else {return}
        title1Label.text = petName
        
        guard let unwrappedHospital = pet?.hospital else {return}
        for hospital in unwrappedHospital {
            hospitals.append(hospital.name!)
        }
        
        guard let unwrappedVet = pet?.vet else {return}
        for vet in unwrappedVet {
            vetNames.append(vet.name!)
        }
        
        title2Label.text = "Medical Center:\n\(hospitals.joined(separator: ", "))"
        title3Label.text = "Veterinarian:\n\(vetNames.joined(separator: ", "))"
    }
    
    

    
    
}












