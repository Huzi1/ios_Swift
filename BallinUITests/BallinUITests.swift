//
//  BallinUITests.swift
//  BallinUITests
//
//  Created by 茆大蔚 on 22/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import XCTest

class BallinUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
                        // Use XCTAssert and related functions to verify your tests produce the correct results.
                
    }

//    func testLaunchPerformance() {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    func testGame(){
        let app = XCUIApplication()
        app.launch()
        //Query collections or elements for values
        let numButtons = app.buttons.count
        let numLabels = app.staticTexts.count
        XCTAssertEqual(numButtons, 6)
        XCTAssertEqual(numLabels, 181)
    }
    func testTeam(){
        let app = XCUIApplication()
        app.launch()
        app.tabBars.buttons["Team"].tap()
        let numLabels = app.staticTexts.count
        app.swipeUp()
        app.swipeUp()
        XCTAssertEqual(numLabels, 15)
        let string = app.staticTexts.element(matching: .any, identifier: "Jazz").label
        XCTAssertEqual(string, "Jazz")
        
    }
    func testProfileDetail(){
        let app = XCUIApplication()
        app.launch()
        app.tabBars.buttons["Profile"].tap()
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.staticText, identifier:"David").element.tap()
        let numButtons = app.buttons.count
        let numLabels = app.staticTexts.count
        XCTAssertEqual(numButtons, 5)
        XCTAssertEqual(numLabels, 7)
    }
    func testProfile(){
        let app = XCUIApplication()
        app.launch()
        app.tabBars.buttons["Profile"].tap()
        let numButtons = app.buttons.count
        let numLabels = app.staticTexts.count
        XCTAssertEqual(numButtons, 4)
        XCTAssertEqual(numLabels, 4)
    }
    func testTeamDetail(){
        let app = XCUIApplication()
        app.launch()
        app.tabBars.buttons["Team"].tap()
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.staticText, identifier:"Rockets").element.tap()
        let numButtons = app.buttons.count
        let numLabels = app.staticTexts.count
        XCTAssertEqual(numButtons, 5)
        XCTAssertEqual(numLabels, 39)
    }
    
    func testRecord(){
        
//        let app = XCUIApplication()
//        app.launch()
//        let tabBarsQuery = app.tabBars
//        tabBarsQuery.buttons["Games"].tap()
//        app.buttons["More Info"].tap()
//        app.sheets.buttons["Ok"].tap()
//        tabBarsQuery.buttons["Player"].tap()
//        app.collectionViews.cells.otherElements.containing(.image, identifier:"hawks").element.tap()
//        app.navigationBars["Ballin.TeamDetailView"].buttons["Back"].tap()
//        let cellsQuery = app.collectionViews.cells
//        cellsQuery.otherElements.containing(.image, identifier:"david").element.tap()
//        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .collectionView).element.tap()
//
//        tabBarsQuery.buttons["Team"].tap()
//        cellsQuery.otherElements.containing(.image, identifier:"rockets").element.tap()
//        XCUIDevice.shared.orientation = .landscapeRight
//        tabBarsQuery.buttons["Games"].tap()
//        app.buttons["Button"].tap()
        
        
        let app = XCUIApplication()
        app.buttons["More Info"].tap()
        
        let tablesQuery = app.tables
        tablesQuery.children(matching: .cell).element(boundBy: 1).staticTexts["Location: Laverton\nhome score: 100 \nAway score: 120"].swipeUp()
        tablesQuery.children(matching: .cell).element(boundBy: 6).staticTexts["22.09.2019 23:36"].swipeUp()
        
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Team"].tap()
        
        let cellsQuery = app.collectionViews.cells
        let nuggetsElement = cellsQuery.otherElements.containing(.image, identifier:"nuggets").element
        nuggetsElement.swipeUp()
        
        let backButton = app.navigationBars["Ballin.TeamDetailView"].buttons["Back"]
        backButton.tap()
        nuggetsElement.swipeUp()
        backButton.tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.children(matching: .collectionView).element.swipeUp()
        XCUIDevice.shared.orientation = .landscapeRight
        cellsQuery.otherElements.containing(.image, identifier:"thunder").element.swipeLeft()
        element.swipeLeft()
        element.swipeLeft()
        backButton.tap()
        XCUIDevice.shared.orientation = .portrait
        tabBarsQuery.buttons["Profile"].tap()
        cellsQuery.otherElements.containing(.image, identifier:"huzaifa").element.swipeUp()
        app.navigationBars["Profile Details"].buttons["Back"].tap()
        tabBarsQuery.buttons["Player"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Milwaukee Bucks"]/*[[".cells.staticTexts[\"Milwaukee Bucks\"]",".staticTexts[\"Milwaukee Bucks\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCUIDevice.shared.orientation = .landscapeRight
        app.navigationBars["Player Details"].buttons["Back"].tap()
        XCUIDevice.shared.orientation = .portrait
        
    }
}
