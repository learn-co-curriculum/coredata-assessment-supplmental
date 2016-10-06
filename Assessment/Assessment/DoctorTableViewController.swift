//
//  DoctorTableViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DoctorTableViewController: UITableViewController
{

    let store = DataStore.sharedInstance
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        store.fetchDoctorData()
        
        self.title = "Doctors"
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return store.doctors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "doctorCell", for: indexPath)

        let numbersOfHospital = String(store.doctors[indexPath.row].hospitals.count)
        
        cell.textLabel?.text = store.doctors[indexPath.row].name
        cell.detailTextLabel?.text = "Hospital Count: \(numbersOfHospital)"
        
        return cell
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "doctorSegue"
        {
            let destinationVC = segue.destination as! DoctorDetailViewController
            
            let indexpath = tableView.indexPathForSelectedRow
            
            if let path = indexpath
            {
                destinationVC.doctor = store.doctors[path.row]
            }
        }
    }
    

}
