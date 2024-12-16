package io.ballerina.lib.selenium;

import org.openqa.selenium.WebElement;

public class Element {

    private final WebElement webElement;

    public Element(WebElement element) {
        this.webElement = element;
    }

    public void click() {
        webElement.click();
    }


}
