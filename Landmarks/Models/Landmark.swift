//
//  Landmark.swift
//  Landmarks
//
//  Created by 水代謝システム工学研究室 on 2022/06/01.
//

import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Hashable, Codable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
 
extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
 
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
