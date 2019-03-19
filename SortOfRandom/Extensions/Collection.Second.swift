//
//  Collection.Second.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

extension Collection {
    
    var second: Element? {
        return self.dropFirst().first
    }
}
