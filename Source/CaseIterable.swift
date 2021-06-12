//
//  CaseIterable.swift
//  Pods
//
//  Created by Roman Podymov on 21.06.18.
//

#if XCODE_10_ENVIRONMENT
#else
public protocol CaseIterable {
    associatedtype AllCases : Collection where Self.AllCases.Element == Self

    static var allCases: Self.AllCases { get }
}
#endif
