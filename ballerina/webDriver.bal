import ballerina/jballerina.java;

public class WebDriver {

    public isolated function getChromeDriver(string url) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function getFirefoxDriver(string url) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function getTitle() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findById(string id) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByName(string name) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByTagName(string tagName) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByXPath(string xpath) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByLinkText(string linkText) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByPartialLinkText(string partialLinkText) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByCssSelector(string cssSelector) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findByClassName(string className) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllById(string id) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByName(string name) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByTagName(string tagName) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByXPath(string xpath) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByLinkText(string linkText) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByPartialLinkText(string partialLinkText) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByCssSelector(string cssSelector) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findAllByClassName(string className) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;
 
}
