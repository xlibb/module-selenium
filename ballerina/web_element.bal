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

public class WebElement {

    # Performs a click action on the specified web element.
    public isolated function click() = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Clears the value of an input field or text area.
    public isolated function clear() = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Sends input text to the specified web element.
    #
    # + value - The text to input into the web element.
    public isolated function sendKeys(string value) = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Retrieves the tag name of the web element.
    #
    # + return - A `string` representing the tag name of the web element.
    public isolated function getTagName() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Retrieves the visible text of the web element.
    #
    # + return - A `string` containing the visible text of the element.
    public isolated function getText() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Retrieves the value of a specified DOM attribute for a web element.
    #
    # + attribute - The name of the attribute whose value needs to be fetched (e.g., `href`, `src`, `class`, etc.).
    # + return - A string representing the value of the specified DOM attribute, or an empty string if the attribute is not found.
    public isolated function getDomAttribute(string attribute) returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Retrieves the value of a specified DOM property for a web element.
    #
    # + property - The name of the property whose value needs to be fetched (e.g., `value`, `checked`, `disabled`, etc.).
    # + return - A string representing the value of the specified DOM property.
    public isolated function getDomProperty(string property) returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Checks if the web element is displayed on the page.
    #
    # + return - A `boolean` value: `true` if the element is displayed, otherwise `false`.
    public isolated function isDisplayed() returns boolean = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Checks if the web element is enabled.
    #
    # + return - A `boolean` value: `true` if the element is enabled, otherwise `false`.
    public isolated function isEnabled() returns boolean = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Checks if the web element is selected. Typically used for checkboxes, radio buttons, or options in a dropdown.
    #
    # + return - A `boolean` value: `true` if the element is selected, otherwise `false`.
    public isolated function isSelected() returns boolean = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its unique ID attribute inside another web element.
    #
    # + id - The unique identifier of the web element.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findById(string id) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its class name inside another web element.
    #
    # + className - The class name of the web element.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByClassName(string className) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its tag name inside another web element.
    #
    # + tagName - The tag name of the web element (e.g., `div`, `input`, `button`).
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByTagName(string tagName) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element using an XPath expression inside another web element.
    #
    # + xpath - The XPath expression used to locate the element.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByXpath(string xpath) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element using a CSS selector inside another web element.
    #
    # + cssSelector - The CSS selector used to locate the element.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByCssSelector(string cssSelector) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its `name` attribute inside another web element.
    #
    # + name - The name attribute of the web element.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByName(string name) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its exact link text inside another web element.
    #
    # + linkText - The exact text of the link.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByLinkText(string linkText) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates a web element by its partial link text inside another web element.
    #
    # + partialLinkText - The partial text of the link.
    # + return - A `WebElement` representing the located element, or an `Error` if the element cannot be found.
    public isolated function findByPartialLinkText(string partialLinkText) returns WebElement|Error = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements by their class name.
    #
    # + className - The class name of the web elements.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByClassName(string className) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements by their tag name inside another web element.
    #
    # + tagName - The tag name of the web elements (e.g., `div`, `input`, `button`).
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByTagName(string tagName) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements using an XPath expression inside another web element.
    #
    # + xpath - The XPath expression used to locate the elements.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByXpath(string xpath) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements using a CSS selector inside another web element.
    #
    # + cssSelector - The CSS selector used to locate the elements.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByCssSelector(string cssSelector) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements by their `name` attribute inside another web element.
    #
    # + name - The `name` attribute of the web elements.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByName(string name) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements by their exact link text inside another web element.
    #
    # + linkText - The exact text of the links.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByLinkText(string linkText) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

    # Locates all web elements by their partial link text inside another web element.
    #
    # + partialLinkText - The partial text of the links.
    # + return - An array of `WebElement` representing all the located elements, or an empty array if no elements are found.
    public isolated function findAllByPartialLinkText(string partialLinkText) returns WebElement[] = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;

}