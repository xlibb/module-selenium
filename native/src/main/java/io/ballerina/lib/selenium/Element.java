package io.ballerina.lib.selenium;

import io.ballerina.runtime.api.values.BObject;
import org.openqa.selenium.WebElement;

public class Element {

    public static void createElement(BObject element, WebElement webelement) {
        element.addNativeData("webElement", webelement);
    }

    public static void click(BObject element) {
        WebElement element1 = (WebElement) element.getNativeData("webElement");
        element1.click();
    }
}
