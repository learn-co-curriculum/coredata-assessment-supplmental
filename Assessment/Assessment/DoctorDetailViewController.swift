//
//  DoctorDetailViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DoctorDetailViewController: UIViewController
{
    @IBOutlet weak var doctorsName: UILabel!
    @IBOutlet weak var listOfHospitals: UITextView!
    @IBOutlet weak var listOfPatients: UITextView!
    
    var doctor : Doctor?
    var hospitals : [String] = []
    var patients : [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let name = doctor?.name
        {
            self.doctorsName.text = name
            self.title = name
        }
        
        if let hospital = doctor?.hospitals
        {
            for hosp in hospital
            {
                if let hospName = hosp.name
                {
                    hospitals.append(hospName)
                }
                
            }
        }
        
        if let pets = doctor?.pets
        {
            for pet in pets
            {
                if let petName = pet.name
                {
                    patients.append(petName)
                }
            }
        }
        self.listOfHospitals.text = hospitals.joined(separator: ",\n")
        self.listOfPatients.text = patients.joined(separator: ",\n")
        
    }

  

}
