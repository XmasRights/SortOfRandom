//
//  Collection.Pairs.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 19/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

extension Collection {
    
    var allPairs: [(Element, Element)] {
        
        guard let first = self.first else {
            return []
        }
        
        let head = pair(element: first, with: dropFirst())
        let tail = dropFirst().allPairs
        return head + tail
    }

    private func pair(element: Element, with subsequence: SubSequence) -> [(Element, Element)] {
        guard !subsequence.isEmpty else {
            return []
        }
        return subsequence.map { (element, $0) }
    }
}
