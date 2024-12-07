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

import selenium.java.util as javautil;

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.openqa.selenium.WebDriver` interface.
@java:Binding {'class: "org.openqa.selenium.WebDriver"}
public distinct class WebDriver {

    *java:JObject;

    # The `handle` field that stores the reference to the `org.openqa.selenium.WebDriver` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.WebDriver` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.WebDriver` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `close` method of `org.openqa.selenium.WebDriver`.
    public isolated function close() {
        org_openqa_selenium_WebDriver_close(self.jObj);
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.WebDriver`.
    #
    # + arg0 - The `By` value required to map with the Java method parameter.
    # + return - The `WebElement` value returning from the Java mapping.
    public isolated function findElement(By arg0) returns WebElement {
        handle externalObj = org_openqa_selenium_WebDriver_findElement(self.jObj, arg0.jObj);
        WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.WebDriver`.
    #
    # + arg0 - The `By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(By arg0) returns javautil:List {
        handle externalObj = org_openqa_selenium_WebDriver_findElements(self.jObj, arg0.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `get` method of `org.openqa.selenium.WebDriver`.
    #
    # + url - The `string` value required to map with the Java method parameter.
    public isolated function get(string url) {
        org_openqa_selenium_WebDriver_get(self.jObj, java:fromString(url));
    }

    # The function that maps to the `getCurrentUrl` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCurrentUrl() returns string {
        return java:toString(org_openqa_selenium_WebDriver_getCurrentUrl(self.jObj)) ?: "";
    }

    # The function that maps to the `getPageSource` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getPageSource() returns string {
        return java:toString(org_openqa_selenium_WebDriver_getPageSource(self.jObj)) ?: "";
    }

    # The function that maps to the `getTitle` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getTitle() returns string {
        return java:toString(org_openqa_selenium_WebDriver_getTitle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandle` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getWindowHandle() returns string {
        return java:toString(org_openqa_selenium_WebDriver_getWindowHandle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandles` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getWindowHandles() returns javautil:Set {
        handle externalObj = org_openqa_selenium_WebDriver_getWindowHandles(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `manage` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `Options` value returning from the Java mapping.
    public isolated function manage() returns Options {
        handle externalObj = org_openqa_selenium_WebDriver_manage(self.jObj);
        Options newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `navigate` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `Navigation` value returning from the Java mapping.
    public isolated function navigate() returns Navigation {
        handle externalObj = org_openqa_selenium_WebDriver_navigate(self.jObj);
        Navigation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `quit` method of `org.openqa.selenium.WebDriver`.
    public isolated function quit() {
        org_openqa_selenium_WebDriver_quit(self.jObj);
    }

    # The function that maps to the `switchTo` method of `org.openqa.selenium.WebDriver`.
    #
    # + return - The `TargetLocator` value returning from the Java mapping.
    public isolated function switchTo() returns TargetLocator {
        handle externalObj = org_openqa_selenium_WebDriver_switchTo(self.jObj);
        TargetLocator newObj = new (externalObj);
        return newObj;
    }

}

isolated function org_openqa_selenium_WebDriver_close(handle receiver) = @java:Method {
    name: "close",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_findElement(handle receiver, handle arg0) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_WebDriver_findElements(handle receiver, handle arg0) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_WebDriver_get(handle receiver, handle url) = @java:Method {
    name: "get",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_WebDriver_getCurrentUrl(handle receiver) returns handle = @java:Method {
    name: "getCurrentUrl",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_getPageSource(handle receiver) returns handle = @java:Method {
    name: "getPageSource",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_getTitle(handle receiver) returns handle = @java:Method {
    name: "getTitle",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_getWindowHandle(handle receiver) returns handle = @java:Method {
    name: "getWindowHandle",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_getWindowHandles(handle receiver) returns handle = @java:Method {
    name: "getWindowHandles",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_manage(handle receiver) returns handle = @java:Method {
    name: "manage",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_navigate(handle receiver) returns handle = @java:Method {
    name: "navigate",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_quit(handle receiver) = @java:Method {
    name: "quit",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_WebDriver_switchTo(handle receiver) returns handle = @java:Method {
    name: "switchTo",
    'class: "org.openqa.selenium.WebDriver",
    paramTypes: []
} external;

