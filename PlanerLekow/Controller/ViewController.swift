//
//  ViewController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 29/11/2020.
//

import UIKit

class ViewController: UIViewController {

    

    @IBAction func my_drugs(_ sender: Any) {
        let storyboard = UIStoryboard(name: "drugs_list", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "drug_list")
        self.present(secondVC, animated: true, completion: nil)
    }
    
    
}

