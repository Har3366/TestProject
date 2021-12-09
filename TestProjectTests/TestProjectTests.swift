//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by SF on 01.06.2021.
//

import XCTest
@testable import TestProject

class TestProjectTests: XCTestCase {
    let mockUser = UserMock(firstName: "Andry",
                            lastName: "Jigo",
                            bio: "I love sf",
                            city: "Moscow",
                            friends: [],
                            isClosed: true)
    let mockFriend = UserMock(firstName: "Sam",
                              lastName: "Majow",
                              bio: "I love sf",
                              city: "St.Petersburg",
                              friends: [],
                              isClosed: false)
    let mockNewName = "Alex"
    let mockNewLastName = "Pipetkin"
    let mockNewBio = "I want to be a hippy"
    let mockNewCity = "Khabarovsk"
    let mockNewIsClosed = Bool.random()
    
    
    func testChangeLastName() throws {
            mockUser.changeLastName(mockNewLastName)
            XCTAssertTrue(mockUser.changeLastNameCalledCount == 1)
            XCTAssertTrue(mockUser.changeLastNameCalled)
            XCTAssertTrue(mockUser.lastName == mockNewLastName)
        }
    
    func testChangeName() throws {
        mockUser.changeName(mockNewName)
        XCTAssertTrue(mockUser.changeNameCalledCount == 1)
        XCTAssertTrue(mockUser.changeNameCalled)
        XCTAssertTrue(mockUser.firstName == mockNewName)
    }
    
    func testChangeBio() throws {
        mockUser.changeBio(mockNewBio)
        XCTAssertTrue(mockUser.changeBioCalledCount == 1)
        XCTAssertTrue(mockUser.changeBioCalled)
        XCTAssertTrue(mockUser.bio == mockNewBio)
    }
    
    func testAddFriend() throws {
        mockUser.addFriend(mockFriend)
        XCTAssertTrue(mockUser.addFriendCalledCount == 1)
        XCTAssertTrue(mockUser.addFriendCalled)
        XCTAssertFalse(mockUser.friends.isEmpty)
        XCTAssertTrue(mockUser.friends[0].firstName == mockFriend.firstName)
    }
    
    func testChangeCity() throws{
        mockUser.changeCity(mockNewCity)
        XCTAssertTrue(mockUser.changeCityCalledCount == 1)
        XCTAssertTrue(mockUser.changeCityCalled)
        XCTAssertTrue(mockUser.city == mockNewCity)
    }
    
    func testChangeClosed() throws{
        mockUser.changeIsClosed(mockNewIsClosed)
        XCTAssertTrue(mockUser.changeIsClosedCount == 1)
        XCTAssertTrue(mockUser.changeIsClosed)
        XCTAssertTrue(mockUser.isClosed == mockNewIsClosed)
    }
}
