//
//  BSTNode.swift
//  asdfgh
//
//  Created by Parmod on 17/07/20.
//  Copyright © 2020 Parmod. All rights reserved.
//

import Foundation

class BSTNode {
    let data: Int
    var count: Int = 1
    var leftNode: BSTNode?
    var rightNode: BSTNode?
    
    init(data: Int) {
        self.data = data
    }
}
