//
//  main.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

do {
    print(try CommandLineParser.inputFileContents())
} catch {
    print(error)
}

