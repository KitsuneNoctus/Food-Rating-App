//
//  FileManager.swift
//  FoodTracker
//
//  Created by Henry Calderon on 6/8/20.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation

public extension FileManager{
    static var documentsDirectoryURL: URL = {
        FileManager.default.urls(for: .documentDirectory ,in: .userDomainMask).first!
    }()
}
