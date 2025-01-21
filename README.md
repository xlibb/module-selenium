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

### Import the module

```ballerina
import xlibb/selenium;
```

### Create a new web driver instance

The core component of Selenium is the `WebDriver`. It is an interface for controlling a web browser instance and communicates with the browser through its native API.

The constructor of the `WebDriver` takes `BrowserOptions` as an argument, which contains the following options:

1. `browserName` - A enum value specifies the type of browser to open. Acceptable values are `selenium:CHROME` or `selenium:FIREFOX`. The default is `selenium:CHROME`.
2. `url` - The URL of the web application to open in the browser.
3. `headlessMode` - A boolean value indicating whether to run the browser in headless mode (without a GUI). The default is `false`.
4. `incognitoMode` - A boolean value indicating whether to run the browser in incognito mode. The default is `false`.
5. `additionalArguments` - A list of additional command-line arguments to pass to the browser during initialization.

```ballerina
// Opens a new Chrome browser instance and navigates to the specified URL.
selenium:WebDriver driver = new ({
    url: "https://central.ballerina.io/"
});
```

### Locating elements

`WebElement` in `selenium` represents an element in the DOM, which allows interaction (e.g., click, send keys).

A locator is a way to identify `WebElement` on a page. Selenium provides support for several location strategies(locators) in WebDriver:

- **class name**: Locates elements by the value of their `class` attribute.
- **ID**: Locates elements by the value of their `id` attribute.
- **CSS selector**: Locates elements using CSS selectors, which are patterns used to select elements based on their attributes.
- **name**: Locates elements by the value of their `name` attribute.
- **tag name**: Locates elements by their tag name, such as `input`, `div`, etc.
- **XPath**: Locates elements using XPath expressions, which are used to navigate through elements and attributes in an XML document.
- **link text**: Locates anchor elements by the exact text they display.
- **partial link text**: Locates anchor elements by a partial match of the text they display.

```ballerina
import xlibb/selenium;
import ballerina/io;

public function main() {
    // By ID
    selenium:WebElement form = check driver.findById("form"); 

    // By Name
    selenium:WebElement searchboxByName = check driver.findByName("q"); 

    // By CSS Selector
    selenium:WebElement searchboxByCss = check driver.findByCssSelector("#form .search-box"); 

    // By XPath
    selenium:WebElement searchboxByXpath = check driver.findByXpath("//input[@id='search']"); 

    // By Class Name
    selenium:WebElement searchboxByClassName = check driver.findByClassName("search-box"); 

    // By Tag Name
    selenium:WebElement searchboxByTagName = check driver.findByTagName("input"); 

    // Locating a WebElement inside another WebElement
    selenium:WebElement nestedElement = check form.findByName("q"); 

    // Locating all elements with same locator
    selenium:WebElement[] inputElements = check driver.findAllByTagName("input"); 
}

```

### Fetching data over any `WebElement`

To fetch data from a `WebElement` in Selenium, you can interact with it using various methods depending on the type of data you need. 

1. Text of an element:

The `getText()` method in Selenium is used to retrieve the visible (i.e., not hidden by CSS) inner text of a `WebElement`. This method is commonly used to extract text from elements such as paragraphs, headings, labels, or any other HTML elements that contain text.

```ballerina
selenium:WebElement label = check driver.findByClassName("input-label");
string labelText = check label.getText();
io:println(labelText); 
```

2. Attribute value

The `getDomAttribute` method in Selenium is used to retrieve the value of a specified attribute from a `WebElement`. This method is particularly useful when you need to access the underlying attributes of an element in the DOM (Document Object Model) that are not directly visible on the page. Commonly used to get attributes like value for input fields, href for links, src for images, etc.

```ballerina
string value = (check driver.findElementById("elementId")).getDomAttribute("value"); // For input fields
string href = (check driver.findElementByTagName("a")).getDomAttribute("href"); // For links
```

3. Checking if an element is displayed/enabled/selected:

