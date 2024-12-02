import selenium.java.lang as javalang;

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.openqa.selenium.Dimension` class.
@java:Binding {'class: "org.openqa.selenium.Dimension"}
public distinct class Dimension {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `org.openqa.selenium.Dimension` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.Dimension` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.Dimension` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `org.openqa.selenium.Dimension`.
    #
    # + o - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function 'equals(javalang:Object o) returns boolean {
        return org_openqa_selenium_Dimension_equals(self.jObj, o.jObj);
    }

    # The function that maps to the `getClass` method of `org.openqa.selenium.Dimension`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public isolated function getClass() returns javalang:Class {
        handle externalObj = org_openqa_selenium_Dimension_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getHeight` method of `org.openqa.selenium.Dimension`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function getHeight() returns int {
        return org_openqa_selenium_Dimension_getHeight(self.jObj);
    }

    # The function that maps to the `getWidth` method of `org.openqa.selenium.Dimension`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function getWidth() returns int {
        return org_openqa_selenium_Dimension_getWidth(self.jObj);
    }

    # The function that maps to the `hashCode` method of `org.openqa.selenium.Dimension`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function hashCode() returns int {
        return org_openqa_selenium_Dimension_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `org.openqa.selenium.Dimension`.
    public isolated function notify() {
        org_openqa_selenium_Dimension_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.openqa.selenium.Dimension`.
    public isolated function notifyAll() {
        org_openqa_selenium_Dimension_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.Dimension`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_Dimension_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.Dimension`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_Dimension_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.Dimension`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_Dimension_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.openqa.selenium.Dimension`.
#
# + width - The `int` value required to map with the Java constructor parameter.
# + height - The `int` value required to map with the Java constructor parameter.
# + return - The new `Dimension` class generated.
public isolated function newDimension1(int width, int height) returns Dimension {
    handle externalObj = org_openqa_selenium_Dimension_newDimension1(width, height);
    Dimension newObj = new (externalObj);
    return newObj;
}

isolated function org_openqa_selenium_Dimension_equals(handle receiver, handle o) returns boolean = @java:Method {
    name: "equals",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: ["java.lang.Object"]
} external;

isolated function org_openqa_selenium_Dimension_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_getHeight(handle receiver) returns int = @java:Method {
    name: "getHeight",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_getWidth(handle receiver) returns int = @java:Method {
    name: "getWidth",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: []
} external;

isolated function org_openqa_selenium_Dimension_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: ["long"]
} external;

isolated function org_openqa_selenium_Dimension_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.Dimension",
    paramTypes: ["long", "int"]
} external;

isolated function org_openqa_selenium_Dimension_newDimension1(int width, int height) returns handle = @java:Constructor {
    'class: "org.openqa.selenium.Dimension",
    paramTypes: ["int", "int"]
} external;

