// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

package io.ballerina.lib.selenium;

import io.ballerina.lib.selenium.utils.Constants;
import io.ballerina.lib.selenium.utils.Utils;
import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BArray;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;

import java.util.List;
import java.util.Set;

public class SeleniumWebDriver {

    public static void openChrome(BObject webDriver, BString url, boolean headless) {
        if (Utils.getDriverNObject(webDriver) == null) {
            ChromeOptions chromeOptions = new ChromeOptions();
            if (headless) {
                chromeOptions.addArguments("--headless");
                chromeOptions.addArguments("--disable-gpu");
            }
            webDriver.addNativeData(Constants.DRIVER_OBJECT, new ChromeDriver(chromeOptions));
            Utils.getDriverNObject(webDriver).get(url.toString());
        }
    }

    public static void openFirefox(BObject webDriver, BString url, boolean headless) {
        if (Utils.getDriverNObject(webDriver) == null) {
            FirefoxOptions firefoxOptions = new FirefoxOptions();
            if (headless) {
                firefoxOptions.addArguments("--headless");
            }
            webDriver.addNativeData(Constants.DRIVER_OBJECT, new FirefoxDriver(firefoxOptions));
            Utils.getDriverNObject(webDriver).get(url.toString());
        }
    }

    public static BString getTitle(BObject webDriver) {
        return StringUtils.fromString(Utils.getDriverNObject(webDriver).getTitle());
    }

    public static void maximize(BObject webDriver) {
        Utils.getDriverNObject(webDriver).manage().window().maximize();
    }

    public static void minimize(BObject webDriver) {
        Utils.getDriverNObject(webDriver).manage().window().minimize();
    }

    public static void setSize(BObject webDriver, int width, int height) {
        Utils.getDriverNObject(webDriver).manage().window().setSize(new Dimension(width, height));
    }

    public static void navigateTo(BObject webDriver, BString url) {
        Utils.getDriverNObject(webDriver).navigate().to(url.toString());
    }

    public static void navigateBack(BObject webDriver) {
        Utils.getDriverNObject(webDriver).navigate().back();
    }

    public static void navigateForward(BObject webDriver) {
        Utils.getDriverNObject(webDriver).navigate().forward();
    }

    public static void refresh(BObject webDriver) {
        Utils.getDriverNObject(webDriver).navigate().refresh();
    }

    public static BString getCurrentUrl(BObject webDriver) {
        return StringUtils.fromString(Utils.getDriverNObject(webDriver).getCurrentUrl());
    }

    public static Object findById(BObject webDriver, BString id) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver).findElements(By.id(id.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("ID", id.toString());
    }

    public static Object findByClassName(BObject webDriver, BString className) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver)
                .findElements(By.className(className.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("CLASS_NAME", className.toString());
    }

    public static Object findByTagName(BObject webDriver, BString tagName) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver)
                .findElements(By.tagName(tagName.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("TAG_NAME", tagName.toString());
    }

    public static Object findByXpath(BObject webDriver, BString xpath) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver).findElements(By.xpath(xpath.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("XPATH", xpath.toString());
    }

    public static Object findByCssSelector(BObject webDriver, BString cssSelector) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver)
                .findElements(By.cssSelector(cssSelector.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("CSS_SELECTOR", cssSelector.toString());
    }

    public static Object findByName(BObject webDriver, BString name) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver).findElements(By.name(name.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("NAME", name.toString());
    }

    public static Object findByLinkText(BObject webDriver, BString linkText) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver).findElements(By.linkText(linkText.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("LINK_TEXT", linkText.toString());
    }

    public static Object findByPartialLinkText(BObject webDriver, BString partialLinkText) {
        List<WebElement> webElement = Utils.getDriverNObject(webDriver)
                .findElements(By.partialLinkText(partialLinkText.toString()));
        if (!webElement.isEmpty()) {
            return Utils.getWebElementBObject(webElement.get(0));
        }
        return Utils.noSuchElementError("PARTIAL_LINK_TEXT", partialLinkText.toString());
    }

    public static BArray findAllByTagName(BObject webDriver, BString tagName) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.tagName(tagName.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByClassName(BObject webDriver, BString className) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                .findElements(By.className(className.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByCssSelector(BObject webDriver, BString cssSelector) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                .findElements(By.cssSelector(cssSelector.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByLinkText(BObject webDriver, BString linkText) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.linkText(linkText.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByPartialLinkText(BObject webDriver, BString partialLinkText) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(
                By.partialLinkText(partialLinkText.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByXpath(BObject webDriver, BString xpath) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.xpath(xpath.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByName(BObject webDriver, BString name) {
        List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.name(name.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                , Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static Object acceptAlert(BObject webDriver) {
        try {
             Utils.getDriverNObject(webDriver).switchTo().alert().accept();
             return null;
        } catch (Exception e) {
             return Utils.noSuchAlertError();
        }
    }

    public static Object dismissAlert(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().alert().dismiss();
            return null;
        } catch (Exception e) {
            return Utils.noSuchAlertError();
        }
    }

    public static Object sendKeysToAlert(BObject webDriver, BString value) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().alert().sendKeys(value.toString());
            return null;
        } catch (Exception e) {
            return Utils.noSuchAlertError();
        }
    }

    public static BString getCurrentWindowHandle(BObject webDriver) {
        return StringUtils.fromString(Utils.getDriverNObject(webDriver).getWindowHandle());
    }

    public static BArray getAllWindowHandles(BObject webDriver) {
        Set<String> windows = Utils.getDriverNObject(webDriver).getWindowHandles();
        BString[] bStringWindows = new BString[windows.size()];
        int i = 0;
        for (String handle : windows) {
            bStringWindows[i++] = StringUtils.fromString(handle);
        }
        return ValueCreator.createArrayValue(bStringWindows);
    }

    public static Object switchToWindowHandle(BObject webDriver, BString windowHandle) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().window(windowHandle.toString());
            return null;
        } catch (Exception e) {
            return Utils.noSuchWindowError(windowHandle.toString());
        }
    }

    public static void closeCurrentWindowHandle(BObject webDriver) {
        WebDriver driver = Utils.getDriverNObject(webDriver);
        if (driver.getWindowHandles().size() > 1) {
            Utils.getDriverNObject(webDriver).close();
        }
    }

    public static void executeJavascript(BObject webDriver, BString script) {
        WebDriver driver = Utils.getDriverNObject(webDriver);
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript(script.toString());
    }

    public static void quit(BObject webDriver) {
        WebDriver driver = Utils.getDriverNObject(webDriver);
        if (driver != null) {
            driver.quit();
            webDriver.addNativeData(Constants.WEB_ELEMENT_OBJECT, null);
        }
    }



}
