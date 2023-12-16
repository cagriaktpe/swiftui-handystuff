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
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    }

    func test_UITestingExampleView_signUpButton_shouldNotSignIn() {
        // given
        let textField = app.textFields["NameTextField"]

        // when
        textField.tap()

        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()

        let navBar = app.navigationBars["Welcome"]

        // then
        XCTAssertFalse(navBar.exists)
    }

    func test_UITestingExampleView_signUpButton_shouldSignIn() {
        // given
        let textField = app.textFields["NameTextField"]

        // when
        textField.tap()

        textField.typeText("Samet")

        let returnButton = app.buttons["Return"]
        returnButton.tap()

        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()

        let navBar = app.navigationBars["Welcome"]

        // then
        XCTAssertTrue(navBar.exists)
    }

    func test_SignInHomeView_showAlertButton_shouldDisplayAlert() {
        
        
        
                        
    }
    
    func test_SignInHomeView_showAlertButton_shouldDisplayAndDismissAlert() {
        // given
        let textField = app.textFields["NameTextField"]
        
        // when
        textField.tap()

        textField.typeText("Samet")

        let returnButton = app.buttons["Return"]
        returnButton.tap()

        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()

        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
        
        let showAlertButton = app.buttons["ShowAlertButton"]
        showAlertButton.tap()
        
        let alert = app.alerts.firstMatch
        
        let okButton = app.alerts["Welcome!"].scrollViews.otherElements.buttons["OK"]
        let okButtonExists = okButton.waitForExistence(timeout: 5)
        XCTAssertTrue(okButtonExists)
        
        okButton.tap()
        
        let alertExists = okButton.waitForExistence(timeout: 5)
        
        // then
        XCTAssertFalse(alertExists)
       
    }
}
