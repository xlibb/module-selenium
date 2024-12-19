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

import io.ballerina.lib.selenium.utils.ModuleUtils;
import io.ballerina.runtime.api.creators.ErrorCreator;
import io.ballerina.runtime.api.creators.TypeCreator;
import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.types.ArrayType;
import io.ballerina.runtime.api.types.Type;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BArray;
import io.ballerina.runtime.api.values.BError;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;

import java.util.List;
import java.util.Set;

import static io.ballerina.lib.selenium.utils.ModuleUtils.getModule;

public class SeleniumWebDriver {

    public static final String DRIVER_OBJECT = "nativeDriverObject";
    public static final String WEB_ELEMENT_OBJECT = "nativeWebElementObject";
    public static final String WEB_ELEMENT_OBJECT_TYPE = "WebElement";
    public static final String ERROR_TYPE = "Error";

    public static void openChrome(BObject webDriver, BString url, BArray options) {
        if (getDriver(webDriver) == null) {
            ChromeOptions chromeOptions = new ChromeOptions();
            for (String option: options.getStringArray()) {
                chromeOptions.addArguments(option);
            }
            webDriver.addNativeData(DRIVER_OBJECT, new ChromeDriver(chromeOptions));
            getDriver(webDriver).get(url.toString());
        }
    }

    public static void openFirefox(BObject webDriver, BString url, BArray options) {
        if (getDriver(webDriver) == null) {
            FirefoxOptions firefoxOptions = new FirefoxOptions();
            for (String option: options.getStringArray()) {
                firefoxOptions.addArguments(option);
            }
            webDriver.addNativeData(DRIVER_OBJECT, new FirefoxDriver(firefoxOptions));
            getDriver(webDriver).get(url.toString());
        }
    }

    public static BString getTitle(BObject webDriver) {
        return StringUtils.fromString(getDriver(webDriver).getTitle());
    }

    public static void maximize(BObject webDriver) {
        getDriver(webDriver).manage().window().maximize();
    }

    public static void minimize(BObject webDriver) {
        getDriver(webDriver).manage().window().minimize();
    }

    public static void setSize(BObject webDriver, int width, int height) {
        getDriver(webDriver).manage().window().setSize(new Dimension(width, height));
    }

    public static void navigateTo(BObject webDriver, BString url) {
        getDriver(webDriver).navigate().to(url.toString());
    }

    public static void navigateBack(BObject webDriver) {
        getDriver(webDriver).navigate().back();
    }

    public static void navigateForward(BObject webDriver) {
        getDriver(webDriver).navigate().forward();
    }

    public static void refresh(BObject webDriver) {
        getDriver(webDriver).navigate().refresh();
    }

    public static BString getCurrentUrl(BObject webDriver) {
        return StringUtils.fromString(getDriver(webDriver).getCurrentUrl());
    }

    public static Object findById(BObject webDriver, BString id) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.id(id.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("ID", id.toString());
    }

    public static Object findByClassName(BObject webDriver, BString className) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.className(className.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("CLASS_NAME", className.toString());
    }

    public static Object findByTagName(BObject webDriver, BString tagName) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.tagName(tagName.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("TAG_NAME", tagName.toString());
    }

    public static Object findByXpath(BObject webDriver, BString xpath) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.xpath(xpath.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("XPATH", xpath.toString());
    }

    public static Object findByCssSelector(BObject webDriver, BString cssSelector) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.cssSelector(cssSelector.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("CSS_SELECTOR", cssSelector.toString());
    }

    public static Object findByName(BObject webDriver, BString name) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.name(name.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("NAME", name.toString());
    }

    public static Object findByLinkText(BObject webDriver, BString linkText) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.linkText(linkText.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("LINK_TEXT", linkText.toString());
    }

    public static Object findByPartialLinkText(BObject webDriver, BString partialLinkText) {
        List<WebElement> webElement = getDriver(webDriver).findElements(By.partialLinkText(partialLinkText.toString()));
        if (!webElement.isEmpty()) {
            return getWebElementBObject(webElement.get(0));
        }
        return noSuchElementError("PARTIAL_LINK_TEXT", partialLinkText.toString());
    }

