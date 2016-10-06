//
//  PetDetailViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PetDetailViewController: UIViewController
{

    @IBOutlet weak var doctor: UILabel!
    @IBOutlet weak var hospital: UILabel!
    @IBOutlet weak var name: UILabel!
    var pet : Pet?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let unwrappedName = pet?.name
        {
            self.name.text = unwrappedName
            self.title = unwrappedName
        }
        if let unwrappedHospital = pet?.hospital?.name
        {
            self.hospital.text = unwrappedHospital
        }
        if let unwrappedDoctor = pet?.doctors?.name
        {
            self.doctor.text = unwrappedDoctor
        }
    }



}
