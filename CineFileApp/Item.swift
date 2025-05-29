//
//  Item.swift
//  CineFileApp
//
//  Created by Thayssa Romão on 29/05/25.
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
