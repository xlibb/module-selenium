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

import selenium.java.io as javaio;
import selenium.java.lang as javalang;
import selenium.java.nio.file as javaniofile;
import selenium.java.util as javautil;
import selenium.java.util.'function as javautilfunction;
import selenium.java.util.logging as javautillogging;
import selenium.org.openqa.selenium as orgopenqaselenium;
import selenium.org.openqa.selenium.'remote as orgopenqaseleniumremote;
import selenium.org.openqa.selenium.bidi as orgopenqaseleniumbidi;
import selenium.org.openqa.selenium.devtools as orgopenqaseleniumdevtools;
import selenium.org.openqa.selenium.federatedcredentialmanagement as orgopenqaseleniumfederatedcredentialmanagement;
import selenium.org.openqa.selenium.html5 as orgopenqaseleniumhtml5;
import selenium.org.openqa.selenium.logging as orgopenqaseleniumlogging;
import selenium.org.openqa.selenium.mobile as orgopenqaseleniummobile;
import selenium.org.openqa.selenium.print as orgopenqaseleniumprint;
import selenium.org.openqa.selenium.virtualauthenticator as orgopenqaseleniumvirtualauthenticator;

import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.openqa.selenium.chromium.ChromiumDriver` class.
@java:Binding {'class: "org.openqa.selenium.chromium.ChromiumDriver"}
public distinct class ChromiumDriver {

    *java:JObject;
    *orgopenqaseleniumremote:RemoteWebDriver;

    # The `handle` field that stores the reference to the `org.openqa.selenium.chromium.ChromiumDriver` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.chromium.ChromiumDriver` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.chromium.ChromiumDriver` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addVirtualAuthenticator` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + options - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value returning from the Java mapping.
    public isolated function addVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions options) returns orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_addVirtualAuthenticator(self.jObj, options.jObj);
        orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `close` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function close() {
        org_openqa_selenium_chromium_ChromiumDriver_close(self.jObj);
    }

    # The function that maps to the `deleteDownloadableFiles` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function deleteDownloadableFiles() {
        org_openqa_selenium_chromium_ChromiumDriver_deleteDownloadableFiles(self.jObj);
    }

    # The function that maps to the `deleteNetworkConditions` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function deleteNetworkConditions() {
        org_openqa_selenium_chromium_ChromiumDriver_deleteNetworkConditions(self.jObj);
    }

    # The function that maps to the `downloadFile` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + fileName - The `string` value required to map with the Java method parameter.
    # + targetLocation - The `javaniofile:Path` value required to map with the Java method parameter.
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public isolated function downloadFile(string fileName, javaniofile:Path targetLocation) returns javaio:IOException? {
        error|() externalObj = org_openqa_selenium_chromium_ChromiumDriver_downloadFile(self.jObj, java:fromString(fileName), targetLocation.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `equals` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function 'equals(javalang:Object arg0) returns boolean {
        return org_openqa_selenium_chromium_ChromiumDriver_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `executeAsyncScript` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeAsyncScript(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_executeAsyncScript(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeCdpCommand` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + commandName - The `string` value required to map with the Java method parameter.
    # + parameters - The `javautil:Map` value required to map with the Java method parameter.
    # + return - The `javautil:Map` value returning from the Java mapping.
    public isolated function executeCdpCommand(string commandName, javautil:Map parameters) returns javautil:Map {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_executeCdpCommand(self.jObj, java:fromString(commandName), parameters.jObj);
        javautil:Map newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript(orgopenqaselenium:ScriptKey 'key, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_executeScript(self.jObj, 'key.jObj, check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript2(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_executeScript2(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:WebElement` value returning from the Java mapping.
    public isolated function findElement(orgopenqaselenium:By locator) returns orgopenqaselenium:WebElement {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_findElement(self.jObj, locator.jObj);
        orgopenqaselenium:WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_findElements(self.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + context - The `orgopenqaselenium:SearchContext` value required to map with the Java method parameter.
    # + findCommand - The `javautilfunction:BiFunction` value required to map with the Java method parameter.
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements2(orgopenqaselenium:SearchContext context, javautilfunction:BiFunction findCommand, orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_findElements2(self.jObj, context.jObj, findCommand.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `get` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + url - The `string` value required to map with the Java method parameter.
    public isolated function get(string url) {
        org_openqa_selenium_chromium_ChromiumDriver_get(self.jObj, java:fromString(url));
    }

    # The function that maps to the `getBiDi` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumbidi:BiDi` value returning from the Java mapping.
    public isolated function getBiDi() returns orgopenqaseleniumbidi:BiDi {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getBiDi(self.jObj);
        orgopenqaseleniumbidi:BiDi newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCapabilities` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaselenium:Capabilities` value returning from the Java mapping.
    public isolated function getCapabilities() returns orgopenqaselenium:Capabilities {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getCapabilities(self.jObj);
        orgopenqaselenium:Capabilities newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCastIssueMessage` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCastIssueMessage() returns string {
        return java:toString(org_openqa_selenium_chromium_ChromiumDriver_getCastIssueMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getCastSinks` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function getCastSinks() returns javautil:List {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getCastSinks(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public isolated function getClass() returns javalang:Class {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCommandExecutor` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:CommandExecutor` value returning from the Java mapping.
    public isolated function getCommandExecutor() returns orgopenqaseleniumremote:CommandExecutor {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getCommandExecutor(self.jObj);
        orgopenqaseleniumremote:CommandExecutor newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCurrentUrl` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCurrentUrl() returns string {
        return java:toString(org_openqa_selenium_chromium_ChromiumDriver_getCurrentUrl(self.jObj)) ?: "";
    }

    # The function that maps to the `getDevTools` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumdevtools:DevTools` value returning from the Java mapping.
    public isolated function getDevTools() returns orgopenqaseleniumdevtools:DevTools {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getDevTools(self.jObj);
        orgopenqaseleniumdevtools:DevTools newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDownloadableFiles` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function getDownloadableFiles() returns javautil:List {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getDownloadableFiles(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getErrorHandler` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:ErrorHandler` value returning from the Java mapping.
    public isolated function getErrorHandler() returns orgopenqaseleniumremote:ErrorHandler {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getErrorHandler(self.jObj);
        orgopenqaseleniumremote:ErrorHandler newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFederatedCredentialManagementDialog` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog` value returning from the Java mapping.
    public isolated function getFederatedCredentialManagementDialog() returns orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getFederatedCredentialManagementDialog(self.jObj);
        orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFileDetector` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:FileDetector` value returning from the Java mapping.
    public isolated function getFileDetector() returns orgopenqaseleniumremote:FileDetector {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getFileDetector(self.jObj);
        orgopenqaseleniumremote:FileDetector newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLocalStorage` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumhtml5:LocalStorage` value returning from the Java mapping.
    public isolated function getLocalStorage() returns orgopenqaseleniumhtml5:LocalStorage {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getLocalStorage(self.jObj);
        orgopenqaseleniumhtml5:LocalStorage newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getNetworkConditions` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `ChromiumNetworkConditions` value returning from the Java mapping.
    public isolated function getNetworkConditions() returns ChromiumNetworkConditions {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getNetworkConditions(self.jObj);
        ChromiumNetworkConditions newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getNetworkConnection` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniummobile:ConnectionType` value returning from the Java mapping.
    public isolated function getNetworkConnection() returns orgopenqaseleniummobile:ConnectionType {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getNetworkConnection(self.jObj);
        orgopenqaseleniummobile:ConnectionType newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getPageSource` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getPageSource() returns string {
        return java:toString(org_openqa_selenium_chromium_ChromiumDriver_getPageSource(self.jObj)) ?: "";
    }

    # The function that maps to the `getPinnedScripts` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getPinnedScripts() returns javautil:Set {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getPinnedScripts(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getScreenshotAs` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + outputType - The `orgopenqaselenium:OutputType` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function getScreenshotAs(orgopenqaselenium:OutputType outputType) returns javalang:Object {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getScreenshotAs(self.jObj, outputType.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSessionId` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:SessionId` value returning from the Java mapping.
    public isolated function getSessionId() returns orgopenqaseleniumremote:SessionId {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getSessionId(self.jObj);
        orgopenqaseleniumremote:SessionId newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSessionStorage` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumhtml5:SessionStorage` value returning from the Java mapping.
    public isolated function getSessionStorage() returns orgopenqaseleniumhtml5:SessionStorage {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getSessionStorage(self.jObj);
        orgopenqaseleniumhtml5:SessionStorage newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTitle` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getTitle() returns string {
        return java:toString(org_openqa_selenium_chromium_ChromiumDriver_getTitle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandle` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getWindowHandle() returns string {
        return java:toString(org_openqa_selenium_chromium_ChromiumDriver_getWindowHandle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandles` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getWindowHandles() returns javautil:Set {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getWindowHandles(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function hashCode() returns int {
        return org_openqa_selenium_chromium_ChromiumDriver_hashCode(self.jObj);
    }

    # The function that maps to the `launchApp` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + id - The `string` value required to map with the Java method parameter.
    public isolated function launchApp(string id) {
        org_openqa_selenium_chromium_ChromiumDriver_launchApp(self.jObj, java:fromString(id));
    }

    # The function that maps to the `location` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumhtml5:Location` value returning from the Java mapping.
    public isolated function location() returns orgopenqaseleniumhtml5:Location {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_location(self.jObj);
        orgopenqaseleniumhtml5:Location newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `manage` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaselenium:Options` value returning from the Java mapping.
    public isolated function manage() returns orgopenqaselenium:Options {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_manage(self.jObj);
        orgopenqaselenium:Options newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `maybeGetBiDi` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:Optional` value returning from the Java mapping.
    public isolated function maybeGetBiDi() returns javautil:Optional {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_maybeGetBiDi(self.jObj);
        javautil:Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `maybeGetDevTools` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javautil:Optional` value returning from the Java mapping.
    public isolated function maybeGetDevTools() returns javautil:Optional {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_maybeGetDevTools(self.jObj);
        javautil:Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `navigate` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaselenium:Navigation` value returning from the Java mapping.
    public isolated function navigate() returns orgopenqaselenium:Navigation {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_navigate(self.jObj);
        orgopenqaselenium:Navigation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `network` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:Network` value returning from the Java mapping.
    public isolated function network() returns orgopenqaseleniumremote:Network {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_network(self.jObj);
        orgopenqaseleniumremote:Network newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function notify() {
        org_openqa_selenium_chromium_ChromiumDriver_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function notifyAll() {
        org_openqa_selenium_chromium_ChromiumDriver_notifyAll(self.jObj);
    }

    # The function that maps to the `onLogEvent` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + kind - The `orgopenqaseleniumlogging:EventType` value required to map with the Java method parameter.
    public isolated function onLogEvent(orgopenqaseleniumlogging:EventType kind) {
        org_openqa_selenium_chromium_ChromiumDriver_onLogEvent(self.jObj, kind.jObj);
    }

    # The function that maps to the `perform` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + actions - The `javautil:Collection` value required to map with the Java method parameter.
    public isolated function perform(javautil:Collection actions) {
        org_openqa_selenium_chromium_ChromiumDriver_perform(self.jObj, actions.jObj);
    }

    # The function that maps to the `pin` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:ScriptKey` value returning from the Java mapping.
    public isolated function pin(string script) returns orgopenqaselenium:ScriptKey {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_pin(self.jObj, java:fromString(script));
        orgopenqaselenium:ScriptKey newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `print` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + printOptions - The `orgopenqaseleniumprint:PrintOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:Pdf` value returning from the Java mapping.
    public isolated function print(orgopenqaseleniumprint:PrintOptions printOptions) returns orgopenqaselenium:Pdf {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_print(self.jObj, printOptions.jObj);
        orgopenqaselenium:Pdf newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `quit` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function quit() {
        org_openqa_selenium_chromium_ChromiumDriver_quit(self.jObj);
    }

    # The function that maps to the `register` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + whenThisMatches - The `javautilfunction:Predicate` value required to map with the Java method parameter.
    # + useTheseCredentials - The `javautilfunction:Supplier` value required to map with the Java method parameter.
    public isolated function register(javautilfunction:Predicate whenThisMatches, javautilfunction:Supplier useTheseCredentials) {
        org_openqa_selenium_chromium_ChromiumDriver_register(self.jObj, whenThisMatches.jObj, useTheseCredentials.jObj);
    }

    # The function that maps to the `register` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + alwaysUseTheseCredentials - The `javautilfunction:Supplier` value required to map with the Java method parameter.
    public isolated function register2(javautilfunction:Supplier alwaysUseTheseCredentials) {
        org_openqa_selenium_chromium_ChromiumDriver_register2(self.jObj, alwaysUseTheseCredentials.jObj);
    }

    # The function that maps to the `removeVirtualAuthenticator` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + authenticator - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value required to map with the Java method parameter.
    public isolated function removeVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator authenticator) {
        org_openqa_selenium_chromium_ChromiumDriver_removeVirtualAuthenticator(self.jObj, authenticator.jObj);
    }

    # The function that maps to the `requireDownloadsEnabled` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java method parameter.
    public isolated function requireDownloadsEnabled(orgopenqaselenium:Capabilities capabilities) {
        org_openqa_selenium_chromium_ChromiumDriver_requireDownloadsEnabled(self.jObj, capabilities.jObj);
    }

    # The function that maps to the `resetCooldown` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function resetCooldown() {
        org_openqa_selenium_chromium_ChromiumDriver_resetCooldown(self.jObj);
    }

    # The function that maps to the `resetInputState` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    public isolated function resetInputState() {
        org_openqa_selenium_chromium_ChromiumDriver_resetInputState(self.jObj);
    }

    # The function that maps to the `script` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaseleniumremote:Script` value returning from the Java mapping.
    public isolated function script() returns orgopenqaseleniumremote:Script {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_script(self.jObj);
        orgopenqaseleniumremote:Script newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `selectCastSink` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + deviceName - The `string` value required to map with the Java method parameter.
    public isolated function selectCastSink(string deviceName) {
        org_openqa_selenium_chromium_ChromiumDriver_selectCastSink(self.jObj, java:fromString(deviceName));
    }

    # The function that maps to the `setDelayEnabled` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + enabled - The `boolean` value required to map with the Java method parameter.
    public isolated function setDelayEnabled(boolean enabled) {
        org_openqa_selenium_chromium_ChromiumDriver_setDelayEnabled(self.jObj, enabled);
    }

    # The function that maps to the `setErrorHandler` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + handler - The `orgopenqaseleniumremote:ErrorHandler` value required to map with the Java method parameter.
    public isolated function setErrorHandler(orgopenqaseleniumremote:ErrorHandler handler) {
        org_openqa_selenium_chromium_ChromiumDriver_setErrorHandler(self.jObj, handler.jObj);
    }

    # The function that maps to the `setFileDetector` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + detector - The `orgopenqaseleniumremote:FileDetector` value required to map with the Java method parameter.
    public isolated function setFileDetector(orgopenqaseleniumremote:FileDetector detector) {
        org_openqa_selenium_chromium_ChromiumDriver_setFileDetector(self.jObj, detector.jObj);
    }

    # The function that maps to the `setLocation` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + location - The `orgopenqaseleniumhtml5:Location` value required to map with the Java method parameter.
    public isolated function setLocation(orgopenqaseleniumhtml5:Location location) {
        org_openqa_selenium_chromium_ChromiumDriver_setLocation(self.jObj, location.jObj);
    }

    # The function that maps to the `setLogLevel` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + level - The `javautillogging:Level` value required to map with the Java method parameter.
    public isolated function setLogLevel(javautillogging:Level level) {
        org_openqa_selenium_chromium_ChromiumDriver_setLogLevel(self.jObj, level.jObj);
    }

    # The function that maps to the `setNetworkConditions` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + networkConditions - The `ChromiumNetworkConditions` value required to map with the Java method parameter.
    public isolated function setNetworkConditions(ChromiumNetworkConditions networkConditions) {
        org_openqa_selenium_chromium_ChromiumDriver_setNetworkConditions(self.jObj, networkConditions.jObj);
    }

    # The function that maps to the `setNetworkConnection` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + 'type - The `orgopenqaseleniummobile:ConnectionType` value required to map with the Java method parameter.
    # + return - The `orgopenqaseleniummobile:ConnectionType` value returning from the Java mapping.
    public isolated function setNetworkConnection(orgopenqaseleniummobile:ConnectionType 'type) returns orgopenqaseleniummobile:ConnectionType {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_setNetworkConnection(self.jObj, 'type.jObj);
        orgopenqaseleniummobile:ConnectionType newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `setPermission` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + name - The `string` value required to map with the Java method parameter.
    # + value - The `string` value required to map with the Java method parameter.
    public isolated function setPermission(string name, string value) {
        org_openqa_selenium_chromium_ChromiumDriver_setPermission(self.jObj, java:fromString(name), java:fromString(value));
    }

    # The function that maps to the `startDesktopMirroring` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + deviceName - The `string` value required to map with the Java method parameter.
    public isolated function startDesktopMirroring(string deviceName) {
        org_openqa_selenium_chromium_ChromiumDriver_startDesktopMirroring(self.jObj, java:fromString(deviceName));
    }

    # The function that maps to the `startTabMirroring` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + deviceName - The `string` value required to map with the Java method parameter.
    public isolated function startTabMirroring(string deviceName) {
        org_openqa_selenium_chromium_ChromiumDriver_startTabMirroring(self.jObj, java:fromString(deviceName));
    }

    # The function that maps to the `stopCasting` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + deviceName - The `string` value required to map with the Java method parameter.
    public isolated function stopCasting(string deviceName) {
        org_openqa_selenium_chromium_ChromiumDriver_stopCasting(self.jObj, java:fromString(deviceName));
    }

    # The function that maps to the `switchTo` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `orgopenqaselenium:TargetLocator` value returning from the Java mapping.
    public isolated function switchTo() returns orgopenqaselenium:TargetLocator {
        handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_switchTo(self.jObj);
        orgopenqaselenium:TargetLocator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `unpin` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    public isolated function unpin(orgopenqaselenium:ScriptKey 'key) {
        org_openqa_selenium_chromium_ChromiumDriver_unpin(self.jObj, 'key.jObj);
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_chromium_ChromiumDriver_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_chromium_ChromiumDriver_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.chromium.ChromiumDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_chromium_ChromiumDriver_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `builder` method of `org.openqa.selenium.chromium.ChromiumDriver`.
#
# + return - The `orgopenqaseleniumremote:RemoteWebDriverBuilder` value returning from the Java mapping.
public isolated function ChromiumDriver_builder() returns orgopenqaseleniumremote:RemoteWebDriverBuilder {
    handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_builder();
    orgopenqaseleniumremote:RemoteWebDriverBuilder newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `IS_CHROMIUM_BROWSER`.
#
# + return - The `Predicate` value of the field.
public isolated function ChromiumDriver_getIS_CHROMIUM_BROWSER() returns javautilfunction:Predicate {
    handle externalObj = org_openqa_selenium_chromium_ChromiumDriver_getIS_CHROMIUM_BROWSER();
    javautilfunction:Predicate newObj = new (externalObj);
    return newObj;
}

isolated function org_openqa_selenium_chromium_ChromiumDriver_addVirtualAuthenticator(handle receiver, handle options) returns handle = @java:Method {
    name: "addVirtualAuthenticator",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticatorOptions"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_builder() returns handle = @java:Method {
    name: "builder",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_close(handle receiver) = @java:Method {
    name: "close",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_deleteDownloadableFiles(handle receiver) = @java:Method {
    name: "deleteDownloadableFiles",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_deleteNetworkConditions(handle receiver) = @java:Method {
    name: "deleteNetworkConditions",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_downloadFile(handle receiver, handle fileName, handle targetLocation) returns error? = @java:Method {
    name: "downloadFile",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String", "java.nio.file.Path"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.Object"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_executeAsyncScript(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeAsyncScript",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_executeCdpCommand(handle receiver, handle commandName, handle parameters) returns handle = @java:Method {
    name: "executeCdpCommand",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String", "java.util.Map"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_executeScript(handle receiver, handle 'key, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_executeScript2(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_findElement(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_findElements(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_findElements2(handle receiver, handle context, handle findCommand, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.SearchContext", "java.util.function.BiFunction", "org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_get(handle receiver, handle url) = @java:Method {
    name: "get",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getBiDi(handle receiver) returns handle = @java:Method {
    name: "getBiDi",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getCapabilities(handle receiver) returns handle = @java:Method {
    name: "getCapabilities",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getCastIssueMessage(handle receiver) returns handle = @java:Method {
    name: "getCastIssueMessage",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getCastSinks(handle receiver) returns handle = @java:Method {
    name: "getCastSinks",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getCommandExecutor(handle receiver) returns handle = @java:Method {
    name: "getCommandExecutor",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getCurrentUrl(handle receiver) returns handle = @java:Method {
    name: "getCurrentUrl",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getDevTools(handle receiver) returns handle = @java:Method {
    name: "getDevTools",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getDownloadableFiles(handle receiver) returns handle = @java:Method {
    name: "getDownloadableFiles",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getErrorHandler(handle receiver) returns handle = @java:Method {
    name: "getErrorHandler",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getFederatedCredentialManagementDialog(handle receiver) returns handle = @java:Method {
    name: "getFederatedCredentialManagementDialog",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getFileDetector(handle receiver) returns handle = @java:Method {
    name: "getFileDetector",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getLocalStorage(handle receiver) returns handle = @java:Method {
    name: "getLocalStorage",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getNetworkConditions(handle receiver) returns handle = @java:Method {
    name: "getNetworkConditions",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getNetworkConnection(handle receiver) returns handle = @java:Method {
    name: "getNetworkConnection",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getPageSource(handle receiver) returns handle = @java:Method {
    name: "getPageSource",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getPinnedScripts(handle receiver) returns handle = @java:Method {
    name: "getPinnedScripts",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getScreenshotAs(handle receiver, handle outputType) returns handle = @java:Method {
    name: "getScreenshotAs",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.OutputType"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getSessionId(handle receiver) returns handle = @java:Method {
    name: "getSessionId",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getSessionStorage(handle receiver) returns handle = @java:Method {
    name: "getSessionStorage",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getTitle(handle receiver) returns handle = @java:Method {
    name: "getTitle",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getWindowHandle(handle receiver) returns handle = @java:Method {
    name: "getWindowHandle",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getWindowHandles(handle receiver) returns handle = @java:Method {
    name: "getWindowHandles",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_launchApp(handle receiver, handle id) = @java:Method {
    name: "launchApp",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_location(handle receiver) returns handle = @java:Method {
    name: "location",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_manage(handle receiver) returns handle = @java:Method {
    name: "manage",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_maybeGetBiDi(handle receiver) returns handle = @java:Method {
    name: "maybeGetBiDi",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_maybeGetDevTools(handle receiver) returns handle = @java:Method {
    name: "maybeGetDevTools",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_navigate(handle receiver) returns handle = @java:Method {
    name: "navigate",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_network(handle receiver) returns handle = @java:Method {
    name: "network",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_onLogEvent(handle receiver, handle kind) = @java:Method {
    name: "onLogEvent",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.logging.EventType"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_perform(handle receiver, handle actions) = @java:Method {
    name: "perform",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.util.Collection"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_pin(handle receiver, handle script) returns handle = @java:Method {
    name: "pin",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_print(handle receiver, handle printOptions) returns handle = @java:Method {
    name: "print",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.print.PrintOptions"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_quit(handle receiver) = @java:Method {
    name: "quit",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_register(handle receiver, handle whenThisMatches, handle useTheseCredentials) = @java:Method {
    name: "register",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.util.function.Predicate", "java.util.function.Supplier"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_register2(handle receiver, handle alwaysUseTheseCredentials) = @java:Method {
    name: "register",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.util.function.Supplier"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_removeVirtualAuthenticator(handle receiver, handle authenticator) = @java:Method {
    name: "removeVirtualAuthenticator",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticator"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_requireDownloadsEnabled(handle receiver, handle capabilities) = @java:Method {
    name: "requireDownloadsEnabled",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_resetCooldown(handle receiver) = @java:Method {
    name: "resetCooldown",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_resetInputState(handle receiver) = @java:Method {
    name: "resetInputState",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_script(handle receiver) returns handle = @java:Method {
    name: "script",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_selectCastSink(handle receiver, handle deviceName) = @java:Method {
    name: "selectCastSink",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setDelayEnabled(handle receiver, boolean enabled) = @java:Method {
    name: "setDelayEnabled",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["boolean"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setErrorHandler(handle receiver, handle handler) = @java:Method {
    name: "setErrorHandler",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.remote.ErrorHandler"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setFileDetector(handle receiver, handle detector) = @java:Method {
    name: "setFileDetector",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.remote.FileDetector"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setLocation(handle receiver, handle location) = @java:Method {
    name: "setLocation",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.html5.Location"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setLogLevel(handle receiver, handle level) = @java:Method {
    name: "setLogLevel",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.util.logging.Level"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setNetworkConditions(handle receiver, handle networkConditions) = @java:Method {
    name: "setNetworkConditions",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.chromium.ChromiumNetworkConditions"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setNetworkConnection(handle receiver, handle 'type) returns handle = @java:Method {
    name: "setNetworkConnection",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.mobile.NetworkConnection$ConnectionType"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_setPermission(handle receiver, handle name, handle value) = @java:Method {
    name: "setPermission",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String", "java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_startDesktopMirroring(handle receiver, handle deviceName) = @java:Method {
    name: "startDesktopMirroring",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_startTabMirroring(handle receiver, handle deviceName) = @java:Method {
    name: "startTabMirroring",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_stopCasting(handle receiver, handle deviceName) = @java:Method {
    name: "stopCasting",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_switchTo(handle receiver) returns handle = @java:Method {
    name: "switchTo",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_unpin(handle receiver, handle 'key) = @java:Method {
    name: "unpin",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["long"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.chromium.ChromiumDriver",
    paramTypes: ["long", "int"]
} external;

isolated function org_openqa_selenium_chromium_ChromiumDriver_getIS_CHROMIUM_BROWSER() returns handle = @java:FieldGet {
    name: "IS_CHROMIUM_BROWSER",
    'class: "org.openqa.selenium.chromium.ChromiumDriver"
} external;

