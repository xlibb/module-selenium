import selenium.java.io as javaio;
import selenium.java.lang as javalang;
import selenium.java.nio.file as javaniofile;
import selenium.java.util as javautil;
import selenium.java.util.'function as javautilfunction;
import selenium.java.util.logging as javautillogging;
import selenium.org.openqa.selenium as orgopenqaselenium;
import selenium.org.openqa.selenium.'remote as orgopenqaseleniumremote;
import selenium.org.openqa.selenium.'remote.http as orgopenqaseleniumremotehttp;
import selenium.org.openqa.selenium.bidi as orgopenqaseleniumbidi;
import selenium.org.openqa.selenium.devtools as orgopenqaseleniumdevtools;
import selenium.org.openqa.selenium.federatedcredentialmanagement as orgopenqaseleniumfederatedcredentialmanagement;
import selenium.org.openqa.selenium.html5 as orgopenqaseleniumhtml5;
import selenium.org.openqa.selenium.print as orgopenqaseleniumprint;
import selenium.org.openqa.selenium.virtualauthenticator as orgopenqaseleniumvirtualauthenticator;

import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.openqa.selenium.firefox.FirefoxDriver` class.
@java:Binding {'class: "org.openqa.selenium.firefox.FirefoxDriver"}
public distinct class FirefoxDriver {

    *java:JObject;
    *orgopenqaseleniumremote:RemoteWebDriver;

    # The `handle` field that stores the reference to the `org.openqa.selenium.firefox.FirefoxDriver` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.firefox.FirefoxDriver` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.firefox.FirefoxDriver` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addVirtualAuthenticator` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + options - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value returning from the Java mapping.
    public isolated function addVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions options) returns orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_addVirtualAuthenticator(self.jObj, options.jObj);
        orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `close` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function close() {
        org_openqa_selenium_firefox_FirefoxDriver_close(self.jObj);
    }

    # The function that maps to the `deleteDownloadableFiles` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function deleteDownloadableFiles() {
        org_openqa_selenium_firefox_FirefoxDriver_deleteDownloadableFiles(self.jObj);
    }

    # The function that maps to the `downloadFile` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + fileName - The `string` value required to map with the Java method parameter.
    # + targetLocation - The `javaniofile:Path` value required to map with the Java method parameter.
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public isolated function downloadFile(string fileName, javaniofile:Path targetLocation) returns javaio:IOException? {
        error|() externalObj = org_openqa_selenium_firefox_FirefoxDriver_downloadFile(self.jObj, java:fromString(fileName), targetLocation.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `equals` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function 'equals(javalang:Object arg0) returns boolean {
        return org_openqa_selenium_firefox_FirefoxDriver_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `executeAsyncScript` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeAsyncScript(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_executeAsyncScript(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript(orgopenqaselenium:ScriptKey 'key, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_executeScript(self.jObj, 'key.jObj, check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript2(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_executeScript2(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:WebElement` value returning from the Java mapping.
    public isolated function findElement(orgopenqaselenium:By locator) returns orgopenqaselenium:WebElement {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_findElement(self.jObj, locator.jObj);
        orgopenqaselenium:WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_findElements(self.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + context - The `orgopenqaselenium:SearchContext` value required to map with the Java method parameter.
    # + findCommand - The `javautilfunction:BiFunction` value required to map with the Java method parameter.
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements2(orgopenqaselenium:SearchContext context, javautilfunction:BiFunction findCommand, orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_findElements2(self.jObj, context.jObj, findCommand.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `get` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + url - The `string` value required to map with the Java method parameter.
    public isolated function get(string url) {
        org_openqa_selenium_firefox_FirefoxDriver_get(self.jObj, java:fromString(url));
    }

    # The function that maps to the `getBiDi` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumbidi:BiDi` value returning from the Java mapping.
    public isolated function getBiDi() returns orgopenqaseleniumbidi:BiDi {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getBiDi(self.jObj);
        orgopenqaseleniumbidi:BiDi newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCapabilities` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaselenium:Capabilities` value returning from the Java mapping.
    public isolated function getCapabilities() returns orgopenqaselenium:Capabilities {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getCapabilities(self.jObj);
        orgopenqaselenium:Capabilities newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public isolated function getClass() returns javalang:Class {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCommandExecutor` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:CommandExecutor` value returning from the Java mapping.
    public isolated function getCommandExecutor() returns orgopenqaseleniumremote:CommandExecutor {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getCommandExecutor(self.jObj);
        orgopenqaseleniumremote:CommandExecutor newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getContext` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `FirefoxCommandContext` value returning from the Java mapping.
    public isolated function getContext() returns FirefoxCommandContext {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getContext(self.jObj);
        FirefoxCommandContext newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCurrentUrl` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCurrentUrl() returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_getCurrentUrl(self.jObj)) ?: "";
    }

    # The function that maps to the `getDevTools` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumdevtools:DevTools` value returning from the Java mapping.
    public isolated function getDevTools() returns orgopenqaseleniumdevtools:DevTools {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getDevTools(self.jObj);
        orgopenqaseleniumdevtools:DevTools newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDownloadableFiles` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function getDownloadableFiles() returns javautil:List {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getDownloadableFiles(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getErrorHandler` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:ErrorHandler` value returning from the Java mapping.
    public isolated function getErrorHandler() returns orgopenqaseleniumremote:ErrorHandler {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getErrorHandler(self.jObj);
        orgopenqaseleniumremote:ErrorHandler newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFederatedCredentialManagementDialog` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog` value returning from the Java mapping.
    public isolated function getFederatedCredentialManagementDialog() returns orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getFederatedCredentialManagementDialog(self.jObj);
        orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFileDetector` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:FileDetector` value returning from the Java mapping.
    public isolated function getFileDetector() returns orgopenqaseleniumremote:FileDetector {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getFileDetector(self.jObj);
        orgopenqaseleniumremote:FileDetector newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFullPageScreenshotAs` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + outputType - The `orgopenqaselenium:OutputType` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function getFullPageScreenshotAs(orgopenqaselenium:OutputType outputType) returns javalang:Object {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getFullPageScreenshotAs(self.jObj, outputType.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLocalStorage` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumhtml5:LocalStorage` value returning from the Java mapping.
    public isolated function getLocalStorage() returns orgopenqaseleniumhtml5:LocalStorage {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getLocalStorage(self.jObj);
        orgopenqaseleniumhtml5:LocalStorage newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getPageSource` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getPageSource() returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_getPageSource(self.jObj)) ?: "";
    }

    # The function that maps to the `getPinnedScripts` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getPinnedScripts() returns javautil:Set {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getPinnedScripts(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getScreenshotAs` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + outputType - The `orgopenqaselenium:OutputType` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function getScreenshotAs(orgopenqaselenium:OutputType outputType) returns javalang:Object {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getScreenshotAs(self.jObj, outputType.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSessionId` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:SessionId` value returning from the Java mapping.
    public isolated function getSessionId() returns orgopenqaseleniumremote:SessionId {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getSessionId(self.jObj);
        orgopenqaseleniumremote:SessionId newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSessionStorage` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumhtml5:SessionStorage` value returning from the Java mapping.
    public isolated function getSessionStorage() returns orgopenqaseleniumhtml5:SessionStorage {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getSessionStorage(self.jObj);
        orgopenqaseleniumhtml5:SessionStorage newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTitle` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getTitle() returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_getTitle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandle` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getWindowHandle() returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_getWindowHandle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandles` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getWindowHandles() returns javautil:Set {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_getWindowHandles(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function hashCode() returns int {
        return org_openqa_selenium_firefox_FirefoxDriver_hashCode(self.jObj);
    }

    # The function that maps to the `installExtension` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + path - The `javaniofile:Path` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function installExtension(javaniofile:Path path) returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_installExtension(self.jObj, path.jObj)) ?: "";
    }

    # The function that maps to the `installExtension` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + path - The `javaniofile:Path` value required to map with the Java method parameter.
    # + temporary - The `javalang:Boolean` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    public isolated function installExtension2(javaniofile:Path path, javalang:Boolean temporary) returns string {
        return java:toString(org_openqa_selenium_firefox_FirefoxDriver_installExtension2(self.jObj, path.jObj, temporary.jObj)) ?: "";
    }

    # The function that maps to the `manage` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaselenium:Options` value returning from the Java mapping.
    public isolated function manage() returns orgopenqaselenium:Options {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_manage(self.jObj);
        orgopenqaselenium:Options newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `maybeGetBiDi` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javautil:Optional` value returning from the Java mapping.
    public isolated function maybeGetBiDi() returns javautil:Optional {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_maybeGetBiDi(self.jObj);
        javautil:Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `maybeGetDevTools` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javautil:Optional` value returning from the Java mapping.
    public isolated function maybeGetDevTools() returns javautil:Optional {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_maybeGetDevTools(self.jObj);
        javautil:Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `navigate` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaselenium:Navigation` value returning from the Java mapping.
    public isolated function navigate() returns orgopenqaselenium:Navigation {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_navigate(self.jObj);
        orgopenqaselenium:Navigation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `network` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:Network` value returning from the Java mapping.
    public isolated function network() returns orgopenqaseleniumremote:Network {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_network(self.jObj);
        orgopenqaseleniumremote:Network newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function notify() {
        org_openqa_selenium_firefox_FirefoxDriver_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function notifyAll() {
        org_openqa_selenium_firefox_FirefoxDriver_notifyAll(self.jObj);
    }

    # The function that maps to the `perform` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + actions - The `javautil:Collection` value required to map with the Java method parameter.
    public isolated function perform(javautil:Collection actions) {
        org_openqa_selenium_firefox_FirefoxDriver_perform(self.jObj, actions.jObj);
    }

    # The function that maps to the `pin` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:ScriptKey` value returning from the Java mapping.
    public isolated function pin(string script) returns orgopenqaselenium:ScriptKey {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_pin(self.jObj, java:fromString(script));
        orgopenqaselenium:ScriptKey newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `print` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + printOptions - The `orgopenqaseleniumprint:PrintOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:Pdf` value returning from the Java mapping.
    public isolated function print(orgopenqaseleniumprint:PrintOptions printOptions) returns orgopenqaselenium:Pdf {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_print(self.jObj, printOptions.jObj);
        orgopenqaselenium:Pdf newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `quit` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function quit() {
        org_openqa_selenium_firefox_FirefoxDriver_quit(self.jObj);
    }

    # The function that maps to the `removeVirtualAuthenticator` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + authenticator - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value required to map with the Java method parameter.
    public isolated function removeVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator authenticator) {
        org_openqa_selenium_firefox_FirefoxDriver_removeVirtualAuthenticator(self.jObj, authenticator.jObj);
    }

    # The function that maps to the `requireDownloadsEnabled` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java method parameter.
    public isolated function requireDownloadsEnabled(orgopenqaselenium:Capabilities capabilities) {
        org_openqa_selenium_firefox_FirefoxDriver_requireDownloadsEnabled(self.jObj, capabilities.jObj);
    }

    # The function that maps to the `resetCooldown` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function resetCooldown() {
        org_openqa_selenium_firefox_FirefoxDriver_resetCooldown(self.jObj);
    }

    # The function that maps to the `resetInputState` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    public isolated function resetInputState() {
        org_openqa_selenium_firefox_FirefoxDriver_resetInputState(self.jObj);
    }

    # The function that maps to the `script` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaseleniumremote:Script` value returning from the Java mapping.
    public isolated function script() returns orgopenqaseleniumremote:Script {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_script(self.jObj);
        orgopenqaseleniumremote:Script newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `setContext` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + commandContext - The `FirefoxCommandContext` value required to map with the Java method parameter.
    public isolated function setContext(FirefoxCommandContext commandContext) {
        org_openqa_selenium_firefox_FirefoxDriver_setContext(self.jObj, commandContext.jObj);
    }

    # The function that maps to the `setDelayEnabled` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + enabled - The `boolean` value required to map with the Java method parameter.
    public isolated function setDelayEnabled(boolean enabled) {
        org_openqa_selenium_firefox_FirefoxDriver_setDelayEnabled(self.jObj, enabled);
    }

    # The function that maps to the `setErrorHandler` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + handler - The `orgopenqaseleniumremote:ErrorHandler` value required to map with the Java method parameter.
    public isolated function setErrorHandler(orgopenqaseleniumremote:ErrorHandler handler) {
        org_openqa_selenium_firefox_FirefoxDriver_setErrorHandler(self.jObj, handler.jObj);
    }

    # The function that maps to the `setFileDetector` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + detector - The `orgopenqaseleniumremote:FileDetector` value required to map with the Java method parameter.
    public isolated function setFileDetector(orgopenqaseleniumremote:FileDetector detector) {
        org_openqa_selenium_firefox_FirefoxDriver_setFileDetector(self.jObj, detector.jObj);
    }

    # The function that maps to the `setLogLevel` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + level - The `javautillogging:Level` value required to map with the Java method parameter.
    public isolated function setLogLevel(javautillogging:Level level) {
        org_openqa_selenium_firefox_FirefoxDriver_setLogLevel(self.jObj, level.jObj);
    }

    # The function that maps to the `switchTo` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `orgopenqaselenium:TargetLocator` value returning from the Java mapping.
    public isolated function switchTo() returns orgopenqaselenium:TargetLocator {
        handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_switchTo(self.jObj);
        orgopenqaselenium:TargetLocator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `uninstallExtension` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + extensionId - The `string` value required to map with the Java method parameter.
    public isolated function uninstallExtension(string extensionId) {
        org_openqa_selenium_firefox_FirefoxDriver_uninstallExtension(self.jObj, java:fromString(extensionId));
    }

    # The function that maps to the `unpin` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    public isolated function unpin(orgopenqaselenium:ScriptKey 'key) {
        org_openqa_selenium_firefox_FirefoxDriver_unpin(self.jObj, 'key.jObj);
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_firefox_FirefoxDriver_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_firefox_FirefoxDriver_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.firefox.FirefoxDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_firefox_FirefoxDriver_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + return - The new `FirefoxDriver` class generated.
public isolated function newFirefoxDriver1() returns FirefoxDriver {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver1();
    FirefoxDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + 'service - The `FirefoxDriverService` value required to map with the Java constructor parameter.
# + return - The new `FirefoxDriver` class generated.
public isolated function newFirefoxDriver2(FirefoxDriverService 'service) returns FirefoxDriver {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver2('service.jObj);
    FirefoxDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + 'service - The `FirefoxDriverService` value required to map with the Java constructor parameter.
# + options - The `FirefoxOptions` value required to map with the Java constructor parameter.
# + return - The new `FirefoxDriver` class generated.
public isolated function newFirefoxDriver3(FirefoxDriverService 'service, FirefoxOptions options) returns FirefoxDriver {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver3('service.jObj, options.jObj);
    FirefoxDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + 'service - The `FirefoxDriverService` value required to map with the Java constructor parameter.
# + options - The `FirefoxOptions` value required to map with the Java constructor parameter.
# + clientConfig - The `orgopenqaseleniumremotehttp:ClientConfig` value required to map with the Java constructor parameter.
# + return - The new `FirefoxDriver` class generated.
public isolated function newFirefoxDriver4(FirefoxDriverService 'service, FirefoxOptions options, orgopenqaseleniumremotehttp:ClientConfig clientConfig) returns FirefoxDriver {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver4('service.jObj, options.jObj, clientConfig.jObj);
    FirefoxDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + options - The `FirefoxOptions` value required to map with the Java constructor parameter.
# + return - The new `FirefoxDriver` class generated.
public isolated function newFirefoxDriver5(FirefoxOptions options) returns FirefoxDriver {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver5(options.jObj);
    FirefoxDriver newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `builder` method of `org.openqa.selenium.firefox.FirefoxDriver`.
#
# + return - The `orgopenqaseleniumremote:RemoteWebDriverBuilder` value returning from the Java mapping.
public isolated function FirefoxDriver_builder() returns orgopenqaseleniumremote:RemoteWebDriverBuilder {
    handle externalObj = org_openqa_selenium_firefox_FirefoxDriver_builder();
    orgopenqaseleniumremote:RemoteWebDriverBuilder newObj = new (externalObj);
    return newObj;
}

isolated function org_openqa_selenium_firefox_FirefoxDriver_addVirtualAuthenticator(handle receiver, handle options) returns handle = @java:Method {
    name: "addVirtualAuthenticator",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticatorOptions"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_builder() returns handle = @java:Method {
    name: "builder",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_close(handle receiver) = @java:Method {
    name: "close",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_deleteDownloadableFiles(handle receiver) = @java:Method {
    name: "deleteDownloadableFiles",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_downloadFile(handle receiver, handle fileName, handle targetLocation) returns error? = @java:Method {
    name: "downloadFile",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String", "java.nio.file.Path"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.Object"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_executeAsyncScript(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeAsyncScript",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_executeScript(handle receiver, handle 'key, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_executeScript2(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_findElement(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_findElements(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_findElements2(handle receiver, handle context, handle findCommand, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.SearchContext", "java.util.function.BiFunction", "org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_get(handle receiver, handle url) = @java:Method {
    name: "get",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getBiDi(handle receiver) returns handle = @java:Method {
    name: "getBiDi",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getCapabilities(handle receiver) returns handle = @java:Method {
    name: "getCapabilities",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getCommandExecutor(handle receiver) returns handle = @java:Method {
    name: "getCommandExecutor",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getContext(handle receiver) returns handle = @java:Method {
    name: "getContext",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getCurrentUrl(handle receiver) returns handle = @java:Method {
    name: "getCurrentUrl",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getDevTools(handle receiver) returns handle = @java:Method {
    name: "getDevTools",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getDownloadableFiles(handle receiver) returns handle = @java:Method {
    name: "getDownloadableFiles",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getErrorHandler(handle receiver) returns handle = @java:Method {
    name: "getErrorHandler",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getFederatedCredentialManagementDialog(handle receiver) returns handle = @java:Method {
    name: "getFederatedCredentialManagementDialog",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getFileDetector(handle receiver) returns handle = @java:Method {
    name: "getFileDetector",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getFullPageScreenshotAs(handle receiver, handle outputType) returns handle = @java:Method {
    name: "getFullPageScreenshotAs",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.OutputType"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getLocalStorage(handle receiver) returns handle = @java:Method {
    name: "getLocalStorage",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getPageSource(handle receiver) returns handle = @java:Method {
    name: "getPageSource",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getPinnedScripts(handle receiver) returns handle = @java:Method {
    name: "getPinnedScripts",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getScreenshotAs(handle receiver, handle outputType) returns handle = @java:Method {
    name: "getScreenshotAs",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.OutputType"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getSessionId(handle receiver) returns handle = @java:Method {
    name: "getSessionId",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getSessionStorage(handle receiver) returns handle = @java:Method {
    name: "getSessionStorage",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getTitle(handle receiver) returns handle = @java:Method {
    name: "getTitle",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getWindowHandle(handle receiver) returns handle = @java:Method {
    name: "getWindowHandle",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_getWindowHandles(handle receiver) returns handle = @java:Method {
    name: "getWindowHandles",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_installExtension(handle receiver, handle path) returns handle = @java:Method {
    name: "installExtension",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.nio.file.Path"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_installExtension2(handle receiver, handle path, handle temporary) returns handle = @java:Method {
    name: "installExtension",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.nio.file.Path", "java.lang.Boolean"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_manage(handle receiver) returns handle = @java:Method {
    name: "manage",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_maybeGetBiDi(handle receiver) returns handle = @java:Method {
    name: "maybeGetBiDi",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_maybeGetDevTools(handle receiver) returns handle = @java:Method {
    name: "maybeGetDevTools",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_navigate(handle receiver) returns handle = @java:Method {
    name: "navigate",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_network(handle receiver) returns handle = @java:Method {
    name: "network",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_perform(handle receiver, handle actions) = @java:Method {
    name: "perform",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.util.Collection"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_pin(handle receiver, handle script) returns handle = @java:Method {
    name: "pin",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_print(handle receiver, handle printOptions) returns handle = @java:Method {
    name: "print",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.print.PrintOptions"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_quit(handle receiver) = @java:Method {
    name: "quit",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_removeVirtualAuthenticator(handle receiver, handle authenticator) = @java:Method {
    name: "removeVirtualAuthenticator",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticator"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_requireDownloadsEnabled(handle receiver, handle capabilities) = @java:Method {
    name: "requireDownloadsEnabled",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_resetCooldown(handle receiver) = @java:Method {
    name: "resetCooldown",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_resetInputState(handle receiver) = @java:Method {
    name: "resetInputState",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_script(handle receiver) returns handle = @java:Method {
    name: "script",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_setContext(handle receiver, handle commandContext) = @java:Method {
    name: "setContext",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.firefox.FirefoxCommandContext"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_setDelayEnabled(handle receiver, boolean enabled) = @java:Method {
    name: "setDelayEnabled",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["boolean"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_setErrorHandler(handle receiver, handle handler) = @java:Method {
    name: "setErrorHandler",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.remote.ErrorHandler"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_setFileDetector(handle receiver, handle detector) = @java:Method {
    name: "setFileDetector",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.remote.FileDetector"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_setLogLevel(handle receiver, handle level) = @java:Method {
    name: "setLogLevel",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.util.logging.Level"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_switchTo(handle receiver) returns handle = @java:Method {
    name: "switchTo",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_uninstallExtension(handle receiver, handle extensionId) = @java:Method {
    name: "uninstallExtension",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_unpin(handle receiver, handle 'key) = @java:Method {
    name: "unpin",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["long"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["long", "int"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver1() returns handle = @java:Constructor {
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver2(handle 'service) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.firefox.FirefoxDriverService"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver3(handle 'service, handle options) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.firefox.FirefoxDriverService", "org.openqa.selenium.firefox.FirefoxOptions"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver4(handle 'service, handle options, handle clientConfig) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.firefox.FirefoxDriverService", "org.openqa.selenium.firefox.FirefoxOptions", "org.openqa.selenium.remote.http.ClientConfig"]
} external;

isolated function org_openqa_selenium_firefox_FirefoxDriver_newFirefoxDriver5(handle options) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.firefox.FirefoxDriver",
    paramTypes: ["org.openqa.selenium.firefox.FirefoxOptions"]
} external;

