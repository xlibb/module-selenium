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
    web:WebElement[] inputElements = check driver.findAllElements(web:By_tagName("input")); // Locating all elements with same locator
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
web:WebElement element = driver.findElement(web:By_id("elementId"));
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

#### Selenium IDE for Finding Locators

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

1. [Automating the Filling of Student Application Forms for a Web Application.](https://github.com/xlibb/module-selenium/tree/main/examples/student_application_form_filling). 
