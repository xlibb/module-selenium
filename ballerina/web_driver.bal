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

import ballerina/jballerina.java;
public class WebDriver {

    # Opens a new Chrome browser instance and navigates to the specified URL.
    #
    # + url - The URL of the web application to open in the browser.
    # + headless - A boolean value indicating whether to run the browser in headless mode (without a GUI).
    public isolated function openChrome(string url, boolean headless = false) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Opens a new Firefox browser instance and navigates to the specified URL.
    #
    # + url - The URL of the web application to open in the browser.
    # + headless - A boolean value indicating whether to run the browser in headless mode (without a GUI).
    public isolated function openFirefox(string url, boolean headless = false) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Retrieves the title of the current web page opened in the browser.
    #
    # + return - The title of the current web page as a string.
    public isolated function getTitle() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Maximizes the browser window to fill the screen.
    public isolated function maximize() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Minimizes the browser window.
    public isolated function minimize() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Sets the size of the browser window to the specified width and height.
    #
    # + width - The desired width of the browser window in pixels.
    # + height - The desired height of the browser window in pixels.
    public isolated function setSize(int width, int height) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Navigates the browser to the specified URL.
    #
    # + url - The URL to navigate to.
    public isolated function navigateTo(string url) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Navigates the browser back to the previous page in the browsing history.
    public isolated function navigateBack() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Navigates the browser forward to the next page in the browsing history (if available).
    public isolated function navigateForward() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Refreshes the current web page in the browser.
    public isolated function refresh() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Retrieves the current URL of the web page opened in the browser.
    #
    # + return - The current URL as a string.
    public isolated function getCurrentUrl() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using its unique `id` attribute.
    #
    # + id - The unique `id` attribute of the HTML element to find.
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findById(string id) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using its `class` attribute.
    #
    # + className - The `class` attribute of the HTML element to find.
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findByClassName(string className) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using its tag name.
    #
    # + tagName - The tag name of the HTML element to find (e.g., "div", "input").
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findByTagName(string tagName) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using an XPath expression.
    #
    # + xpath - The XPath expression used to locate the HTML element.
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findByXpath(string xpath) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using a CSS selector.
    #
    # + cssSelector - The CSS selector used to locate the HTML element.
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findByCssSelector(string cssSelector) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using its name attribute.
    #
    # + name - The `name` attribute of the HTML element to find.
    # + return - A `WebElement` representing the found element, or an `Error` if the element is not found.
    public isolated function findByName(string name) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using the visible text of a link.
    #
    # + linkText - The exact visible text of the link element to find.
    # + return - A `WebElement` representing the found link element, or an `Error` if the element is not found.
    public isolated function findByLinkText(string linkText) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds an HTML element on the web page using partial visible text of a link.
    #
    # + partialLinkText - The partial visible text of the link element to find.
    # + return - A `WebElement` representing the found link element, or an `Error` if the element is not found.
    public isolated function findByPartialLinkText(string partialLinkText) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML elements on the web page with the specified class name.
    #
    # + className - The `class` attribute of the HTML elements to find.
    # + return - An array of `WebElement` objects representing the found elements.
    public isolated function findAllByClassName(string className) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML elements on the web page with the specified tag name.
    #
    # + tagName - The tag name of the HTML elements to find (e.g., "div", "input").
    # + return - An array of `WebElement` objects representing the found elements.
    public isolated function findAllByTagName(string tagName) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML elements on the web page using an XPath expression.
    #
    # + xpath - The XPath expression used to locate the HTML elements.
    # + return - An array of `WebElement` objects representing the found elements.
    public isolated function findAllByXpath(string xpath) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML elements on the web page using a CSS selector.
    #
    # + cssSelector - The CSS selector used to locate the HTML elements.
    # + return - An array of `WebElement` objects representing the found elements.
    public isolated function findAllByCssSelector(string cssSelector) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML elements on the web page using their name attribute.
    #
    # + name - The `name` attribute of the HTML elements to find.
    # + return - An array of `WebElement` objects representing the found elements.
    public isolated function findAllByName(string name) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML link elements on the web page using the exact visible text.
    #
    # + linkText - The exact visible text of the link elements to find.
    # + return - An array of `WebElement` objects representing the found link elements.
    public isolated function findAllByLinkText(string linkText) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Finds all HTML link elements on the web page using partial visible text.
    #
    # + partialLinkText - The partial visible text of the link elements to find.
    # + return - An array of `WebElement` objects representing the found link elements.
    public isolated function findAllByPartialLinkText(string partialLinkText) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Accepts an alert popup in the browser.
    #
    # This method clicks the "OK" button on an alert dialog box (e.g., JavaScript alerts, confirmations, or prompts).
    #
    # + return - An `Error?` if the alert is not present or if the action fails.
    public isolated function acceptAlert() returns Error? = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Dismisses an alert popup in the browser.
    #
    # This method clicks the "Cancel" button or dismisses an alert dialog box (e.g., JavaScript alerts, confirmations, or prompts).
    #
    # + return - An `Error?` if the alert is not present or if the action fails.
    public isolated function dismissAlert() returns Error? = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Sends input text to an alert popup with a text box in the browser.
    #
    # This method inputs a specified value into a prompt alert dialog box. Note that this method only works on alerts that accept user input.
    #
    # + value - The input text to send to the alert's text box.
    # + return - An `Error?` if the alert is not present or if the action fails.
    public isolated function sendKeysToAlert(string value) returns Error? = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Retrieves the handle of the current active browser window.
    #
    # The handle is a unique identifier for the currently active browser window.
    #
    # + return - A `string` representing the current window handle.
    public isolated function getCurrentWindowHandle() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Retrieves the handles of all open browser windows.
    #
    # The method returns a list of unique identifiers for all the currently open browser windows.
    #
    # + return - An array of `string` values representing the window handles.
    public isolated function getAllWindowHandles() returns string[] = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Switches the context to the specified browser window handle.
    #
    # This method allows switching focus to a specific browser window identified by its handle.
    #
    # + windowHandle - The unique identifier of the browser window to switch to.
    # + return - An `Error?` if the specified window handle is invalid or if the switch fails.
    public isolated function switchToWindowHandle(string windowHandle) returns Error? = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Closes the currently active browser window.
    #
    # This method closes the window that is currently in focus. If there are multiple windows open, the other windows will remain open.
    public isolated function closeCurrentWindowHandle() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Executes a JavaScript script on the current page in the Selenium WebDriver session.
    # 
    # + script - The JavaScript script to execute.
    public isolated function executeJavascript(string script) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    # Quits the browser session and closes all open browser windows.
    #
    # This method ends the current WebDriver session and closes all associated browser windows.
    public isolated function quit() = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

}
