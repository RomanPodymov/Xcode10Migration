//
//  ExtensionBool.swift
//  Pods
//
//  Created by Roman Podymov on 21.06.18.
//

#if XCODE_10_ENVIRONMENT
#else
public extension Bool {
    mutating func toggle() {
        self = !self
    }
}
#endif
