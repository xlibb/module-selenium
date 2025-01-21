// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/lang.runtime;
import ballerina/test;

string baseUrl = "http://localhost:8080";
WebDriver chromeDriver = check new ({
    headlessMode: true,
    url: baseUrl + "/complex-dom",
    browserName: CHROME,
    additionalArguments: ["--disable-gpu"]
});
WebDriver firefoxDriver = check new ({
    headlessMode: true,
    url: baseUrl + "/complex-dom",
    browserName: FIREFOX
});

@test:Config
function testInvalidURL() {
    WebDriver|error driver = new ({
        headlessMode: true,
        url: "invalid-baseUrl",
        browserName: CHROME,
        additionalArguments: ["--disable-gpu"]
    });
    test:assertTrue(driver is error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testInvalidURL],
    dataProvider: driverProvider
}
function testGetTitle(WebDriver driver) {
    string|Error actualTitle = driver.getTitle();
    string expectedTitle = "Complex DOM";
    test:assertEquals(actualTitle, expectedTitle, "Web page title mismatched");
}

@test:Config {
    dependsOn: [testGetTitle],
    dataProvider: driverProvider
}
function testGetCurrentUrl(WebDriver driver) {
    string|Error actualValue = driver.getCurrentUrl();
    string expectedValue = baseUrl + "/complex-dom";
    test:assertEquals(actualValue, expectedValue, "Current URL mismatched");
}

@test:Config {
    dependsOn: [testGetTitle],
    dataProvider: driverProvider
}
function testNavigation(WebDriver driver) {
    Error? navigationErr = driver.navigateTo(baseUrl + "/student-application");
    if navigationErr is error {
        test:assertFail(navigationErr.message());
    }
    string|Error actualValue = driver.getTitle();
    string expectedValue = "Student Application Form";
    test:assertEquals(actualValue, expectedValue);
    navigationErr = driver.navigateBack();
    if navigationErr is error {
        test:assertFail(navigationErr.message());
    }
    actualValue = driver.getTitle();
    expectedValue = "Complex DOM";
    test:assertEquals(actualValue, expectedValue);
    navigationErr = driver.navigateForward();
    if navigationErr is error {
        test:assertFail(navigationErr.message());
    }
    actualValue = driver.getTitle();
    expectedValue = "Student Application Form";
    test:assertEquals(actualValue, expectedValue);
    navigationErr = driver.navigateBack();
    if navigationErr is error {
        test:assertFail(navigationErr.message());
    }
    actualValue = driver.getTitle();
    expectedValue = "Complex DOM";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config {
    dependsOn: [testNavigation],
    dataProvider: driverProvider
}
function testFindById(WebDriver driver) {
    WebElement|Error element = driver.findById("main-heading");
    test:assertTrue(element is WebElement, "Element not found by ID");
    WebElement|Error invalidElement = driver.findById("invalid-id");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindById],
    dataProvider: driverProvider
}
function testFindByClassName(WebDriver driver) {
    WebElement|Error element = driver.findByClassName("nav-links");
    test:assertTrue(element is WebElement, "Element not found by class name");
    WebElement|Error invalidElement = driver.findByClassName("invalid-class-name");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByClassName],
    dataProvider: driverProvider
}
function testFindByTagName(WebDriver driver) {
    WebElement|Error element = driver.findByTagName("h1");
    test:assertTrue(element is WebElement, "Element not found by tag name");
    WebElement|Error invalidElement = driver.findByTagName("invalid-tag-name");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByTagName],
    dataProvider: driverProvider
}
function testFindByXPath(WebDriver driver) {
    WebElement|Error element = driver.findByXpath("//section[@id='home']/div/button[1]");
    test:assertTrue(element is WebElement, "Element not found by XPath");
    WebElement|Error invalidElement = driver.findByXpath("//section[@id='home']/invalid-xpath");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByXPath],
    dataProvider: driverProvider
}
function testFindByLinkText(WebDriver driver) {
    WebElement|Error element = driver.findByLinkText("Home");
    test:assertTrue(element is WebElement, "Element not found by link text");
    WebElement|Error invalidElement = driver.findByLinkText("invalid-link-text");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByLinkText],
    dataProvider: driverProvider
}
function testFindByPartialLinkText(WebDriver driver) {
    WebElement|Error element = driver.findByPartialLinkText("Conta");
    test:assertTrue(element is WebElement, "Element not found by partial link text");
    WebElement|Error invalidElement = driver.findByPartialLinkText("invalid-partial-link-text");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByPartialLinkText],
    dataProvider: driverProvider
}
function testFindByCssSelector(WebDriver driver) {
    WebElement|Error element = driver.findByCssSelector(".nav-links > li:nth-child(1) > a");
    test:assertTrue(element is WebElement, "Element not found by CSS selector");
    WebElement|Error invalidElement = driver.findByCssSelector(".nav-links > #invalid-css-selector");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByCssSelector],
    dataProvider: driverProvider
}
function testFindByName(WebDriver driver) {
    WebElement|Error element = driver.findByName("email");
    test:assertTrue(element is WebElement, "Element not found by name");
    WebElement|Error invalidElement = driver.findByName("invalid-name");
    test:assertTrue(invalidElement is Error, "Expected error not thrown");
}

