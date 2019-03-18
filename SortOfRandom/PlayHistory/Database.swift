//
//  Database.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

final class Database {
    
    let store: [String : PlayHistory]
    
    enum DatabaseError: Error {
        case invalidLine
    }
    
    init(fileContents: String) throws {
        self.store = try Database.parse(fileContents: fileContents)
    }
}

private extension Database {
    
    static func parse(fileContents: String) throws -> [String : PlayHistory] {
        
        var history = [String : PlayHistory]()
        
        let lines = fileContents.split(separator: "\n")
        let tuples = try lines.map { line -> (String, String) in
            let tokens = String(line).split(separator: ",")
            guard let first = tokens.first,
                  let second = tokens.second else {
                    throw DatabaseError.invalidLine
            }
            return (String(first), String(second))
        }
        
        tuples.forEach { line in
            
            let p0History = history[line.0] ?? PlayHistory()
            let p0Update  = p0History.addGame(with: line.1)
            
            let p1History = history[line.1] ?? PlayHistory()
            let p1Update  = p1History.addGame(with: line.0)
            
            history[line.0] = p0Update
            history[line.1] = p1Update
        }
        
        return history
    }
}
