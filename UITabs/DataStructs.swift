//
//  DataStructs.swift
//  UITabs
//
//  Structures to hold varying datatypes together.
//
//  Created by Christine Berger on 11/12/17.
//  Copyright © 2017 Christine Berger. All rights reserved.
//

import UIKit        //UIKit for doing UI stuff faster.

//Holds a hint ("name") and a corresponding image.
struct Boxes {
    var name: String
    var image: UIImage
}

//Holds a hint (which is designed to be used by "name" from Boxes) and an index at which it can
//be found on the gameboard.
struct Hints {
    var hint: String
    var index: Int
}
