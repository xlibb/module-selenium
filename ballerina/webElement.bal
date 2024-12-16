import ballerina/jballerina.java;

public class WebElement {

    public isolated function click() = @java:Method {
        'class: "io.ballerina.lib.selenium.Element"
    } external;
    
}