    public static BArray findAllByTagName(BObject webDriver, BString tagName) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.tagName(tagName.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByClassName(BObject webDriver, BString className) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.className(className.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByCssSelector(BObject webDriver, BString cssSelector) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.cssSelector(cssSelector.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByLinkText(BObject webDriver, BString linkText) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.linkText(linkText.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByPartialLinkText(BObject webDriver, BString partialLinkText) {
        List<WebElement> webElements = getDriver(webDriver).findElements(
                By.partialLinkText(partialLinkText.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByXpath(BObject webDriver, BString xpath) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.xpath(xpath.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static BArray findAllByName(BObject webDriver, BString name) {
        List<WebElement> webElements = getDriver(webDriver).findElements(By.name(name.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(webElements), getWebElementArrayType());
    }

    public static Object acceptAlert(BObject webDriver) {
        try {
             getDriver(webDriver).switchTo().alert().accept();
             return null;
        } catch (Exception e) {
             return noSuchAlertError();
        }
    }

    public static Object dismissAlert(BObject webDriver) {
        try {
            getDriver(webDriver).switchTo().alert().dismiss();
            return null;
        } catch (Exception e) {
            return noSuchAlertError();
        }
    }

    public static Object sendKeysToAlert(BObject webDriver, BString value) {
        try {
            getDriver(webDriver).switchTo().alert().sendKeys(value.toString());
            return null;
        } catch (Exception e) {
            return noSuchAlertError();
        }
    }

    public static BString getCurrentWindowHandle(BObject webDriver) {
        return StringUtils.fromString(getDriver(webDriver).getWindowHandle());
    }

    public static BArray getAllWindowHandles(BObject webDriver) {
        Set<String> windows = getDriver(webDriver).getWindowHandles();
        BString[] bStringWindows = new BString[windows.size()];
        int i = 0;
        for (String handle : windows) {
            bStringWindows[i++] = StringUtils.fromString(handle);
        }
        return ValueCreator.createArrayValue(bStringWindows);
    }

    public static Object switchToWindowHandle(BObject webDriver, BString windowHandle) {
        try {
            getDriver(webDriver).switchTo().window(windowHandle.toString());
            return null;
        } catch (Exception e) {
            return noSuchWindowError(windowHandle.toString());
        }
    }

    public static void closeCurrentWindowHandle(BObject webDriver) {
        WebDriver driver = getDriver(webDriver);
        if (driver.getWindowHandles().size() > 1) {
            getDriver(webDriver).close();
        }
    }

    public static void quit(BObject webDriver) {
        WebDriver driver = getDriver(webDriver);
        if (driver != null) {
            driver.quit();
            webDriver.addNativeData(WEB_ELEMENT_OBJECT, null);
        }
    }

    private static WebDriver getDriver(BObject object) {
        return (WebDriver) object.getNativeData(DRIVER_OBJECT);
    }

    private static BObject getWebElementBObject(WebElement webElement) {
        BObject elementBObj = ValueCreator.createObjectValue(getModule(), WEB_ELEMENT_OBJECT_TYPE, (Object) null);
        elementBObj.addNativeData(WEB_ELEMENT_OBJECT, webElement);
        return elementBObj;
    }

    private static BObject[] getWebElementBObjectArr(List<WebElement> webElements) {
        BObject[] elementArr = new BObject[webElements.size()];
        for (int i = 0; i < webElements.size(); i++) {
            elementArr[i]  = getWebElementBObject(webElements.get(i));
        }
        return elementArr;
    }

    public static ArrayType getWebElementArrayType() {
        Type type = TypeCreator.createObjectType(WEB_ELEMENT_OBJECT_TYPE, getModule(), 0);
        return TypeCreator.createArrayType(type);
    }

    public static BError noSuchElementError(String method, String value) {
        BString message = StringUtils.fromString("Unable to locate element: {method:" + method + ", value: "
                + value + "}");
        return ErrorCreator.createError(ModuleUtils.getModule(), ERROR_TYPE, message, null, null);
    }

    public static BError noSuchAlertError() {
        BString message = StringUtils.fromString("No such alert.");
        return ErrorCreator.createError(ModuleUtils.getModule(), ERROR_TYPE, message, null, null);
    }

    public static BError noSuchWindowError(String handle) {
        BString message = StringUtils.fromString("No such window: " + handle);
        return ErrorCreator.createError(ModuleUtils.getModule(), ERROR_TYPE, message, null, null);
    }

}
