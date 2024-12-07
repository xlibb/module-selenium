# module-selenium
This repository contains the source code of the Ballerina Selenium library package

[![Build](https://github.com/xlibb/module-selenium/actions/workflows/ci.yml/badge.svg)](https://github.com/xlibb/module-selenium/actions/workflows/ci.yml)
[![Trivy](https://github.com/xlibb/module-selenium/actions/workflows/trivy-scan.yml/badge.svg)](https://github.com/xlibb/module-selenium/actions/workflows/trivy-scan.yml)
[![GraalVM Check](https://github.com/xlibb/module-selenium/actions/workflows/build-with-bal-test-graalvm.yml/badge.svg)](https://github.com/xlibb/module-selenium/actions/workflows/build-with-bal-test-graalvm.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/xlibb/module-selenium.svg)](https://github.com/xlibb/module-selenium/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/selenium.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%selenium)

## Overview

This module automates web applications across various browsers. Selenium interacts with web browsers directly, simulating user actions such as clicks, text input, page navigation, and more. 

## Quickstart

#### Web driver

The core component of Selenium is the WebDriver. It is an interface for controlling a web browser instance and communicates with the browser through its native API. You can create a web driver based on the browser you want to automate.

```ballerina
import xlibb/selenium.chrome;
import xlibb/selenium.safari;
import xlibb/selenium.edge;
import xlibb/selenium.firefox;

public function main() {

    chrome:ChromeDriver driver1 = chrome:newChromeDriver1(); // Web driver for Chrome browsers
    firefox:FirefoxDriver driver2 = firefox:newFirefoxDriver1(); // Web driver for Firefox browsers    
    edge:EdgeDriver driver3 = edge:newEdgeDriver1(); // Webdriver for edge browsers
    safari:SafariDriver driver4 = safari:newSafariDriver1(); // Web driver for Safari browsers

}
```

#### Launching website.

```ballerina
import xlibb/selenium.chrome;

public function main() {

    chrome:ChromeDriver driver = chrome:newChromeDriver1();

    // Navigate to the desired website.
    driver.get("https://central.ballerina.io/");
    
}
```

#### Locating elements

A locator is a way to identify elements on a page. Selenium provides support for several location strategies in WebDriver, such as class name, ID, CSS selector, name, tag name, and XPath. 

`WebElement` class: Represents an element in the DOM; allows interaction (e.g., click, send keys).

`By` class: Locator strategies for finding elements (e.g., By_id, By_name, By_xpath).

```html
<form id="form">
    <label for="search" class="input-label">Search:</label>
    <input type="text" name="q" class="search-box" placeholder="Type something...">
    <button type="submit" class="submit-btn">Submit</button>
</form>
```

```ballerina
import xlibb/selenium.chrome;
import xlibb/selenium.web;
import ballerina/io;

public function main() {

    chrome:ChromeDriver driver = chrome:newChromeDriver1();
    web:WebElement form = driver.findElement(web:By_id("form")); // By ID
    web:WebElement searchboxByName = driver.findElement(web:By_name("q")); // By Name
    web:WebElement searchboxbyCss = driver.findElement(web:By_cssSelector("#form .search-box")); // By CSS Selector
    web:WebElement searchboxbyXpath = driver.findElement(web:By_xpath("//input[@id='search']")); // By XPath
    web:WebElement searchboxbyClassName = driver.findElement(web:By_className("search-box")); // By Class Name
    web:WebElement searchboxbyTagName = driver.findElement(web:By_tagName("input")); // By Tag Name
    web:WebElement nestedElement = form.findElement(web:By_name("q")); // Locating a WebElement inside another WebElement
}

```

#### Fetching data over any web element

To fetch data from a web element in Selenium, you can interact with it using various methods depending on the type of data you need. 

1. Text of an element (e.g., a paragraph or label):

```ballerina
string labelText = driver.findElement(web:By_className("input-label")).getText();
io:println(labelText); 
```

2. Attribute value (e.g., value of an input field or the href attribute of a link):

```ballerina
string value = driver.findElement(web:By_id("elementId")).getAttribute("value"); // For input fields
string href = driver.findElement(web:By_tagName("a")).getAttribute("href"); // For links
```


3. Checking if an element is displayed/enabled/selected:

```ballerina
selenium:WebElement element = driver.findElement(web:By_id("elementId"));
boolean isDisplayed = element.isDisplayed();
boolean isEnabled = element.isEnabled();
boolean isSelected = element.isSelected();
```


#### Sending user inputs to web element

To send user inputs to web elements, you can use the sendKeys() method, which simulates typing into text-based input fields (like textboxes, textareas, etc.).

```ballerina
check driver.findElement(web:By_className("search-box")).sendKeys(["ballerina"]);
```

#### Performing Click event

To perform a click event on a web element, you can use the click() method on the WebElement object. This is commonly used to simulate clicking on buttons, links, checkboxes, radio buttons, or any other clickable elements.

```ballerina
driver.findElement(web:By_className("submit-btn")).click();
```

#### Closing the browser

```ballerina
driver.quit();
```

#### Complete example

The below code will do the following,
1. Opens Chrome browser.
2. Navigates to ballerina central page.
3. Search for 'http' module.

```ballerina
import xlibb/selenium.chrome;
import xlibb/selenium.web;
import ballerina/lang.runtime;

public function main() returns error? {
    chrome:ChromeDriver driver = chrome:newChromeDriver1();
    driver.get("https://central.ballerina.io/");

    // Wait for some time, till the page completely loads.
    runtime:sleep(2);

    check driver.findElement(web:By_id("downshift-search-bar-input")).sendKeys(["http"]);
    driver.findElement(web:By_className("Search_searchButton__iLPLB")).click();
}
```

## Examples

The `Selenium` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/xlibb/module-selenium/tree/main/examples/), covering the following use cases:

1. [Automating the Filling of Student Application Forms for a Web Application.](https://github.com/xlibb/module-selenium/tree/main/examples/student_application_form_filling). 


## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 17. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.
2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.
4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).
