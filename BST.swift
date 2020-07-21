//
//  BST.swift
//  asdfgh
//
//  Created by Parmod on 17/07/20.
//  Copyright © 2020 Parmod. All rights reserved.
//

import Foundation

class BST {
    private let rootNode: BSTNode
    
    init(rootNode: BSTNode) {
        self.rootNode = rootNode
    }
    
    private func insertNode(node: BSTNode, current: BSTNode, smallerElementsCount: inout SmallerElementsCount) {
        if current.data < node.data {
            smallerElementsCount += current.count
            if let rightNode = current.rightNode {
                insertNode(node: node, current: rightNode, smallerElementsCount: &smallerElementsCount)
            } else {
                current.rightNode = node
            }
        } else {
            current.count += 1
            if let leftNode = current.leftNode {
                insertNode(node: node, current: leftNode, smallerElementsCount: &smallerElementsCount)
            } else {
                current.leftNode = node
            }
        }
        
    }
    
    func insertNode(node: BSTNode) -> SmallerElementsCount {
        var smallerElementsCount: SmallerElementsCount = 0
        insertNode(node: node, current: rootNode, smallerElementsCount: &smallerElementsCount)
        return smallerElementsCount
    }
}
