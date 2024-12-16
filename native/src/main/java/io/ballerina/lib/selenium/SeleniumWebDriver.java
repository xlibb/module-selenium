package io.ballerina.lib.selenium;

import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumWebDriver {

    private static WebDriver driver;

    public static void getChromeDriver(BString url) {
        driver = new ChromeDriver();
        driver.get(url.toString());
    }

    public static BString getTitle() {
        return StringUtils.fromString(driver.getTitle());
    }

    public static BObject findById(BString id, BObject element) {
        WebElement webElement = driver.findElement(By.id(id.toString()));
        Element.createElement(element, webElement);
        return element;
    }

}