@test:Config {
    dependsOn: [testFindByName],
    dataProvider: driverProvider
}
function testFindAllByClassName(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByClassName("nav-link");
    validateFindAll(elements, 3);
    WebElement[]|Error invalidElements = driver.findAllByClassName("invalid-class-name");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByClassName],
    dataProvider: driverProvider
}
function testFindAllByTagName(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByTagName("section");
    validateFindAll(elements, 3);
    WebElement[]|Error invalidElements = driver.findAllByTagName("invalid-tag-name");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByTagName],
    dataProvider: driverProvider
}
function testFindAllByXPath(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByXpath("//section");
    validateFindAll(elements, 3);
    WebElement[]|Error invalidElements = driver.findAllByXpath("//invalid-xpath");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByXPath],
    dataProvider: driverProvider
}
function testFindAllByLinkText(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByLinkText("Home");
    validateFindAll(elements, 1);
    WebElement[]|Error invalidElements = driver.findAllByLinkText("invalid-link-text");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByLinkText],
    dataProvider: driverProvider
}
function testFindAllByPartialLinkText(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByPartialLinkText("Conta");
    validateFindAll(elements, 1);
    WebElement[]|Error invalidElements = driver.findAllByPartialLinkText("invalid-partial-link-text");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByPartialLinkText],
    dataProvider: driverProvider
}
function testFindAllByCssSelector(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByCssSelector(".nav-links > li");
    validateFindAll(elements, 3);
    WebElement[]|Error invalidElements = driver.findAllByCssSelector(".nav-links > #invalid-css-selector");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByCssSelector],
    dataProvider: driverProvider
}
function testFindAllByName(WebDriver driver) {
    WebElement[]|Error elements = driver.findAllByName("email");
    validateFindAll(elements, 1);
    WebElement[]|Error invalidElements = driver.findAllByName("invalid-name");
    validateFindAll(invalidElements, 0);
}

@test:Config {
    dependsOn: [testFindAllByName],
    dataProvider: driverProvider
}
function testGetText(WebDriver driver) returns Error? {
    string|Error actualValue = (check driver.findById("main-heading")).getText();
    string expectedValue = "Complex DOM";
    test:assertEquals(actualValue, expectedValue, "Element text mismatched");
}

@test:Config {
    dependsOn: [testGetText],
    dataProvider: driverProvider
}
function testGetTagName(WebDriver driver) returns Error? {
    string|Error actualValue = (check driver.findById("main-heading")).getTagName();
    string expectedValue = "h1";
    test:assertEquals(actualValue, expectedValue, "Element tag name mismatched");
}

@test:Config {
    dependsOn: [testGetTagName],
    dataProvider: driverProvider
}
function testGetDomAttribute(WebDriver driver) returns Error? {
    string|Error actualValue = (check driver.findByCssSelector(".nav-links > li:nth-child(1) > a")).getDomAttribute("href");
    string expectedValue = "#home";
    test:assertEquals(actualValue, expectedValue, "Element attribute mismatched");
}

@test:Config {
    dependsOn: [testGetDomAttribute],
    dataProvider: driverProvider
}
function testClick(WebDriver driver) returns Error? {
    WebElement element = check driver.findById("home-button2");
    Error? clickErr = element.click();
    if clickErr is Error {
        test:assertFail("Failed to click the element");
    }
    string|Error actualValue = element.getText();
    string expectedValue = "Click 1";
    test:assertEquals(actualValue, expectedValue, "Element text mismatched");
}

