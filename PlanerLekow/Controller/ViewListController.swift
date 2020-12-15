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
    
    var userDrugList = [UserDrugs]()
    var drugList = [Drug]()
    var user:String?
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDrugList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrugCell", for: indexPath) as! DrugTableViewCell

        let drug = userDrugList[indexPath.row].name
        cell.label?.text = drug

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for drug in drugList{
            if(drug.name == userDrugList[indexPath.row].name){
                let storyboard = UIStoryboard(name: "drugs_list", bundle: nil)
                let secondVC = storyboard.instantiateViewController(identifier: "drugDetail") as! DrugDetailController
                secondVC.user = user
                secondVC.drug = drug
                secondVC.drugList = drugList
                secondVC.userDrugList = userDrugList
                self.present(secondVC, animated: true, completion: nil)
            }
        }
        
        
    }
    
    @IBAction func gestureback(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "main_menu") as! ViewController
        
        secondVC.user = user
        self.present(secondVC, animated: true, completion: nil)
    }
    
}
