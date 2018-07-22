//
//  Item.swift
//  Todoey
//
//  Created by Amornchot Singh on 7/21/18.
//  Copyright © 2018 Amornchot Singh. All rights reserved.
//

import Foundation

//Codable -> encodable and decodable
class Item: Codable {
    var title : String = ""
    var done: Bool = false
}
