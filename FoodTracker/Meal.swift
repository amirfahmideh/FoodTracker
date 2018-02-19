//
//  Meal.swift
//  FoodTracker
//
//  Created by Amir Fahmideh on 2/19/18.
//

import UIKit
class Meal{
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        if name.isEmpty || rating < 0  {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    var name:String
    var photo: UIImage?
    var rating: Int
}

