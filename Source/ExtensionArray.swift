//
//  ExtensionArray.swift
//  Pods
//
//  Created by Roman Podymov on 21.06.18.
//

#if XCODE_10_ENVIRONMENT
#else
public extension Array {
    func allSatisfy(_ predicate: (Element) throws -> Bool) rethrows -> Bool {
        return try !self.contains {
            return try !predicate($0)
        }
    }

    mutating func removeAll(where predicate: (Element) throws -> Bool) rethrows {
        let indexesToRemove = try self.enumerated().reduce([Int]()) {
            if try predicate($1.element) {
                return $0 + [$1.offset]
            }
            return $0
        }
        indexesToRemove.enumerated().forEach {
            let currentOffset = $0.offset
            self.remove(at: indexesToRemove[currentOffset] - currentOffset)
        }
    }
    
    func firstIndex(where predicate: (Element) throws -> Bool) rethrows -> Int? {
        return try self.enumerated().first(where: {
            return try predicate($0.element)
        })?.offset
    }

    func lastIndex(where predicate: (Element) throws -> Bool) rethrows -> Int? {
        let reversedArray = self.enumerated().reversed()
        guard let lastItemOffset = try reversedArray.first(where: {
            return try predicate($0.element)
        })?.offset else {
            return nil
        }
        return self.count - lastItemOffset - 1
    }
    
    func starts<PossiblePrefix>(with possiblePrefix: PossiblePrefix, by areEquivalent: (Element, PossiblePrefix.Element) throws -> Bool) rethrows -> Bool where PossiblePrefix : Sequence {
        guard let possiblePrefixElementsCount = try? possiblePrefix.count() else {
            return false
        }
        if possiblePrefixElementsCount > self.count {
            return false
        }
        return try !zip(self, possiblePrefix).contains{ try !areEquivalent($0, $1) }
    }
}

fileprivate extension Sequence {
    private static func predicateTrue(element: Element) -> Bool {
        return true
    }

    private static func predicateFalse(element: Element) -> Bool {
        return !predicateTrue(element: element)
    }

    func count(predicate: (Element) throws -> Bool = predicateTrue) rethrows -> Int {
        return try self.reduce(0) { currentResult, currentElement in
            return currentResult + (try predicate(currentElement) ? 1 : 0)
        }
    }
}
#endif
