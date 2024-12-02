import selenium.java.lang as javalang;
import selenium.java.util as javautil;

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.openqa.selenium.By` class.
@java:Binding {'class: "org.openqa.selenium.By"}
public distinct class By {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `org.openqa.selenium.By` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `org.openqa.selenium.By` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.openqa.selenium.By` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `org.openqa.selenium.By`.
    #
    # + o - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function 'equals(javalang:Object o) returns boolean {
        return org_openqa_selenium_By_equals(self.jObj, o.jObj);
    }

    # The function that maps to the `findElement` method of `org.openqa.selenium.By`.
    #
    # + context - The `SearchContext` value required to map with the Java method parameter.
    # + return - The `WebElement` value returning from the Java mapping.
    public isolated function findElement(SearchContext context) returns WebElement {
        handle externalObj = org_openqa_selenium_By_findElement(self.jObj, context.jObj);
        WebElement newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findElements` method of `org.openqa.selenium.By`.
    #
    # + context - The `SearchContext` value required to map with the Java method parameter.
    # + return - The `javautil:List` value returning from the Java mapping.
    public isolated function findElements(SearchContext context) returns javautil:List {
        handle externalObj = org_openqa_selenium_By_findElements(self.jObj, context.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `org.openqa.selenium.By`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public isolated function getClass() returns javalang:Class {
        handle externalObj = org_openqa_selenium_By_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.openqa.selenium.By`.
    #
    # + return - The `int` value returning from the Java mapping.
    public isolated function hashCode() returns int {
        return org_openqa_selenium_By_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `org.openqa.selenium.By`.
    public isolated function notify() {
        org_openqa_selenium_By_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.openqa.selenium.By`.
    public isolated function notifyAll() {
        org_openqa_selenium_By_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.By`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_By_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.By`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_By_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.openqa.selenium.By`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public isolated function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = org_openqa_selenium_By_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `className` method of `org.openqa.selenium.By`.
#
# + className - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_className(string className) returns By {
    handle externalObj = org_openqa_selenium_By_className(java:fromString(className));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `cssSelector` method of `org.openqa.selenium.By`.
#
# + cssSelector - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_cssSelector(string cssSelector) returns By {
    handle externalObj = org_openqa_selenium_By_cssSelector(java:fromString(cssSelector));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `id` method of `org.openqa.selenium.By`.
#
# + id - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_id(string id) returns By {
    handle externalObj = org_openqa_selenium_By_id(java:fromString(id));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `linkText` method of `org.openqa.selenium.By`.
#
# + linkText - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_linkText(string linkText) returns By {
    handle externalObj = org_openqa_selenium_By_linkText(java:fromString(linkText));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `name` method of `org.openqa.selenium.By`.
#
# + name - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_name(string name) returns By {
    handle externalObj = org_openqa_selenium_By_name(java:fromString(name));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `partialLinkText` method of `org.openqa.selenium.By`.
#
# + partialLinkText - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_partialLinkText(string partialLinkText) returns By {
    handle externalObj = org_openqa_selenium_By_partialLinkText(java:fromString(partialLinkText));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `tagName` method of `org.openqa.selenium.By`.
#
# + tagName - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_tagName(string tagName) returns By {
    handle externalObj = org_openqa_selenium_By_tagName(java:fromString(tagName));
    By newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `xpath` method of `org.openqa.selenium.By`.
#
# + xpathExpression - The `string` value required to map with the Java method parameter.
# + return - The `By` value returning from the Java mapping.
public isolated function By_xpath(string xpathExpression) returns By {
    handle externalObj = org_openqa_selenium_By_xpath(java:fromString(xpathExpression));
    By newObj = new (externalObj);
    return newObj;
}

isolated function org_openqa_selenium_By_className(handle className) returns handle = @java:Method {
    name: "className",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_cssSelector(handle cssSelector) returns handle = @java:Method {
    name: "cssSelector",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_equals(handle receiver, handle o) returns boolean = @java:Method {
    name: "equals",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.Object"]
} external;

isolated function org_openqa_selenium_By_findElement(handle receiver, handle context) returns handle = @java:Method {
    name: "findElement",
    'class: "org.openqa.selenium.By",
    paramTypes: ["org.openqa.selenium.SearchContext"]
} external;

isolated function org_openqa_selenium_By_findElements(handle receiver, handle context) returns handle = @java:Method {
    name: "findElements",
    'class: "org.openqa.selenium.By",
    paramTypes: ["org.openqa.selenium.SearchContext"]
} external;

isolated function org_openqa_selenium_By_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.openqa.selenium.By",
    paramTypes: []
} external;

isolated function org_openqa_selenium_By_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.openqa.selenium.By",
    paramTypes: []
} external;

isolated function org_openqa_selenium_By_id(handle id) returns handle = @java:Method {
    name: "id",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_linkText(handle linkText) returns handle = @java:Method {
    name: "linkText",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_name(handle name) returns handle = @java:Method {
    name: "name",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.openqa.selenium.By",
    paramTypes: []
} external;

isolated function org_openqa_selenium_By_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.openqa.selenium.By",
    paramTypes: []
} external;

isolated function org_openqa_selenium_By_partialLinkText(handle partialLinkText) returns handle = @java:Method {
    name: "partialLinkText",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_tagName(handle tagName) returns handle = @java:Method {
    name: "tagName",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

isolated function org_openqa_selenium_By_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.By",
    paramTypes: []
} external;

isolated function org_openqa_selenium_By_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.By",
    paramTypes: ["long"]
} external;

isolated function org_openqa_selenium_By_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.openqa.selenium.By",
    paramTypes: ["long", "int"]
} external;

isolated function org_openqa_selenium_By_xpath(handle xpathExpression) returns handle = @java:Method {
    name: "xpath",
    'class: "org.openqa.selenium.By",
    paramTypes: ["java.lang.String"]
} external;

