//
//  ScavengerHuntItem.swift
//  Scavenger Hunt
//
//  Created by Apple on 1/27/16.
//  Copyright © 2016 Sneha Vaswani. All rights reserved.
//

import UIKit

class ScavengerHuntItem: NSObject {
    
    let name: String
    var photo: UIImage?
    
    var completed: Bool {
        get {
            return photo != nil
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
}
