//
//  Parser.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 10/12/2020.
//

import Foundation

class Parsers {


    static func parseToDrugsList(data: [[String: Any]]){
        data.map{parseMapToDrug(map: $0)}
    }
        
            

    static func parseMapToDrug(map: [String: Any]){
        UserDrugs(
            name: map["name"] as! String,
            dose: Int((map["dose"] as! Int64)),
            pillsOwned: Int(map["pillsOwned"] as! Int64),
            alerts: map["alerts"] as! [String],
            additionalInfo: map["additionalInfo"] as! String
            )
    }

    static func parseMapToDrug(list: [(String, [String: Any])]) {
        list.map{
            let name = $0.0
            let map = $0.1
                Drug(
                    name: name,
                    purpose: map["purpose"] as! String,
                    dosage: map["dosage"] as! String,
                    ingredients: map["ingredients"] as? String,
                    sideEffects: map["sideEffects"] as? String,
                    contraindications: map["contraindications"] as? String
                )
            }
       
    }

    
}


