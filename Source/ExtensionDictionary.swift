//
//  ExtensionDictionary.swift
//  Pods
//
//  Created by Roman Podymov on 14.10.18.
//

#if XCODE_10_ENVIRONMENT
#else
public extension Dictionary {
    func allSatisfy(_ predicate: ((key: Key, value: Value)) throws -> Bool) rethrows -> Bool {
        return try !self.contains { try !predicate($0) }
    }
}
#endif
