//
//  UserDrugs.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 30/11/2020.
//

import Foundation

struct UserDrugs: Codable{
    var name: String
    var dose: Int
    var pillsOwned: Int
    var alerts = [String]()
    var additionalInfo : String
}
