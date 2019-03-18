//
//  PlayHistory.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

struct PlayHistory {
    private let data: [String : Int]
    
    init() {
        self.data = [String : Int]()
    }
    
    private init(data: [String : Int]) {
        self.data = data
    }
}

extension PlayHistory {
    
    func addGame(with player: String) -> PlayHistory {
        let count = data[player] ?? 0
        var update = data
        update[player] = count + 1
        return PlayHistory(data: update)
    }
}