```ballerina
selenium:WebElement element = check driver.findById("elementId");
boolean isDisplayed = check element.isDisplayed();
boolean isEnabled = check element.isEnabled();
boolean isSelected = check element.isSelected();
```

### Sending user inputs to `WebElement`

To send user inputs to `WebElement`s, you can use the `sendKeys()` method, which simulates typing into text-based input fields (like textboxes, textareas, etc.).

```ballerina
selenium:WebElement element = check driver.findByName("email");
check element.sendKeys("exmaple@abc.com");
```

### Performing Click event

To perform a click event on a `WebElement`, you can use the `click()` method on the `WebElement` object. This is commonly used to simulate clicking on buttons, links, checkboxes, radio buttons, or any other clickable elements.

```ballerina
selenium:WebElement element = check driver.findByClassName("submit-btn");
check element.click();
```

### Quit the driver

```ballerina
check driver.quit();
```

### Working with windows and tabs

**Window handles** are unique identifiers for each browser window or tab. These can be used to programmatically manage multiple windows.

```ballerina
// Initialize a new WebDriver instance
selenium:WebDriver driver = new ({
    url: "https://the-internet.herokuapp.com/windows"
});

// Print the title of the current window.
io:println(driver.getTitle()); // Prints "The Internet"

// Store the current window handle.
string firstWindow = check driver.getCurrentWindowHandle();

// Click on the link that opens a new window/tab.
check (check driver.findByPartialLinkText("Click")).click();

// Get handles for all open windows. Currently, there are 2 windows open, 
// so this array contains the handles of those 2 windows in the order they were opened.
string[] allWindows = check driver.getAllWindowHandles();

// Even though we opened a new window, the driver is still pointing to the first window. To interact with the new window, we need to switch to it using the window handle.
check driver.switchToWindowHandle(allWindows[1]);

// Print the title of the currrent window.
io:println(driver.getTitle()); // Prints "New Window"

// Close the second (current) window.
check driver.closeCurrentWindowHandle();

// Switch back to the first window. Now the driver is pointing to the first window.
check driver.switchToWindowHandle(firstWindow);

// Print the title of the current window
io:println(driver.getTitle()); // Prints "The Internet"

// Quit the driver and close all windows
check driver.quit();
```

### Locating elements

A locator is a way to identify elements on a page. Selenium provides support for several location strategies in WebDriver, such as class name, ID, CSS selector, name, tag name, and XPath. 

`WebElement` class: Represents an element in the DOM; allows interaction (e.g., click, send keys).

```html
<form id="form">
    <label for="search" class="input-label">Search:</label>
    <input type="text" name="q" class="search-box" placeholder="Type something...">
    <button type="submit" class="submit-btn">Submit</button>
</form>
```

```ballerina
import xlibb/selenium;
import ballerina/io;

public function main() {

    // By ID
    selenium:WebElement form = check driver.findById("form"); 

    // By Name
    selenium:WebElement searchboxByName = check driver.findByName("q"); 

    // By CSS Selector
    selenium:WebElement searchboxByCss = check driver.findByCssSelector("#form .search-box"); 

    // By XPath
    selenium:WebElement searchboxByXpath = check driver.findByXpath("//input[@id='search']"); 

    // By Class Name
    selenium:WebElement searchboxByClassName = check driver.findByClassName("search-box"); 

    // By Tag Name
    selenium:WebElement searchboxByTagName = check driver.findByTagName("input"); 

    // Locating a WebElement inside another WebElement
    selenium:WebElement nestedElement = check form.findByName("q"); 

    // Locating all elements with same locator
    selenium:WebElement[] inputElements = check driver.findAllByTagName("input"); 
}

```

### Fetching data over any web element

To fetch data from a web element in Selenium, you can interact with it using various methods depending on the type of data you need. 

1. Text of an element (e.g., a paragraph or label):

```ballerina
selenium:WebElement label = check driver.findByClassName("input-label");
string labelText = label.getText();
io:println(labelText); 
```

2. Attribute value (e.g., value of an input field or the href attribute of a link):

