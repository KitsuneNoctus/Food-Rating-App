//
//  Meal.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 11/10/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit


class Meal: Codable{
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    private enum CodingKeys: String, CodingKey{
        case name, photo, rating
    }
    
    //MARK: Document Directory
//    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("meals")
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }

        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.rating = try container.decode(Int.self, forKey: .rating)
        let image = try container.decode(Data.self, forKey: .photo)
        photo = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(image) as? UIImage
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        let photoData = try NSKeyedArchiver.archivedData(withRootObject: photo, requiringSecureCoding: false)
        try container.encode(photoData, forKey: .photo)
        try container.encode(rating, forKey: .rating)
    }
    
}
