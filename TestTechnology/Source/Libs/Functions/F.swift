//
//  Functions.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import Foundation

func toString(_ class: AnyClass) -> String {
    return String(describing: `class`)
}

public func cast<Value, Result>(_ value: Value) -> Result? {
    return value as? Result
}

public func when<Result>(_ condition: Bool, execute: () -> Result?) -> Result? {
    return condition ? execute() : nil
}