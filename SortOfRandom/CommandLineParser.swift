//
//  CommandLineParser.swift
//  SortOfRandom
//
//  Created by Christopher Fonseka on 18/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

struct CommandLineParser {
    
    enum CLPError: Error {
        case missingInputFile
    }
    
    static func inputFileContents() throws -> String {
        guard let filename = CommandLine.arguments.second else {
            throw CLPError.missingInputFile
        }
        let url = URL(fileURLWithPath: filename)
        return try String(contentsOf: url)
    }
}

private extension Collection {
    
    var second: Element? {
        return self.dropFirst().first
    }
}
