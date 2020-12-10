//
//  ViewListController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 30/11/2020.
//

import UIKit


class DrugTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
}


class DrugsTableViewController: UITableViewController {
    
    let drugsList = ["Apap", "Witamina C"]
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drugsList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrugCell", for: indexPath) as! DrugTableViewCell

        let drug = drugsList[indexPath.row]
        cell.label?.text = drug

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row: \(indexPath.row)")
    }
}
