//
//  Simpson.swift
//  SimpsonBook
//
//  Created by Sezer on 27.07.2022.
//

import Foundation
import UIKit

class Simpson{
    var name:String
    var job:String
    var image=UIImage()
    
    init(simpsonName:String, simpsonDescription:String, simpsonImage:UIImage){
        name = simpsonName
        job = simpsonDescription
        image=simpsonImage
    }
}
