//
//  UITestingExampleView_UITests.swift
//  SwiftUI-HandyStuffUI_Tests
//
//  Created by Samet Çağrı Aktepe on 12.12.2023.
//

import XCTest

/* for unit testing */
// Naming Structure: test_UnitOfWork_StateUnderTest_ExpectedBehavior
// Naming Structure: test_[struct or class]_[variable or function]_[expected result]
// Testing_Structure: Given, When, Then

/* for ui testing */
// Naming Structure: test_UnitOfWork_StateUnderTest_ExpectedBehavior
// Naming Structure: test_[struct]_[ui component]_[expected result]
// Testing_Structure: Given, When, Then

final class UITestingExampleView_UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
        
    }
    
    func test_UITestingExampleView_signUpButton_shouldNotSignIn() {
        XCUIApplication().buttons["Sign Up"].tap()
        
    }
    
    func test_UITestingExampleView_signUpButton_shouldSignIn() {
        
        
        let app = XCUIApplication()
        app.textFields["Enter your name"].tap()
        
        let aKey = app/*@START_MENU_TOKEN@*/.keys["A"]/*[[".keyboards.keys[\"A\"]",".keys[\"A\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        aKey.tap()
        
        let kKey = app/*@START_MENU_TOKEN@*/.keys["k"]/*[[".keyboards.keys[\"k\"]",".keys[\"k\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        kKey.tap()
        
        let tKey = app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        tKey.tap()
        
        let eKey = app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        eKey.tap()
        
        let pKey = app/*@START_MENU_TOKEN@*/.keys["p"]/*[[".keyboards.keys[\"p\"]",".keys[\"p\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        pKey.tap()
        eKey.tap()
        
        app.buttons["Sign Up"].tap()
        app.navigationBars["Welcome"].staticTexts["Welcome"].tap()
       
        
    }
}

