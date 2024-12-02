import selenium.java.io as javaio;
import selenium.java.lang as javalang;
import selenium.java.net as javanet;
import selenium.java.nio.file as javaniofile;
import selenium.java.util as javautil;
import selenium.java.util.'function as javautilfunction;
import selenium.java.util.logging as javautillogging;
import selenium.org.openqa.selenium as orgopenqaselenium;
import selenium.org.openqa.selenium.federatedcredentialmanagement as orgopenqaseleniumfederatedcredentialmanagement;
import selenium.org.openqa.selenium.print as orgopenqaseleniumprint;
import selenium.org.openqa.selenium.virtualauthenticator as orgopenqaseleniumvirtualauthenticator;

import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.openqa.selenium.remote.RemoteWebDriver` class.
@java:Binding {'class: "org.openqa.selenium.remote.RemoteWebDriver"}
public distinct class RemoteWebDriver {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `org.openqa.selenium.remote.RemoteWebDriver` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.remote.RemoteWebDriver` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.remote.RemoteWebDriver` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addVirtualAuthenticator` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + options - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value returning from the Java mapping.
    public isolated function addVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticatorOptions options) returns orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_addVirtualAuthenticator(self.jObj, options.jObj);
        orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `close` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function close() {
        org_openqa_selenium_remote_RemoteWebDriver_close(self.jObj);
    }

    # The function that maps to the `deleteDownloadableFiles` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function deleteDownloadableFiles() {
        org_openqa_selenium_remote_RemoteWebDriver_deleteDownloadableFiles(self.jObj);
    }

    # The function that maps to the `downloadFile` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + fileName - The `string` value required to map with the Java method parameter.
    # + targetLocation - The `javaniofile:Path` value required to map with the Java method parameter.
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public isolated function downloadFile(string fileName, javaniofile:Path targetLocation) returns javaio:IOException? {
        error|() externalObj = org_openqa_selenium_remote_RemoteWebDriver_downloadFile(self.jObj, java:fromString(fileName), targetLocation.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `equals` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function 'equals(javalang:Object arg0) returns boolean {
        return org_openqa_selenium_remote_RemoteWebDriver_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `executeAsyncScript` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeAsyncScript(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_executeAsyncScript(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript(orgopenqaselenium:ScriptKey 'key, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_executeScript(self.jObj, 'key.jObj, check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `executeScript` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + args - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function executeScript2(string script, javalang:Object[] args) returns javalang:Object|error {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_executeScript2(self.jObj, java:fromString(script), check jarrays:toHandle(args, "java.lang.Object"));
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:WebElement` value returning from the Java mapping.
    public isolated function findElement(orgopenqaselenium:By locator) returns orgopenqaselenium:WebElement {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_findElement(self.jObj, locator.jObj);
        orgopenqaselenium:WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_findElements(self.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + context - The `orgopenqaselenium:SearchContext` value required to map with the Java method parameter.
    # + findCommand - The `javautilfunction:BiFunction` value required to map with the Java method parameter.
    # + locator - The `orgopenqaselenium:By` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements2(orgopenqaselenium:SearchContext context, javautilfunction:BiFunction findCommand, orgopenqaselenium:By locator) returns javautil:List {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_findElements2(self.jObj, context.jObj, findCommand.jObj, locator.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `get` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + url - The `string` value required to map with the Java method parameter.
    public isolated function get(string url) {
        org_openqa_selenium_remote_RemoteWebDriver_get(self.jObj, java:fromString(url));
    }

    # The function that maps to the `getCapabilities` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `orgopenqaselenium:Capabilities` value returning from the Java mapping.
    public isolated function getCapabilities() returns orgopenqaselenium:Capabilities {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getCapabilities(self.jObj);
        orgopenqaselenium:Capabilities newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public isolated function getClass() returns javalang:Class {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCommandExecutor` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `CommandExecutor` value returning from the Java mapping.
    public isolated function getCommandExecutor() returns CommandExecutor {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getCommandExecutor(self.jObj);
        CommandExecutor newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCurrentUrl` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getCurrentUrl() returns string {
        return java:toString(org_openqa_selenium_remote_RemoteWebDriver_getCurrentUrl(self.jObj)) ?: "";
    }

    # The function that maps to the `getDownloadableFiles` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function getDownloadableFiles() returns javautil:List {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getDownloadableFiles(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getErrorHandler` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `ErrorHandler` value returning from the Java mapping.
    public isolated function getErrorHandler() returns ErrorHandler {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getErrorHandler(self.jObj);
        ErrorHandler newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFederatedCredentialManagementDialog` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog` value returning from the Java mapping.
    public isolated function getFederatedCredentialManagementDialog() returns orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getFederatedCredentialManagementDialog(self.jObj);
        orgopenqaseleniumfederatedcredentialmanagement:FederatedCredentialManagementDialog newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFileDetector` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `FileDetector` value returning from the Java mapping.
    public isolated function getFileDetector() returns FileDetector {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getFileDetector(self.jObj);
        FileDetector newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getPageSource` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getPageSource() returns string {
        return java:toString(org_openqa_selenium_remote_RemoteWebDriver_getPageSource(self.jObj)) ?: "";
    }

    # The function that maps to the `getPinnedScripts` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getPinnedScripts() returns javautil:Set {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getPinnedScripts(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getScreenshotAs` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + outputType - The `orgopenqaselenium:OutputType` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public isolated function getScreenshotAs(orgopenqaselenium:OutputType outputType) returns javalang:Object {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getScreenshotAs(self.jObj, outputType.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSessionId` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `SessionId` value returning from the Java mapping.
    public isolated function getSessionId() returns SessionId {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getSessionId(self.jObj);
        SessionId newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTitle` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getTitle() returns string {
        return java:toString(org_openqa_selenium_remote_RemoteWebDriver_getTitle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandle` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `string` value returning from the Java mapping.
    public isolated function getWindowHandle() returns string {
        return java:toString(org_openqa_selenium_remote_RemoteWebDriver_getWindowHandle(self.jObj)) ?: "";
    }

    # The function that maps to the `getWindowHandles` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `javautil:Set` value returning from the Java mapping.
    public isolated function getWindowHandles() returns javautil:Set {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_getWindowHandles(self.jObj);
        javautil:Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function hashCode() returns int {
        return org_openqa_selenium_remote_RemoteWebDriver_hashCode(self.jObj);
    }

    # The function that maps to the `manage` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `orgopenqaselenium:Options` value returning from the Java mapping.
    public isolated function manage() returns orgopenqaselenium:Options {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_manage(self.jObj);
        orgopenqaselenium:Options newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `navigate` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `orgopenqaselenium:Navigation` value returning from the Java mapping.
    public isolated function navigate() returns orgopenqaselenium:Navigation {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_navigate(self.jObj);
        orgopenqaselenium:Navigation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `network` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `Network` value returning from the Java mapping.
    public isolated function network() returns Network {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_network(self.jObj);
        Network newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function notify() {
        org_openqa_selenium_remote_RemoteWebDriver_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function notifyAll() {
        org_openqa_selenium_remote_RemoteWebDriver_notifyAll(self.jObj);
    }

    # The function that maps to the `perform` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + actions - The `javautil:Collection` value required to map with the Java method parameter.
    public isolated function perform(javautil:Collection actions) {
        org_openqa_selenium_remote_RemoteWebDriver_perform(self.jObj, actions.jObj);
    }

    # The function that maps to the `pin` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + script - The `string` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:ScriptKey` value returning from the Java mapping.
    public isolated function pin(string script) returns orgopenqaselenium:ScriptKey {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_pin(self.jObj, java:fromString(script));
        orgopenqaselenium:ScriptKey newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `print` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + printOptions - The `orgopenqaseleniumprint:PrintOptions` value required to map with the Java method parameter.
    # + return - The `orgopenqaselenium:Pdf` value returning from the Java mapping.
    public isolated function print(orgopenqaseleniumprint:PrintOptions printOptions) returns orgopenqaselenium:Pdf {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_print(self.jObj, printOptions.jObj);
        orgopenqaselenium:Pdf newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `quit` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function quit() {
        org_openqa_selenium_remote_RemoteWebDriver_quit(self.jObj);
    }

    # The function that maps to the `removeVirtualAuthenticator` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + authenticator - The `orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator` value required to map with the Java method parameter.
    public isolated function removeVirtualAuthenticator(orgopenqaseleniumvirtualauthenticator:VirtualAuthenticator authenticator) {
        org_openqa_selenium_remote_RemoteWebDriver_removeVirtualAuthenticator(self.jObj, authenticator.jObj);
    }

    # The function that maps to the `requireDownloadsEnabled` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java method parameter.
    public isolated function requireDownloadsEnabled(orgopenqaselenium:Capabilities capabilities) {
        org_openqa_selenium_remote_RemoteWebDriver_requireDownloadsEnabled(self.jObj, capabilities.jObj);
    }

    # The function that maps to the `resetCooldown` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function resetCooldown() {
        org_openqa_selenium_remote_RemoteWebDriver_resetCooldown(self.jObj);
    }

    # The function that maps to the `resetInputState` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    public isolated function resetInputState() {
        org_openqa_selenium_remote_RemoteWebDriver_resetInputState(self.jObj);
    }

    # The function that maps to the `script` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `Script` value returning from the Java mapping.
    public isolated function script() returns Script {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_script(self.jObj);
        Script newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `setDelayEnabled` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + enabled - The `boolean` value required to map with the Java method parameter.
    public isolated function setDelayEnabled(boolean enabled) {
        org_openqa_selenium_remote_RemoteWebDriver_setDelayEnabled(self.jObj, enabled);
    }

    # The function that maps to the `setErrorHandler` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + handler - The `ErrorHandler` value required to map with the Java method parameter.
    public isolated function setErrorHandler(ErrorHandler handler) {
        org_openqa_selenium_remote_RemoteWebDriver_setErrorHandler(self.jObj, handler.jObj);
    }

    # The function that maps to the `setFileDetector` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + detector - The `FileDetector` value required to map with the Java method parameter.
    public isolated function setFileDetector(FileDetector detector) {
        org_openqa_selenium_remote_RemoteWebDriver_setFileDetector(self.jObj, detector.jObj);
    }

    # The function that maps to the `setLogLevel` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + level - The `javautillogging:Level` value required to map with the Java method parameter.
    public isolated function setLogLevel(javautillogging:Level level) {
        org_openqa_selenium_remote_RemoteWebDriver_setLogLevel(self.jObj, level.jObj);
    }

    # The function that maps to the `switchTo` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `orgopenqaselenium:TargetLocator` value returning from the Java mapping.
    public isolated function switchTo() returns orgopenqaselenium:TargetLocator {
        handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_switchTo(self.jObj);
        orgopenqaselenium:TargetLocator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `unpin` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + 'key - The `orgopenqaselenium:ScriptKey` value required to map with the Java method parameter.
    public isolated function unpin(orgopenqaselenium:ScriptKey 'key) {
        org_openqa_selenium_remote_RemoteWebDriver_unpin(self.jObj, 'key.jObj);
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_remote_RemoteWebDriver_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_remote_RemoteWebDriver_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.remote.RemoteWebDriver`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_remote_RemoteWebDriver_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java constructor parameter.
# + return - The new `RemoteWebDriver` class generated.
public isolated function newRemoteWebDriver1(orgopenqaselenium:Capabilities capabilities) returns RemoteWebDriver {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver1(capabilities.jObj);
    RemoteWebDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java constructor parameter.
# + enableTracing - The `boolean` value required to map with the Java constructor parameter.
# + return - The new `RemoteWebDriver` class generated.
public isolated function newRemoteWebDriver2(orgopenqaselenium:Capabilities capabilities, boolean enableTracing) returns RemoteWebDriver {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver2(capabilities.jObj, enableTracing);
    RemoteWebDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + executor - The `CommandExecutor` value required to map with the Java constructor parameter.
# + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java constructor parameter.
# + return - The new `RemoteWebDriver` class generated.
public isolated function newRemoteWebDriver3(CommandExecutor executor, orgopenqaselenium:Capabilities capabilities) returns RemoteWebDriver {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver3(executor.jObj, capabilities.jObj);
    RemoteWebDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + remoteAddress - The `javanet:URL` value required to map with the Java constructor parameter.
# + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java constructor parameter.
# + return - The new `RemoteWebDriver` class generated.
public isolated function newRemoteWebDriver4(javanet:URL remoteAddress, orgopenqaselenium:Capabilities capabilities) returns RemoteWebDriver {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver4(remoteAddress.jObj, capabilities.jObj);
    RemoteWebDriver newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + remoteAddress - The `javanet:URL` value required to map with the Java constructor parameter.
# + capabilities - The `orgopenqaselenium:Capabilities` value required to map with the Java constructor parameter.
# + enableTracing - The `boolean` value required to map with the Java constructor parameter.
# + return - The new `RemoteWebDriver` class generated.
public isolated function newRemoteWebDriver5(javanet:URL remoteAddress, orgopenqaselenium:Capabilities capabilities, boolean enableTracing) returns RemoteWebDriver {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver5(remoteAddress.jObj, capabilities.jObj, enableTracing);
    RemoteWebDriver newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `builder` method of `org.openqa.selenium.remote.RemoteWebDriver`.
#
# + return - The `RemoteWebDriverBuilder` value returning from the Java mapping.
public isolated function RemoteWebDriver_builder() returns RemoteWebDriverBuilder {
    handle externalObj = org_openqa_selenium_remote_RemoteWebDriver_builder();
    RemoteWebDriverBuilder newObj = new (externalObj);
    return newObj;
}

isolated function org_openqa_selenium_remote_RemoteWebDriver_addVirtualAuthenticator(handle receiver, handle options) returns handle = @java:Method {
    name: "addVirtualAuthenticator",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticatorOptions"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_builder() returns handle = @java:Method {
    name: "builder",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_close(handle receiver) = @java:Method {
    name: "close",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_deleteDownloadableFiles(handle receiver) = @java:Method {
    name: "deleteDownloadableFiles",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_downloadFile(handle receiver, handle fileName, handle targetLocation) returns error? = @java:Method {
    name: "downloadFile",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.String", "java.nio.file.Path"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.Object"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_executeAsyncScript(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeAsyncScript",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_executeScript(handle receiver, handle 'key, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_executeScript2(handle receiver, handle script, handle args) returns handle = @java:Method {
    name: "executeScript",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.String", "[Ljava.lang.Object;"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_findElement(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_findElements(handle receiver, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_findElements2(handle receiver, handle context, handle findCommand, handle locator) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.SearchContext", "java.util.function.BiFunction", "org.openqa.selenium.By"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_get(handle receiver, handle url) = @java:Method {
    name: "get",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getCapabilities(handle receiver) returns handle = @java:Method {
    name: "getCapabilities",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getCommandExecutor(handle receiver) returns handle = @java:Method {
    name: "getCommandExecutor",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getCurrentUrl(handle receiver) returns handle = @java:Method {
    name: "getCurrentUrl",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getDownloadableFiles(handle receiver) returns handle = @java:Method {
    name: "getDownloadableFiles",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getErrorHandler(handle receiver) returns handle = @java:Method {
    name: "getErrorHandler",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getFederatedCredentialManagementDialog(handle receiver) returns handle = @java:Method {
    name: "getFederatedCredentialManagementDialog",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getFileDetector(handle receiver) returns handle = @java:Method {
    name: "getFileDetector",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getPageSource(handle receiver) returns handle = @java:Method {
    name: "getPageSource",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getPinnedScripts(handle receiver) returns handle = @java:Method {
    name: "getPinnedScripts",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getScreenshotAs(handle receiver, handle outputType) returns handle = @java:Method {
    name: "getScreenshotAs",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.OutputType"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getSessionId(handle receiver) returns handle = @java:Method {
    name: "getSessionId",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getTitle(handle receiver) returns handle = @java:Method {
    name: "getTitle",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getWindowHandle(handle receiver) returns handle = @java:Method {
    name: "getWindowHandle",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_getWindowHandles(handle receiver) returns handle = @java:Method {
    name: "getWindowHandles",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_manage(handle receiver) returns handle = @java:Method {
    name: "manage",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_navigate(handle receiver) returns handle = @java:Method {
    name: "navigate",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_network(handle receiver) returns handle = @java:Method {
    name: "network",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_perform(handle receiver, handle actions) = @java:Method {
    name: "perform",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.util.Collection"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_pin(handle receiver, handle script) returns handle = @java:Method {
    name: "pin",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_print(handle receiver, handle printOptions) returns handle = @java:Method {
    name: "print",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.print.PrintOptions"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_quit(handle receiver) = @java:Method {
    name: "quit",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_removeVirtualAuthenticator(handle receiver, handle authenticator) = @java:Method {
    name: "removeVirtualAuthenticator",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.virtualauthenticator.VirtualAuthenticator"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_requireDownloadsEnabled(handle receiver, handle capabilities) = @java:Method {
    name: "requireDownloadsEnabled",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_resetCooldown(handle receiver) = @java:Method {
    name: "resetCooldown",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_resetInputState(handle receiver) = @java:Method {
    name: "resetInputState",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_script(handle receiver) returns handle = @java:Method {
    name: "script",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_setDelayEnabled(handle receiver, boolean enabled) = @java:Method {
    name: "setDelayEnabled",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["boolean"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_setErrorHandler(handle receiver, handle handler) = @java:Method {
    name: "setErrorHandler",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.remote.ErrorHandler"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_setFileDetector(handle receiver, handle detector) = @java:Method {
    name: "setFileDetector",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.remote.FileDetector"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_setLogLevel(handle receiver, handle level) = @java:Method {
    name: "setLogLevel",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.util.logging.Level"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_switchTo(handle receiver) returns handle = @java:Method {
    name: "switchTo",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_unpin(handle receiver, handle 'key) = @java:Method {
    name: "unpin",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.ScriptKey"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: []
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["long"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["long", "int"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver1(handle capabilities) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver2(handle capabilities, boolean enableTracing) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.Capabilities", "boolean"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver3(handle executor, handle capabilities) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["org.openqa.selenium.remote.CommandExecutor", "org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver4(handle remoteAddress, handle capabilities) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.net.URL", "org.openqa.selenium.Capabilities"]
} external;

isolated function org_openqa_selenium_remote_RemoteWebDriver_newRemoteWebDriver5(handle remoteAddress, handle capabilities, boolean enableTracing) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.remote.RemoteWebDriver",
    paramTypes: ["java.net.URL", "org.openqa.selenium.Capabilities", "boolean"]
} external;

