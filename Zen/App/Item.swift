//
//  Item.swift
//  Zen
//
//  Created by Afi Permana on 08/12/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
