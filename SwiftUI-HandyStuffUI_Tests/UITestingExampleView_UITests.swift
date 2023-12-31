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
        //app.launchArguments = ["-UITest_startSignedIn"]
        app.launchEnvironment = [
            "-UITest_startSignedIn": "true"
        ]
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
        tapAlertButton(shouldDismissAlert: false)

        // then
        let alert = app.alerts.firstMatch
        XCTAssertTrue(alert.exists)
    }
    
    func test_SignInHomeView_showAlertButton_shouldDisplayAndDismissAlert() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        tapAlertButton(shouldDismissAlert: true)
        let alertExists = app.alerts.firstMatch.waitForExistence(timeout: 5)
        // then
        XCTAssertFalse(alertExists)
       
    }
    
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateToDestination() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        tapNavigationLink(shouldDismissDestination: false)
        
        // then
        let destinationText = app.staticTexts["Destination"]
        XCTAssertTrue(destinationText.exists)
    }
    
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateToDestinationAndGoBack() {
        // given
        signUpAndSignIn(shouldTypeText: true)
        
        // when
        tapNavigationLink(shouldDismissDestination: true)
        
        // then
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
    }
    
    /*
    func test_SignInHomeView_navigationLinkToDestination_shouldNavigateToDestinationAndGoBack2() {
        // given
        
        // when
        tapNavigationLink(shouldDismissDestination: true)
        
        // then
        let navBar = app.navigationBars["Welcome"]
        XCTAssertTrue(navBar.exists)
    }
     */
    
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
    
    func tapAlertButton(shouldDismissAlert: Bool) {
        let showAlertButton = app.buttons["ShowAlertButton"]
        showAlertButton.tap()
        
        if shouldDismissAlert {
            let alert = app.alerts.firstMatch
            let okButton = alert.buttons["OK"]
            
            okButton.tap()
        }
    }
    
    func tapNavigationLink(shouldDismissDestination: Bool) {
        let navLinkButton = app.buttons["NavigationLinkToDestination"]
        navLinkButton.tap()
        
        if shouldDismissDestination {
            let backButton = app.navigationBars.buttons["Welcome"]
            backButton.tap()
        }
    }
    
}
