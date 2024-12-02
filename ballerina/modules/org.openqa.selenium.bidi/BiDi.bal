// This is an empty Ballerina class autogenerated to represent the `org.openqa.selenium.bidi.BiDi` Java class.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen org.openqa.selenium.bidi.BiDi

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.openqa.selenium.bidi.BiDi` class.
@java:Binding {'class: "org.openqa.selenium.bidi.BiDi"}
public distinct class BiDi {

    *java:JObject;

    # The `handle` field that stores the reference to the `org.openqa.selenium.bidi.BiDi` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.bidi.BiDi` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.bidi.BiDi` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

}

