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

@test:Config
function testGetChromeDriver() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://central.ballerina.io/", ["--headless", "--disable-gpu"]);
    string actualTitle = driver.getTitle();
    string expectedTitle = "Ballerina Central";
    driver.quit();
    test:assertEquals(actualTitle, expectedTitle);
}

@test:Config
function testGetCurrentUrl() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://central.ballerina.io/", ["--headless", "--disable-gpu"]);
    string actualValue = driver.getCurrentUrl();
    string expectedValue = "https://central.ballerina.io/";
    driver.quit();
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testFindBy() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://the-internet.herokuapp.com/challenging_dom", ["--headless", "--disable-gpu"]);
    runtime:sleep(1);
    WebElement findById = check driver.findById("page-footer");
    string actualValue = findById.getTagName();
    string expectedValue = "div";
    test:assertEquals(actualValue, expectedValue);
    WebElement findByClassName = check driver.findByClassName("example");
    actualValue = findByClassName.getTagName();
    expectedValue = "div";
    test:assertEquals(actualValue, expectedValue);
    WebElement findByTagName = check driver.findByTagName("h3");
    actualValue = findByTagName.getText();
    expectedValue = "Challenging DOM";
    test:assertEquals(actualValue, expectedValue);
    WebElement[] findByLinkText = driver.findAllByLinkText("edit");
    test:assertEquals(findByLinkText.length(), 10);
    WebElement findByPartialLinkText = check driver.findByPartialLinkText("Selenium");
    actualValue = findByPartialLinkText.getDomAttribute("href");
    expectedValue = "http://elementalselenium.com/";
    test:assertEquals(actualValue, expectedValue);
    WebElement findByCssSelector = check driver.findByCssSelector("tr:nth-child(1) > td:nth-child(1)");
    actualValue = findByCssSelector.getText();
    expectedValue = "Iuvaret0";
    test:assertEquals(actualValue, expectedValue);
    WebElement findByXpath = check driver.findByXpath("//div[@id='content']/div/div/div/div/a[2]");
    actualValue = findByXpath.getTagName();
    expectedValue = "a";
    test:assertEquals(actualValue, expectedValue);

    driver.quit();
}

@test:Config
function testAlert() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://the-internet.herokuapp.com/javascript_alerts", ["--headless", "--disable-gpu"]);
    runtime:sleep(1);
    WebElement element = check driver.findByCssSelector("li:nth-child(3) > button");
    element.click();
    check driver.sendKeysToAlert("Ballerina");
    check driver.acceptAlert();
    string actualValue = (check driver.findById("result")).getText();
    string expectedValue = "You entered: Ballerina";
    driver.quit();
    test:assertEquals(actualValue, expectedValue);
}

@test:Config
function testNavigation() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://the-internet.herokuapp.com/", ["--headless", "--disable-gpu"]);
    runtime:sleep(1);
    driver.navigateTo("https://central.ballerina.io/");
    string actualValue = driver.getTitle();
    string expectedValue = "Ballerina Central";
    test:assertEquals(actualValue, expectedValue);
    driver.navigateBack();
    actualValue = driver.getTitle();
    expectedValue = "The Internet";
    driver.navigateForward();
    actualValue = driver.getTitle();
    expectedValue = "Ballerina Central";
    test:assertEquals(actualValue, expectedValue);
    driver.quit();
}

@test:Config
function testWindowHandle() returns error? {
    WebDriver driver = new ();
    driver.openChrome("https://the-internet.herokuapp.com/windows", ["--headless", "--disable-gpu"]);
    (check driver.findByPartialLinkText("Click")).click();
    string firstWindow = driver.getCurrentWindowHandle();
    string[] allWindows = driver.getAllWindowHandles();
    test:assertEquals(allWindows.length(), 2);
    check driver.switchToWindowHandle(allWindows[1]);
    string actualValue = driver.getTitle();
    string expectedValue = "New Window";
    test:assertEquals(actualValue, expectedValue);
    driver.closeCurrentWindowHandle();
    check driver.switchToWindowHandle(firstWindow);
    actualValue = driver.getTitle();
    expectedValue = "The Internet";
    test:assertEquals(actualValue, expectedValue);
    driver.quit();
}
