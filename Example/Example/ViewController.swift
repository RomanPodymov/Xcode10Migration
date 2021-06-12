//
//  ViewController.swift
//  Example
//
//  Created by Roman Podymov on 19.06.2018.
//  Copyright © 2018 roman.podymov. All rights reserved.
//

import UIKit
import Xcode9to10Preparation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testExtensionArray()
        testExtensionArraySlice()
    }

    private func testExtensionArray() {
        
        let testingValue1 = [1, 2, 3].allSatisfy { $0 > 0 }
        print(testingValue1)
        
        var testingValue2 = [1, 10, 4, 20, 6, 7, 30, 8, 2]
        testingValue2.removeAll(where: { $0 < 10 })
        print(testingValue2)
        
        if let testingValue3 = [1, 4, 10, 4, 1, 10, 4, 5, 1, 4, 5].firstIndex(where: { $0 == 4 }) {
            print(testingValue3)
        }
        
        if let testingValue4 = [1, 4, 10, 4, 1, 10, 4, 5, 1, 4, 5].lastIndex(where: { $0 == 4 }) {
            print(testingValue4)
        }
        
        let testingValue5 = [1, 10, 20, 5, 70, 90].starts(with: [1, 10, 20, 5, 70]) { $0 == $1 }
        print(testingValue5)
        
        let testingValue6 = [1:1, 2:2, 3:3, 4:4, 5:5].allSatisfy { $0.key == $0.value }
        print(testingValue6)
    }
    
    private func testExtensionArraySlice() {
        
        let testingValue1 = [1, 2, 3].dropLast().allSatisfy { $0 > 0 }
        print(testingValue1)
        
        var testingValue2 = [1, 10, 4, 20, 6, 7, 30, 8, 2].dropLast()
        testingValue2.removeAll(where: { $0 < 10 })
        print(testingValue2)
        
        if let testingValue3 = [1, 4, 10, 4, 1, 10, 4, 5, 1, 4, 5].dropLast().firstIndex(where: { $0 == 4 }) {
            print(testingValue3)
        }
        
        if let testingValue4 = [1, 4, 10, 4, 1, 10, 4, 5, 1, 4, 5].dropLast().lastIndex(where: { $0 == 4 }) {
            print(testingValue4)
        }
        
        let testingValue5 = [1, 10, 20, 5, 70, 90].dropLast().starts(with: [1, 10, 20, 5, 70]) { $0 == $1 }
        print(testingValue5)
    }

}

