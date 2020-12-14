//
//  Parser.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 10/12/2020.
//

import Foundation

class Parsers {

   

    static func parseMapToUserDrug(data: [[String: Any]]) -> [UserDrugs]{
        var drugs = [UserDrugs]()
        for map in data{
           let drug =  UserDrugs(
                name: map["name"] as! String,
                dose: Int((map["dose"] as! Int64)),
                pillsOwned: Int(map["pillsOwned"] as! Int64),
                alerts: map["alerts"] as! [String],
                additionalInfo: map["additionalInfo"] as! String
            )
            drugs.append(drug)
        }
      return drugs
    }

    static func parseMapToDrug(name: String,map: [String: Any]) -> Drug{
        let name = name
        return Drug(
                name: name,
                purpose: map["purpose"] as! String,
                dosage: map["dosage"] as! String,
                ingredients: map["ingredients"] as? String,
                sideEffects: map["sideEffects"] as? String,
                contraindications: map["contraindications"] as? String
            )
            
        }
       
    

    
}