@test:Config {
    dependsOn: [testClick],
    dataProvider: driverProvider
}
function testIsDisplayed(WebDriver driver) returns Error? {
    boolean|Error actualValue = (check driver.findById("home-button2")).isDisplayed();
    if actualValue is Error {
        test:assertFail("Failed to check element display status");
    }
    test:assertTrue(actualValue, "Element not displayed. Expected to be displayed");
    actualValue = (check driver.findById("hidden-element")).isDisplayed();
    if actualValue is Error {
        test:assertFail("Failed to check element display status");
    }
    test:assertFalse(actualValue, "Element is displayed. Expected not to be displayed");
}

@test:Config {
    dependsOn: [testFindByName],
    dataProvider: driverProvider
}
function testIsEnabled(WebDriver driver) returns Error? {
    boolean|Error actualValue = (check driver.findByName("email")).isEnabled();
    if actualValue is Error {
        test:assertFail("Failed to check element enabled status");
    }
    test:assertTrue(actualValue, "Element not enabled. Expected to be enabled");
    actualValue = (check driver.findByName("disabled-element")).isEnabled();
    if actualValue is Error {
        test:assertFail("Failed to check element enabled status");
    }
    test:assertFalse(actualValue, "Element is enabled. Expected not to be enabled");
}

@test:Config {
    dependsOn: [testIsEnabled],
    dataProvider: driverProvider
}
function testIsSelected(WebDriver driver) returns Error? {
    WebElement element = check driver.findByName("select-example");
    boolean|Error actualValue = element.isSelected();
    if actualValue is Error {
        test:assertFail("Failed to check element selected status");
    }
    test:assertFalse(actualValue, "Element is selected. Expected not to be selected");
    check element.click();
    actualValue = element.isSelected();
    if actualValue is Error {
        test:assertFail("Failed to check element selected status");
    }
    test:assertTrue(actualValue, "Element not selected. Expected to be selected");
}

@test:Config {
    dependsOn: [testIsSelected],
    dataProvider: driverProvider
}
function testSendKeys(WebDriver driver) returns Error? {
    WebElement element = check driver.findByName("email");
    Error? sendKeysErr = element.sendKeys("example@abc.com");
    if sendKeysErr is Error {
        test:assertFail("Failed to send keys to the element");
    }
    string actualValue = check element.getDomAttribute("value");
    string expectedValue = "example@abc.com";
    test:assertEquals(actualValue, expectedValue, "Element value mismatched");
}

@test:Config {
    dependsOn: [testSendKeys],
    dataProvider: driverProvider
}
function testAlert(WebDriver driver) returns Error? {
    WebElement element = check driver.findById("home-button");
    check element.click();
    Error? alertAcceptError = driver.acceptAlert();
    if alertAcceptError is Error {
        test:assertFail(alertAcceptError.message());
    } else {
        string actualValue = check element.getText();
        string expectedValue = "Happy";
        test:assertEquals(actualValue, expectedValue);
        check element.click();
        Error? alertDismissError = driver.dismissAlert();
        if alertDismissError is Error {
            test:assertFail(alertDismissError.message());
        } else {
            actualValue = check element.getText();
            expectedValue = "Sad";
            test:assertEquals(actualValue, expectedValue);
        }
    }
}

@test:Config {
    dependsOn: [testAlert],
    dataProvider: driverProvider
}
function testWindowHandle(WebDriver driver) returns Error? {
    check (check driver.findByLinkText("Learn more")).click();
    string|Error firstWindow = driver.getCurrentWindowHandle();
    string[]|Error allWindows = driver.getAllWindowHandles();
    if allWindows is Error || firstWindow is Error {
        test:assertFail("Failed to get window handles");
    }
    test:assertEquals(allWindows.length(), 2);
    test:assertEquals(allWindows[0], firstWindow);
    Error? handleError = driver.switchToWindowHandle(allWindows[1]);
    if handleError is Error {
        test:assertFail("Failed to switch to new window");
    } else {
        runtime:sleep(3);
        string|Error actualValue = driver.getTitle();
        string expectedValue = "New Window";
        test:assertEquals(actualValue, expectedValue);
        Error? closeErr = driver.closeCurrentWindowHandle();
        if closeErr is Error {
            test:assertFail("Failed to close new window");
        }
        handleError = driver.switchToWindowHandle(firstWindow);
        if handleError is Error {
            test:assertFail("Failed to switch to first window");
        } else {
            actualValue = driver.getTitle();
            expectedValue = "Complex DOM";
            test:assertEquals(actualValue, expectedValue);
        }

    }

}

