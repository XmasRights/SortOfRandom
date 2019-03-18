//
//  main.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

do {
    let fileContents = try CommandLineParser.inputFileContents()
    let database = try Database(fileContents: fileContents)
    
    database.store.forEach { print($0) }
    
} catch {
    print(error)
}