```ballerina
string value = (check driver.findElementById("elementId")).getDomAttribute("value"); // For input fields
string href = (check driver.findElementByTagName("a")).getDomAttribute("href"); // For links
```


3. Checking if an element is displayed/enabled/selected:

```ballerina
selenium:WebElement element = check driver.findById("elementId");
boolean isDisplayed = element.isDisplayed();
boolean isEnabled = element.isEnabled();
boolean isSelected = element.isSelected();
```


### Sending user inputs to web element

To send user inputs to web elements, you can use the `sendKeys()` method, which simulates typing into text-based input fields (like textboxes, textareas, etc.).

```ballerina
(check driver.findByClassName("search-box")).sendKeys("ballerina");
```

### Performing Click event

To perform a click event on a web element, you can use the `click()` method on the WebElement object. This is commonly used to simulate clicking on buttons, links, checkboxes, radio buttons, or any other clickable elements.

```ballerina
(check driver.findByClassName("submit-btn")).click();
```

### Closing the browser

```ballerina
driver.quit();
```

### Working with windows and tabs

**Window handles** are unique identifiers for each browser window or tab. These can be used to programmatically manage multiple windows.

```ballerina
// Initialize a new WebDriver instance
selenium:WebDriver driver = new ({
    url: "https://the-internet.herokuapp.com/windows"
});

// Print the title of the current window.
io:println(driver.getTitle()); // Prints "The Internet"

// Store the current window handle.
string firstWindow = driver.getCurrentWindowHandle();

// Click on the link that opens a new window.
(check driver.findByPartialLinkText("Click")).click();

// Get handles for all open windows.
string[] allWindows = driver.getAllWindowHandles();

// Switch to the second window. Now the driver is pointing to the new window.
check driver.switchToWindowHandle(allWindows[1]);

// Print the title of the currrent window.
io:println(driver.getTitle()); // Prints "New Window"

// Close the second (current) window.
driver.closeCurrentWindowHandle();

// Switch back to the first window. Now the driver is pointing to the first window.
check driver.switchToWindowHandle(firstWindow);

// Print the title of the current window
io:println(driver.getTitle()); // Prints "The Internet"

// Quit the driver and close all windows
driver.quit();

```

### Selenium IDE for Finding Locators

Selenium IDE is a handy tool for finding locators for web elements. Here's how to use it effectively:

1. Install Selenium IDE: Download and install the Selenium IDE extension for your browser (Chrome or Firefox) [here](https://www.selenium.dev/selenium-ide/).
2. Launch Selenium IDE: Open the Selenium IDE extension from your browser's toolbar.

3. Start a New Project: Click on Create a New Project and name your project.

<img width="947" alt="new project - side" src="./ballerina/resources/new project - side.png">

4. Start Recording:
    - Click on the Record a New Test in a New Project option.
    - Enter the URL of the web application you want to test.
    - Selenium IDE will open the URL in a new tab and start recording your actions.

<img width="960" alt="start recording - side" src="./ballerina/resources/enter base url - side.png">

5. Perform Actions on the Webpage: Interact with the web elements (e.g., click buttons, fill out forms) on the page. Selenium IDE will record these actions as steps in your test case.
6. View Recorded Steps: Once done, stop the recording. The recorded steps will appear in the Selenium IDE window. Each step will include information about the action and the locator used.
7. Inspect Locators:
    - In the list of recorded steps, click on a step to view details.
    - The Target field shows the locator for the web element (e.g., XPath, ID, Name, CSS selector, etc.).
    - You can switch between different locator strategies by clicking the dropdown next to the locator. Selenium IDE will display alternatives if available.

<img width="959" alt="find locators" src="./ballerina/resources/find locators.png">

## Examples

The `Selenium` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/xlibb/module-selenium/tree/main/examples/), covering the following use cases:

1. [Web Scrapping.](https://github.com/xlibb/module-selenium/tree/main/examples/web_scrapping)

2. [Automating the Filling of Student Application Forms for a Web Application.](https://github.com/xlibb/module-selenium/tree/main/examples/student_application_form_filling)

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