@test:Config {
    dependsOn: [testWindowHandle],
    dataProvider: driverProvider
}
function testRefresh(WebDriver driver) returns Error? {
    Error? refresh = driver.refresh();
    if refresh is Error {
        test:assertFail("Failed to refresh the page");
    }
    string actualValue = check (check driver.findById("home-button2")).getText();
    string expectedValue = "Click Me";
    test:assertEquals(actualValue, expectedValue, "Element text mismatched");
}

@test:Config {
    dependsOn: [testRefresh],
    dataProvider: driverProvider
}
function testExecuteJavascript(WebDriver driver) returns Error? {
    string script = "document.getElementById('home-button2').click();";
    Error? jsError = driver.executeJavascript(script);
    if jsError is Error {
        test:assertFail("Failed to execute JavaScript");
    }
    string actualValue = check (check driver.findById("home-button2")).getText();
    string expectedValue = "Click 1";
    test:assertEquals(actualValue, expectedValue, "Element text mismatched");
}

@test:Config {
    dependsOn: [testExecuteJavascript],
    dataProvider: driverProvider
}
function testInvalidElementStateError(WebDriver driver) returns Error? {
    Error? err = (check chromeDriver.findByName("disabled-element")).sendKeys("hello");
    test:assertTrue(err is InvalidElementStateError, "Expected InvalidElementStateError, but got another result.");
}

@test:Config {
    dependsOn: [testInvalidElementStateError],
    dataProvider: driverProvider
}
function testNoSuchElementError(WebDriver driver) returns Error? {
    WebElement|Error err = driver.findById("invalid-id");
    test:assertTrue(err is NoSuchElementError, "Expected NoSuchElementError, but got another result.");
}

@test:Config {
    dependsOn: [testNoSuchElementError],
    dataProvider: driverProvider
}
function testNoAlertPresentError(WebDriver driver) returns Error? {
    Error? err = driver.acceptAlert();
    test:assertTrue(err is NoAlertPresentError, "Expected NoAlertPresentError, but got another result.");
}

@test:Config {
    dependsOn: [testNoSuchElementError],
    dataProvider: driverProvider
}
function testNoSuchWindowError(WebDriver driver) returns Error? {
    Error? err = driver.switchToWindowHandle("invalid-window-handle");
    test:assertTrue(err is NoSuchWindowError, "Expected NoSuchWindowError, but got another result.");
}

@test:Config {
    dependsOn: [testNoSuchWindowError],
    dataProvider: driverProvider
}
function testJavascriptError(WebDriver driver) returns Error? {
    Error? err = driver.executeJavascript("consle.log('hello world')");
    test:assertTrue(err is JavascriptError, "Expected JavascriptError, but got another result.");
}

@test:Config {
    dependsOn: [testNoSuchWindowError],
    dataProvider: driverProvider
}
function testInvalidArgumentError(WebDriver driver) returns Error? {
    WebDriver|Error err = new({url: "invalid-url", headlessMode: true});
    test:assertTrue(err is InvalidArgumentError, "Expected InvalidArgumentError, but got another result.");
}

@test:Config {
    dependsOn: [testInvalidArgumentError],
    dataProvider: driverProvider
}
function testInvalidSelectorError(WebDriver driver) returns Error? {
    WebElement|Error err = driver.findByCssSelector("input:invalid-pseudo-class");
    test:assertTrue(err is InvalidSelectorError, "Expected InvalidSelectorError, but got another result.");
}

@test:Config {
    dependsOn: [testInvalidSelectorError],
    dataProvider: driverProvider
}
function testUnhandledAlertError(WebDriver driver) returns Error? {
    WebElement element = check driver.findById("home-button");
    check element.click();
    Error? err = element.click();
    test:assertTrue(err is UnhandledAlertError, "Expected UnhandledAlertError, but got another result.");
}

@test:AfterSuite
function teardown() {
    Error? chromeQuitErr = chromeDriver.quit();
    Error? firefoxQuitErr = firefoxDriver.quit();
    if chromeQuitErr is Error {
        test:assertFail("Failed to quit Chrome driver");
    }
    if firefoxQuitErr is Error {
        test:assertFail("Failed to quit Firefox driver");
    }
}

function validateFindAll(WebElement[]|Error elements, int expectedCount) {
    if elements is Error {
        test:assertFail(elements.message());
    } else {
        test:assertEquals(elements.length(), expectedCount, "Element count mismatched");
    }
}

function driverProvider() returns WebDriver[][] {
    return [[chromeDriver], [firefoxDriver]];
}
