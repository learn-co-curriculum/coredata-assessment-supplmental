//
//  HospitalTableViewController.swift
//  Assessment
//
//  Created by Flatiron School on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HospitalTableViewController: UITableViewController
{
    
    let store = DataStore.sharedInstance
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        store.fetchData()
        
        self.title = "Hospitals"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return store.hospitals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hospitalCell", for: indexPath)

        let numbersOfDoctors = String(store.hospitals[indexPath.row].doctors.count)
        
        cell.textLabel?.text = store.hospitals[indexPath.row].name
        cell.detailTextLabel?.text = "Doctors count: \(numbersOfDoctors)"
        
        return cell
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "hospitalSegue"
        {
            let destinationVC = segue.destination as! HospitalDetailViewController
            
            let indexPath = tableView.indexPathForSelectedRow
            
            if let path = indexPath
            {
                destinationVC.hospital = store.hospitals[path.row]
            }
            
        }
    }
    

}
