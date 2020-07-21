//
//  CountSmallerElements.swift
//  asdfgh
//
//  Created by Parmod on 17/07/20.
//  Copyright © 2020 Parmod. All rights reserved.
//

import Foundation

typealias SmallerElementsCount = Int

class CountSmallerElements {
    func countSmaller(_ nums: [Int]) -> [Int] {
        let reversedArr: [Int] = nums.reversed()
        var smallerElementsCountArray: [SmallerElementsCount] = []
        guard let last = reversedArr.first else {
            return smallerElementsCountArray
        }
        
        let bst: BST = BST(rootNode: BSTNode(data: last))
        
        for index in 1...reversedArr.count - 1 {
            let smallerElementCount: SmallerElementsCount =  bst.insertNode(node: BSTNode(data: reversedArr[index]))
            smallerElementsCountArray.append(smallerElementCount)
        }
        
        smallerElementsCountArray.reverse()
        smallerElementsCountArray.append(0)
        return smallerElementsCountArray
    }
}
