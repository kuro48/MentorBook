//
//  Mentor.swift
//  MentorBook
//
//  Created by 黒川龍之介 on 2022/02/14.
//

import UIKit

class Mentor{
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init (name: String!,imageName: String!,course: String!){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
