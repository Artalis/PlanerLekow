//
//  LogInController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 10/12/2020.
//


import UIKit
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG
import FirebaseFirestore



class LogInController: UIViewController {
    
   
    private let collection = Firestore.firestore().collection("users")
    
    @IBAction func returnKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var errorMessage: UITextView!
    
    
    @IBAction func logInBtn(_ sender: Any) {
        if(checkData(username: nameField.text, password: passField.text)){
            completeList { (status) in
                if (status){
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let secondVC = storyboard.instantiateViewController(identifier: "main_menu") as! ViewController
                    secondVC.user = self.nameField.text
                    self.present(secondVC, animated: true, completion: nil)
                }else{
                    self.errorMessage.textColor = UIColor.red
                    self.errorMessage.text = "Niepoprawne dane logowania"
                }
            }
            
        }else{
            self.errorMessage.textColor = UIColor.red
            self.errorMessage.text = "Niepoprawne dane logowania"
        }
        
    }
    
    
    func checkData(username: String?, password: String?) -> Bool{
        if(username=="") {return false}
        if(username?.count ?? 0 < 4) {return false}
        if(password=="") {return false}
        if(password?.count ?? 0 < 4) {return false}
        return true
    }
    
    
    func completeList(completion: @escaping (Bool) -> ()){
        collection.getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
                return completion(false)
            } else {
                
                for document in querySnapshot!.documents {
                    if((self.nameField.text!.compare(String(document.documentID))).rawValue==0){
                        let pass = document.data()["password"]
                        if(pass as? String == Encrypt.encrypt(text: self.passField.text!)){
                            return completion(true)
                            
                        }
                    }
                    
                }
                return completion(false)
                
            }
        }
    }
    
    
    
}

class Encrypt{
    static func encrypt(text: String) -> String?{
        let length = Int(CC_MD5_DIGEST_LENGTH)
        let messageData = text.data(using:.utf8)!
        var digestData = Data(count: length)
        _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in messageData.withUnsafeBytes { messageBytes -> UInt8 in if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress { let messageLength = CC_LONG(messageData.count)
            CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                        }
                        return 0
                    }
                }
        return digestData.base64EncodedString()
    }
}
