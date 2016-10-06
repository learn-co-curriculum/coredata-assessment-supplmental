//
//  PetTableViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PetTableViewController: UITableViewController
{

    let store = DataStore.sharedInstance
    
    override func viewDidLoad()
    {
        store.fetchPetData()
        super.viewDidLoad()
        
        self.title = "Patients"
        
    }

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return store.pets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "petCell", for: indexPath)

        cell.textLabel?.text = store.pets[indexPath.row].name
        let hospital = store.pets[indexPath.row].hospital
        if let hosp = hospital
        {
            cell.detailTextLabel?.text = hosp.name
        }
        
        return cell
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "petSegue"
        {
            let destinationVC = segue.destination as! PetDetailViewController
            
            let indexPath = tableView.indexPathForSelectedRow
            
            if let path = indexPath
            {
                destinationVC.pet = store.pets[path.row]
            }
        }
    }
    

}
