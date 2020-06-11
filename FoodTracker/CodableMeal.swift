//
//  CodableMeal.swift
//  FoodTracker
//
//  Created by Henry Calderon on 6/8/20.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

//class CodableMeal: Meal, Codable{
//    private enum CodingKeys: String, CodingKey{
//           case name, photo, rating
//       }
    
//    override init(){
//        super.init()
//    }
    
//    public required init(from decoder: Decoder) throws {
//        super.init(name: name, photo: photo, rating: rating)!
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.rating = try container.decode(Int.self, forKey: .rating)
//        self.photo = try container.decode(UIImage.self, forKey: .photo)
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//    }
//}
