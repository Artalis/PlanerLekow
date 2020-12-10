//
//  Drug.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 30/11/2020.
//

import Foundation

struct Drug: Codable{
    var name: String
    var purpose: String
    var dosage: String
    var ingredients: String?
    var sideEffects: String?
    var contraindications: String?
}

