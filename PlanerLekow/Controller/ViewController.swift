//
//  ViewController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 29/11/2020.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    
    var user: String?
    var userDrugList = [UserDrugs]()
    var drugList = [Drug]()
    
    
    
    
    
    
  
    @IBAction func my_drugs(_ sender: Any) {
        
        drugListPrepare { (status) in
            if(status){
                self.userDrugListPrepare { (status2) in
                    if(status2){
                        let storyboard = UIStoryboard(name: "drugs_list", bundle: nil)
                        let secondVC = storyboard.instantiateViewController(identifier: "drug_list") as! DrugsTableViewController
                        secondVC.drugList = self.drugList
                        secondVC.userDrugList = self.userDrugList
                        self.present(secondVC, animated: true, completion: nil)
                        
                    }
                }
            }
            
        }
        
    
        
        
    }
    
    
    
    func drugListPrepare(completion: @escaping (Bool) -> ()){
        let collectionDrugs  = Firestore.firestore().collection("drugs")
        collectionDrugs.getDocuments(completion: { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                return completion(false)
            } else {
                for document in querySnapshot!.documents {
                    self.drugList.append(Parsers.parseMapToDrug(name: document.documentID,map: document.data()))
                    
                }
                return completion(true)
            }
        })
             
    }
    
    func userDrugListPrepare(completion: @escaping (Bool) -> ()){
        let collectionUserDrugs = Firestore.firestore().collection("users").document(user!)
        collectionUserDrugs.getDocument { (documentSnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                return completion(false)
            } else {
                
                self.userDrugList.append(contentsOf: Parsers.parseMapToUserDrug(data: documentSnapshot?.data()!["drugs"] as! [[String : Any]] ))
                return completion(true)
            }
        }
             
    }
}
    
    


