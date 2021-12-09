
//let app = XCUIApplication()

//
//  TestProjectUITests.swift
//  TestProjectUITests
//
//  Created by SF on 01.06.2021.
//

import XCTest
@testable import TestProject
class TestProjectUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        let userTableView = app.tables["userTableView"]
        let cells = userTableView.cells.containing(.cell, identifier: "userCell")
        let cellText = cells.staticTexts.element(boundBy: 0).label
        cells.element(boundBy: 0).tap()
        let userNameLabel = app.staticTexts["userNameLabel"]
        XCTAssertTrue(userNameLabel.exists)
        XCTAssertEqual(userNameLabel.label,cellText)
        let userFriendLabel = app.staticTexts["userFriendLabel"]
        XCTAssertTrue(userFriendLabel.exists)
        let userIsClosed = app.switches["userIsClosed"]
        XCTAssertTrue(userIsClosed.exists)
    }

   
}
