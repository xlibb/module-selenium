// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
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

import selenium.java.lang as javalang;
import selenium.java.util as javautil;

import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.openqa.selenium.WebElement` interface.
@java:Binding {'class: "org.openqa.selenium.WebElement"}
public distinct class WebElement {

    *java:JObject;

    # The `handle` field that stores the reference to the `org.openqa.selenium.WebElement` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.WebElement` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.WebElement` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `clear` method of `org.openqa.selenium.WebElement`.
    public isolated function clear() {
        org_openqa_selenium_WebElement_clear(self.jObj);
    }

    # The function that maps to the `click` method of `org.openqa.selenium.WebElement`.
    public isolated function click() {
        org_openqa_selenium_WebElement_click(self.jObj);
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.WebElement`.
    #
    # + arg0 - The `By` value required to map with the Java method parameter.
    # + return - The `WebElement` value returning from the Java mapping.
    public isolated function findElement(By arg0) returns WebElement {
        handle externalObj = org_openqa_selenium_WebElement_findElement(self.jObj, arg0.jObj);
        WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.WebElement`.
    #
    # + arg0 - The `By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(By arg0) returns javautil:List {
        handle externalObj = org_openqa_selenium_WebElement_findElements(self.jObj, arg0.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.chrome.ChromeDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:WebElement[]` value returning from the Java mapping.
    public isolated function findAllElements(By locator) returns WebElement[]|error {
        handle externalObj = org_openqa_selenium_WebElement_findElements(self.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        WebElement[] elements = [];
        javalang:Object[] arr = check newObj.toArray();
        foreach var item in arr {
            elements.push(check java:cast(item, WebElement));
        }
        return elements;
    }

    # The function that maps to the `getAccessibleName` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getAccessibleName() returns string {
        return java:toString(org_openqa_selenium_WebElement_getAccessibleName(self.jObj)) ?: "";
    }

    # The function that maps to the `getAriaRole` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getAriaRole() returns string {
        return java:toString(org_openqa_selenium_WebElement_getAriaRole(self.jObj)) ?: "";
    }

    # The function that maps to the `getAttribute` method of `org.openqa.selenium.WebElement`.
    #
    # + name - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function getAttribute(string name) returns string {
        return java:toString(org_openqa_selenium_WebElement_getAttribute(self.jObj, java:fromString(name))) ?: "";
    }

    # The function that maps to the `getCssValue` method of `org.openqa.selenium.WebElement`.
    #
    # + propertyName - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCssValue(string propertyName) returns string {
        return java:toString(org_openqa_selenium_WebElement_getCssValue(self.jObj, java:fromString(propertyName))) ?: "";
    }

    # The function that maps to the `getDomAttribute` method of `org.openqa.selenium.WebElement`.
    #
    # + name - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function getDomAttribute(string name) returns string {
        return java:toString(org_openqa_selenium_WebElement_getDomAttribute(self.jObj, java:fromString(name))) ?: "";
    }

    # The function that maps to the `getDomProperty` method of `org.openqa.selenium.WebElement`.
    #
    # + name - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function getDomProperty(string name) returns string {
        return java:toString(org_openqa_selenium_WebElement_getDomProperty(self.jObj, java:fromString(name))) ?: "";
    }

    # The function that maps to the `getLocation` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `Point` value returning from the Java mapping.
    public isolated function getLocation() returns Point {
        handle externalObj = org_openqa_selenium_WebElement_getLocation(self.jObj);
        Point newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getRect` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `Rectangle` value returning from the Java mapping.
    public isolated function getRect() returns Rectangle {
        handle externalObj = org_openqa_selenium_WebElement_getRect(self.jObj);
        Rectangle newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getScreenshotAs` method of `org.openqa.selenium.WebElement`.
    #
    # + target - The `OutputType` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function getScreenshotAs(OutputType target) returns javalang:Object {
        handle externalObj = org_openqa_selenium_WebElement_getScreenshotAs(self.jObj, target.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getShadowRoot` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `SearchContext` value returning from the Java mapping.
    public isolated function getShadowRoot() returns SearchContext {
        handle externalObj = org_openqa_selenium_WebElement_getShadowRoot(self.jObj);
        SearchContext newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSize` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `Dimension` value returning from the Java mapping.
    public isolated function getSize() returns Dimension {
        handle externalObj = org_openqa_selenium_WebElement_getSize(self.jObj);
        Dimension newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTagName` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getTagName() returns string {
        return java:toString(org_openqa_selenium_WebElement_getTagName(self.jObj)) ?: "";
    }

    # The function that maps to the `getText` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getText() returns string {
        return java:toString(org_openqa_selenium_WebElement_getText(self.jObj)) ?: "";
    }

    # The function that maps to the `isDisplayed` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function isDisplayed() returns boolean {
        return org_openqa_selenium_WebElement_isDisplayed(self.jObj);
    }

    # The function that maps to the `isEnabled` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function isEnabled() returns boolean {
        return org_openqa_selenium_WebElement_isEnabled(self.jObj);
    }

    # The function that maps to the `isSelected` method of `org.openqa.selenium.WebElement`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function isSelected() returns boolean {
        return org_openqa_selenium_WebElement_isSelected(self.jObj);
    }

    # The function that maps to the `sendKeys` method of `org.openqa.selenium.WebElement`.
    #
    # + keysToSend - The `javalang:CharSequence[]` value required to map with the Java method parameter.
    # + return - The `error?` value returning from the Java mapping.
    public isolated function sendKeys(string[] keysToSend) returns error? {
        org_openqa_selenium_WebElement_sendKeys(self.jObj, check jarrays:toHandle(keysToSend, "java.lang.CharSequence"));
    }

    # The function that maps to the `submit` method of `org.openqa.selenium.WebElement`.
    public isolated function submit() {
        org_openqa_selenium_WebElement_submit(self.jObj);
    }

}

