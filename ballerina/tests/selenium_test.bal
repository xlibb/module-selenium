// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com.
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/lang.runtime;
import ballerina/test;

string url = "https://ballerina-ipa.choreoapps.dev";
WebDriver driver = new ();

@test:BeforeSuite
function initializeDriver() returns error? {
    driver.openChrome(url + "/complex-dom", true);
    runtime:sleep(1);
}

@test:AfterSuite
function quitDriver() returns error? {
    driver.quit();
}

@test:Config
function testGetTitle() returns error? {
    string actualTitle = driver.getTitle();
    string expectedTitle = "Complex DOM";
    test:assertEquals(actualTitle, expectedTitle);
}

@test:Config
function testGetCurrentUrl() returns error? {
    string actualValue = driver.getCurrentUrl();
    string expectedValue = url + "/complex-dom";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindById() returns error? {
    WebElement element = check driver.findById("main-heading");
    string actualValue = element.getTagName();
    string expectedValue = "h1";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindByClassName() returns error? {
    WebElement element = check driver.findByClassName("nav-links");
    string actualValue = element.getTagName();
    string expectedValue = "ul";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindByTagName() returns error? {
    WebElement element = check driver.findByTagName("h1");
    string actualValue = element.getDomAttribute("id");
    string expectedValue = "main-heading";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindByCssSelector() returns error? {
    WebElement element = check driver.findByCssSelector(".nav-links > li:nth-child(1) > a");
    string actualValue = element.getDomAttribute("href");
    string expectedValue = "#home";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindByLinkText() returns error? {
    WebElement element = check driver.findByLinkText("Home");
    string actualValue = element.getDomAttribute("href");
    string expectedValue = "#home";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testNavigation() returns error? {
    driver.navigateTo(url + "/student-application");
    string actualValue = driver.getTitle();
    string expectedValue = "Student Application Form";
    test:assertEquals(actualValue, expectedValue);
    driver.navigateBack();
    actualValue = driver.getTitle();
    expectedValue = "Complex DOM";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testAlert() returns error? {
    WebElement element = check driver.findById("home-button");
    element.click();
    check driver.acceptAlert();
    string actualValue = element.getText();
    string expectedValue = "Happy";
    test:assertEquals(actualValue, expectedValue);
    element.click();
    check driver.dismissAlert();
    actualValue = element.getText();
    expectedValue = "Sad";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testWindowHandle() returns error? {
    (check driver.findByPartialLinkText("Learn")).click();
    string firstWindow = driver.getCurrentWindowHandle();
    string[] allWindows = driver.getAllWindowHandles();
    test:assertEquals(allWindows.length(), 2);
    check driver.switchToWindowHandle(allWindows[1]);
    runtime:sleep(1);
    string actualValue = driver.getTitle();
    string expectedValue = "New Window";
    test:assertEquals(actualValue, expectedValue);
    driver.closeCurrentWindowHandle();
    check driver.switchToWindowHandle(firstWindow);
    actualValue = driver.getTitle();
    expectedValue = "Complex DOM";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testSendKeys() returns error? {
    WebElement form = check driver.findById("contact-form");
    (check form.findById("email")).sendKeys("john@abc.com");
    (check form.findById("message")).sendKeys("Hello");
    (check form.findByTagName("button")).click();
    string actualValue = (check form.findById("result")).getText();
    string expectedValue = "You typed: john@abc.com Hello";
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testJsExecutor() returns error? {
    driver.executeJavascript("document.getElementById('home-button').innerText = 'Happy'");
    string actualValue = (check driver.findById("home-button")).getText();
    string expectedValue = "Happy";
    test:assertEquals(actualValue, expectedValue);
}
