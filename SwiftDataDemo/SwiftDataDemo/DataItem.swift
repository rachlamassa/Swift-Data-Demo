//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Rachael LaMassa on 1/8/25.
//

import Foundation
import SwiftData

@Model // store data item
class DataItem: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String) {
        
        self.id = UUID().uuidString
        self.name = name
        
    }
}
