## Overview

This module automates web applications across various browsers. Selenium interacts with web browsers directly, simulating user actions such as clicks, text input, page navigation, and more. 

## Quickstart

### Web driver

The core component of Selenium is the WebDriver. It is an interface for controlling a web browser instance and communicates with the browser through its native API.

```ballerina
import xlibb/selenium;

public function main() {

    selenium:WebDriver driver = new ();

    // Opens a new Chrome browser instance and navigates to the specified URL.
    driver.openChrome("https://central.ballerina.io/");
}
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
selenium:WebDriver driver = new ();

// Open the specified URL in Chrome.
driver.openChrome("https://the-internet.herokuapp.com/windows");

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

<img width="947" alt="new project - side" src="./resources/new project - side.png">

4. Start Recording:
    - Click on the Record a New Test in a New Project option.
    - Enter the URL of the web application you want to test.
    - Selenium IDE will open the URL in a new tab and start recording your actions.

<img width="960" alt="start recording - side" src="./resources/enter base url - side.png">

5. Perform Actions on the Webpage: Interact with the web elements (e.g., click buttons, fill out forms) on the page. Selenium IDE will record these actions as steps in your test case.
6. View Recorded Steps: Once done, stop the recording. The recorded steps will appear in the Selenium IDE window. Each step will include information about the action and the locator used.
7. Inspect Locators:
    - In the list of recorded steps, click on a step to view details.
    - The Target field shows the locator for the web element (e.g., XPath, ID, Name, CSS selector, etc.).
    - You can switch between different locator strategies by clicking the dropdown next to the locator. Selenium IDE will display alternatives if available.

<img width="959" alt="find locators" src="./resources/find locators.png">

## Examples

The `Selenium` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/xlibb/module-selenium/tree/main/examples/), covering the following use cases:

1. [Web Scrapping.](https://github.com/xlibb/module-selenium/tree/main/examples/web_scrapping). 

2. [Automating the Filling of Student Application Forms for a Web Application.](https://github.com/xlibb/module-selenium/tree/main/examples/student_application_form_filling). 
