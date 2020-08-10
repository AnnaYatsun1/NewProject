//
//  Parser.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import UIKit
enum ParserErrors: Error {
    
    case dataError
}

class Parser<Object: Decodable> {
    
    func object(from data: Data?) -> Result<Object, Error> {
        return data
            .flatMap {
                try? JSONDecoder().decode(Object.self, from: $0)
            }
            .map {
                .success($0)
            }
            ?? .failure(ParserErrors.dataError)
    }
}

