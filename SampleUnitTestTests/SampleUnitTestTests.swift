//
//  SampleUnitTestTests.swift
//  SampleUnitTestTests
//
//  Created by Jobin on 06/08/18.
//  Copyright © 2018 Jobin_Johny. All rights reserved.
//

import XCTest
@testable import SampleUnitTest

class SampleUnitTestTests: XCTestCase {
    var vc: ViewController!
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateViewController(withIdentifier: "jobin") as! ViewController
        
    }
    
    override func tearDown() {
        super.tearDown()
        
    }
    
    func testExample() {
    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
    func testcalculatePercentage() {
        let p = vc.calculatePercentage(percentage: 10, percentageValue: 100);
        XCTAssert(p == 10)
    }
    
}
