import ballerina/jballerina.java;

public class WebDriver {

    public isolated function getChromeDriver(string url) = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function getTitle() returns string = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;

    public isolated function findById(string id, WebElement element) returns WebElement = @java:Method {
        'class: "io.ballerina.lib.selenium.SeleniumWebDriver"
    } external;
 
}
