## Overview

This module automates web applications across various browsers. Selenium interacts with web browsers directly, simulating user actions such as clicks, text input, page navigation, and more. 

## Quickstart

#### Web driver

The core component of Selenium is the WebDriver. It is an interface for controlling a web browser instance and communicates with the browser through its native API. You can create a web driver based on the browser you want to automate.

```ballerina
import xlibb/selenium.org.openqa.selenium.chrome;
import xlibb/selenium.org.openqa.selenium.safari;
import xlibb/selenium.org.openqa.selenium.edge;
import xlibb/selenium.org.openqa.selenium.firefox;

public function main() {

    // Web driver for Chrome browsers
    chrome:ChromeDriver driver1 = chrome:newChromeDriver1();

    // Web driver for Firefox browsers
    firefox:FirefoxDriver driver2 = firefox:newFirefoxDriver1();

    // Webdriver for edge browsers
    edge:EdgeDriver driver3 = edge:newEdgeDriver1();

    // Web driver for Safari browsers
    safari:SafariDriver driver4 = safari:newSafariDriver1();

}
```

#### Launching website.

```ballerina
import xlibb/selenium.org.openqa.selenium.chrome;

public function main() {

    chrome:ChromeDriver driver = chrome:newChromeDriver1();

    // Navigate to the desired website.
    driver.get("https://central.ballerina.io/");
    
}
```

#### Locating elements

A locator is a way to identify elements on a page. Selenium provides support for several location strategies in WebDriver, such as class name, ID, CSS selector, name, tag name, and XPath. 

```html
<form id="form">
    <label for="search" class="input-label">Search:</label>
    <input type="text" name="q" class="search-box" placeholder="Type something...">
    <button type="submit" class="submit-btn">Submit</button>
</form>
```

```ballerina
import xlibb/selenium.org.openqa.selenium.chrome;
import xlibb/selenium.org.openqa.selenium;
import ballerina/io;

public function main() {

    chrome:ChromeDriver driver = chrome:newChromeDriver1();
    selenium:WebElement form = driver.findElement(selenium:By_id("form")); // By ID
    selenium:WebElement searchboxByName = driver.findElement(selenium:By_name("q")); // By Name
    selenium:WebElement searchboxbyCss = driver.findElement(selenium:By_cssSelector("#form .search-box")); // By CSS Selector
    selenium:WebElement searchboxbyXpath = driver.findElement(selenium:By_xpath("//input[@id='search']")); // By XPath
    selenium:WebElement searchboxbyClassName = driver.findElement(selenium:By_className("search-box")); // By Class Name
    selenium:WebElement searchboxbyTagName = driver.findElement(selenium:By_tagName("input")); // By Tag Name
    selenium:WebElement nestedElement = form.findElement(selenium:By_name("q")); // Locating a WebElement inside another WebElement
}

```

#### Fetching data over any web element

```ballerina
string labelText = driver.findElement(selenium:By_className("input-label")).getText();
io:println(labelText); // outputs: 'Search:'
```

#### Sending user inputs to web element

```ballerina
check driver.findElement(selenium:By_className("search-box")).sendKeys(["ballerina"]);
```

#### Performing Click event

```ballerina
driver.findElement(selenium:By_className("submit-btn")).click();
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
import xlibb/selenium.org.openqa.selenium.chrome;
import xlibb/selenium.org.openqa.selenium;
import ballerina/lang.runtime;

public function main() returns error? {
    chrome:ChromeDriver driver = chrome:newChromeDriver1();
    driver.get("https://central.ballerina.io/");

    // Wait for some time, till the page completely loads.
    runtime:sleep(2);

    check driver.findElement(selenium:By_id("downshift-search-bar-input")).sendKeys(["http"]);
    driver.findElement(selenium:By_className("Search_searchButton__iLPLB")).click();
}
```

#### Selenium IDE for Finding Locators

Selenium IDE is a handy tool for finding locators for web elements. Here's how to use it effectively:

1. Install Selenium IDE: Download and install the Selenium IDE extension for your browser (Chrome or Firefox) [here](https://www.selenium.dev/selenium-ide/).
2. Launch Selenium IDE: Open the Selenium IDE extension from your browser's toolbar.

<img width="947" alt="new project - side" src="https://github.com/user-attachments/assets/d829a94d-b8c1-41b4-a979-c26f5068c1eb">

3. Start a New Project: Click on Create a New Project and name your project.

<img width="960" alt="start recording - side" src="https://github.com/user-attachments/assets/b44d9c91-a0d9-4fba-90ad-0c850c6b237d">

4. Start Recording:
    - Click on the Record a New Test in a New Project option.
    - Enter the URL of the web application you want to test.
    - Selenium IDE will open the URL in a new tab and start recording your actions.
5. Perform Actions on the Webpage: Interact with the web elements (e.g., click buttons, fill out forms) on the page. Selenium IDE will record these actions as steps in your test case.
6. View Recorded Steps: Once done, stop the recording. The recorded steps will appear in the Selenium IDE window. Each step will include information about the action and the locator used.

<img width="959" alt="find locators" src="https://github.com/user-attachments/assets/96c0ac8d-8586-4070-ba32-ad02856ae993">

7. Inspect Locators:
    - In the list of recorded steps, click on a step to view details.
    - The Target field shows the locator for the web element (e.g., XPath, ID, Name, CSS selector, etc.).
    - You can switch between different locator strategies by clicking the dropdown next to the locator. Selenium IDE will display alternatives if available.



## Examples

The `Selenium` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/xlibb/module-selenium/tree/main/examples/), covering the following use cases:

[//]: # (TODO: Add examples)