isolated function org_openqa_selenium_WebElement_clear(handle receiver) = @java:Method {
    name: "clear",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_click(handle receiver) = @java:Method {
    name: "click",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_findElement(handle receiver, handle arg0) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_WebElement_findElements(handle receiver, handle arg0) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_WebElement_getAccessibleName(handle receiver) returns handle = @java:Method {
    name: "getAccessibleName",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getAriaRole(handle receiver) returns handle = @java:Method {
    name: "getAriaRole",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getAttribute(handle receiver, handle name) returns handle = @java:Method {
    name: "getAttribute",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_WebElement_getCssValue(handle receiver, handle propertyName) returns handle = @java:Method {
    name: "getCssValue",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_WebElement_getDomAttribute(handle receiver, handle name) returns handle = @java:Method {
    name: "getDomAttribute",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_WebElement_getDomProperty(handle receiver, handle name) returns handle = @java:Method {
    name: "getDomProperty",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_WebElement_getLocation(handle receiver) returns handle = @java:Method {
    name: "getLocation",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getRect(handle receiver) returns handle = @java:Method {
    name: "getRect",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getScreenshotAs(handle receiver, handle target) returns handle = @java:Method {
    name: "getScreenshotAs",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["org.openqa.selenium.OutputType"]
} external;

isolated function org_openqa_selenium_WebElement_getShadowRoot(handle receiver) returns handle = @java:Method {
    name: "getShadowRoot",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getSize(handle receiver) returns handle = @java:Method {
    name: "getSize",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getTagName(handle receiver) returns handle = @java:Method {
    name: "getTagName",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_getText(handle receiver) returns handle = @java:Method {
    name: "getText",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_isDisplayed(handle receiver) returns boolean = @java:Method {
    name: "isDisplayed",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_isEnabled(handle receiver) returns boolean = @java:Method {
    name: "isEnabled",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_isSelected(handle receiver) returns boolean = @java:Method {
    name: "isSelected",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebElement_sendKeys(handle receiver, handle keysToSend) = @java:Method {
    name: "sendKeys",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: ["[Ljava.lang.CharSequence;"]
} external;

isolated function org_openqa_selenium_WebElement_submit(handle receiver) = @java:Method {
    name: "submit",
    'class: "org.openqa.selenium.WebElement",
    paramTypes: []
} external;

