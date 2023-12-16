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
    
    // tests
    func test_UITestingExampleView_signUpButton_shouldNotSignIn() {
        // given
        signUpAndSignIn(shouldTypeText: false)

        // when
        let navBar = app.navigationBars["Welcome"]

        // then
        XCTAssertFalse(navBar.exists)
    }

    func test_UITestingExampleView_signUpButton_shouldSignIn() {
        // given
        signUpAndSignIn(shouldTypeText: true)

        // when
        let navBar = app.navigationBars["Welcome"]

        // then
        XCTAssertTrue(navBar.exists)
    }

    func test_SignInHomeView_showAlertButton_shouldDisplayAlert() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
        
        let showAlertButton = app.buttons["ShowAlertButton"]
        showAlertButton.tap()
        
        let alert = app.alerts.firstMatch
    
        // then
        XCTAssertTrue(alert.exists)
    }
    
    func test_SignInHomeView_showAlertButton_shouldDisplayAndDismissAlert() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
        
        let showAlertButton = app.buttons["ShowAlertButton"]
        showAlertButton.tap()
        
        let alert = app.alerts.firstMatch
        XCTAssertTrue(alert.exists)
        
        let okButton = app.alerts["Welcome!"].scrollViews.otherElements.buttons["OK"]
        let okButtonExists = okButton.waitForExistence(timeout: 5)
        XCTAssertTrue(okButtonExists)
        
        okButton.tap()
        
        let alertExists = okButton.waitForExistence(timeout: 5)
        
        // then
        XCTAssertFalse(alertExists)
       
    }
    
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateToDestination() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
        
        let navLinkButton = app.buttons["NavigationLinkToDestination"]
        navLinkButton.tap()
        
        let destinationText = app.staticTexts["Destination"]
        
        // then
        XCTAssertTrue(destinationText.exists)
    }
    
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateToDestinationAndGoBack() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
        
        let navLinkButton = app.buttons["NavigationLinkToDestination"]
        navLinkButton.tap()
        
        let destinationText = app.staticTexts["Destination"]
        XCTAssertTrue(destinationText.exists)
        
        let backButton = app.navigationBars.buttons["Welcome"]
        backButton.tap()
        
        // then
        XCTAssertTrue(navBar.exists)
    }
    
}

// MARK: - Helper Methods
extension UITestingExampleView_UITests {
    
    func signUpAndSignIn(shouldTypeText: Bool) {
        let textField = app.textFields["NameTextField"]

        textField.tap()
        
        if shouldTypeText {
            textField.typeText("Samet")
            
            let returnButton = app.buttons["Return"]
            returnButton.tap()
        }
        
        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()
    }
    
}
