package io.ballerina.lib.selenium;

import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BString;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.List;

public class SeleniumWebDriver {

    private static WebDriver driver;

    public static void getChromeDriver(BString url) {
        driver = new ChromeDriver();
        driver.get(url.toString());
    }

    public static void getFirefoxDriver(BString url) {
        driver = new FirefoxDriver();
        driver.get(url.toString());
    }

    public static BString getTitle() {
        return StringUtils.fromString(driver.getTitle());
    }

    public static Object findById(BString id) {
        WebElement element = driver.findElement(By.id(id.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByName(BString name) {
        WebElement element = driver.findElement(By.name(name.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByTagName(BString tagName) {
        WebElement element = driver.findElement(By.tagName(tagName.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByClassName(BString className) {
        WebElement element = driver.findElement(By.className(className.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByXPath(BString xpath) {
        WebElement element = driver.findElement(By.xpath(xpath.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByLinkText(BString linkText) {
        WebElement element = driver.findElement(By.linkText(linkText.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByPartialLinkText(BString partialLinkText) {
        WebElement element = driver.findElement(By.partialLinkText(partialLinkText.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static Object findByCssSelector(BString cssSelector) {
        WebElement element = driver.findElement(By.cssSelector(cssSelector.toString()));
        System.out.println(element.getTagName());
        return new Element(element);
    }

    public static void findAllById(BString id) {
        List<WebElement> element = driver.findElements(By.id(id.toString()));
        for (WebElement e: element) {
            System.out.print(e.getTagName() + " ");
        }
    }

    public static void findAllByName(BString name) {
        List<WebElement> element = driver.findElements(By.name(name.toString()));
    }

    public static void findAllByTagName(BString tagName) {
        List<WebElement> element = driver.findElements(By.tagName(tagName.toString()));

    }

    public static void findAllByClassName(BString className) {
        List<WebElement> element = driver.findElements(By.className(className.toString()));
    }

    public static void findAllByXPath(BString xpath) {
        List<WebElement> element = driver.findElements(By.xpath(xpath.toString()));
    }

    public static void findAllByLinkText(BString linkText) {
        List<WebElement> element = driver.findElements(By.linkText(linkText.toString()));
    }

    public static void findAllByPartialLinkText(BString partialLinkText) {
        List<WebElement> element = driver.findElements(By.partialLinkText(partialLinkText.toString()));
    }

    public static void findAllByCssSelector(BString cssSelector) {
        List<WebElement> element = driver.findElements(By.cssSelector(cssSelector.toString()));
    }
    
}