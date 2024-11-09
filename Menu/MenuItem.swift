//
//  MenuItem.swift
//  Menu
//
//  Created by Antony Holshouser on 11/8/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
