//
//  SignInController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 10/12/2020.
//


import UIKit
import FirebaseFirestore

class SignInController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passField1: UITextField!
    @IBOutlet weak var passField2: UITextField!
    @IBOutlet weak var errorMessage: UITextView!
    
    private let collection = Firestore.firestore().collection("users")
    
    @IBAction func signInButton(_ sender: Any) {
        if(checkData(username: nameField.text, password: passField1.text, password2: passField2.text)){
            completeList(completion: { (status) in
                if (status){
                    self.navigationController?.popViewController(animated: true)
                }
            })
        }else{
            errorMessage.textColor = UIColor.red
            errorMessage.text = "Proszę wypełnić wszystkie pola poprawnie"
        }
        
        
    }
    
    @IBAction func tapAnywhere(_ sender: Any) {
        view.endEditing(true)
    }
   
    
    func completeList(completion: @escaping (Bool) -> ()){
        collection.getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                return completion(false)
            } else {
                
                for document in querySnapshot!.documents {
                    if((self.nameField.text!.compare(String(document.documentID))).rawValue==0){
                        self.errorMessage.textColor = UIColor.red
                        self.errorMessage.text = "Ta nazwa jest już zajęta"
                        return completion(false)
                    }
                    
                }
                let user = [
                    "password": Encrypt.encrypt(text: self.passField1.text!)!,
                    "drugs": [UserDrugs](),
                ] as [String : Any]
                
                let _: Void = Firestore.firestore().collection("users").document(self.nameField.text!).setData(user)
                return completion(true)
            }
        }
    }
    
    func checkData(username: String?, password: String?, password2: String?) -> Bool{
        if(username=="") {return false}
        if(username?.count ?? 0 < 4) {return false}
        if(password=="") {return false}
        if(password?.count ?? 0 < 4) {return false}
        if(password2 != password) {return false}
        return true
    }
}


