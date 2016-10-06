//
//  HospitalDetailViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HospitalDetailViewController: UIViewController
{

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var docNames: UITextView!
    
    var docArray : [String] = []
    var hospital : Hospital?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let name = hospital?.name
        {
            self.name.text = name
            self.title = name
        }
        if let doctors = hospital?.doctors
        {
            for names in doctors
            {
                if let unwrappedNames = names.name
                {
                    docArray.append(unwrappedNames)
                }
                
            }
            self.docNames.text = docArray.joined(separator: ",\n")
        }
        
    }

}
