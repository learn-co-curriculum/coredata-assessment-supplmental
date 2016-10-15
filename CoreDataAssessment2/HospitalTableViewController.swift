//
//  HospitalTableViewController.swift
//  CoreDataAssessment2
//
//  Created by Flatiron School on 10/13/16.
//  Copyright © 2016 Dennisvera. All rights reserved.
//

import UIKit
import CoreData

class HospitalTableViewController: UITableViewController {
    
    let sharedDataStore = DataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sharedDataStore.fetchData()
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        sharedDataStore.fetchData()
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sharedDataStore.hospitals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hospitalCell", for: indexPath)
        
        cell.textLabel?.text = sharedDataStore.hospitals[indexPath.row].name
        
        if let vetCount = sharedDataStore.hospitals[indexPath.row].vets {
            cell.detailTextLabel?.text = "\(vetCount.count)"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Veterinary Hospital Care Centers"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "hospitalSegue" {
            let detailVC = segue.destination as! ViewController
            guard let indexPath = self.tableView.indexPathForSelectedRow else {return}
            detailVC.hospital  = sharedDataStore.hospitals[indexPath.row]
        }
    }
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
}
