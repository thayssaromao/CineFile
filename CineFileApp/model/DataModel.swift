//
//  DataFilm.swift
//  CineFileApp
//
//  Created by Ana Luisa Luy on 30/05/25.
//

import Foundation

struct Film: Identifiable {
    let id = UUID()
    
    let image: String
    let title: String
    let director: String
    let description: String
    let foto: String
    var isLiked = false
    var isViewed = false
}
