// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).
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

package io.xlibb.selenium;

import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BMap;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import io.xlibb.selenium.utils.Utils;
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

    public static final String DRIVER_OBJECT = "nativeDriverObject";
    public static final String WEB_ELEMENT_OBJECT_TYPE = "WebElement";

    public static Object openChrome(BObject webDriver, BMap<BString, Object> options) {
        boolean headless = options.getBooleanValue(StringUtils.fromString("headlessMode"));
        String url = options.getStringValue(StringUtils.fromString("url")).toString();
        boolean incognito = options.getBooleanValue(StringUtils.fromString("incognitoMode"));
        String[] additionalArguments = options.getArrayValue(StringUtils.fromString("additionalArguments"))
                .getStringArray();
        if (Utils.getDriverNObject(webDriver) == null) {
            try {
                ChromeOptions chromeOptions = new ChromeOptions();
                if (headless) {
                    chromeOptions.addArguments("--headless");
                }
                if (incognito) {
                    chromeOptions.addArguments("--incognito");
                }
                for (String arg: additionalArguments) {
                    chromeOptions.addArguments(arg);
                }
                webDriver.addNativeData(DRIVER_OBJECT, new ChromeDriver(chromeOptions));
                Utils.getDriverNObject(webDriver).get(url);
                return null;
            } catch (Exception e) {
                return Utils.getBError(e.getMessage(), e);
            }
        }
        return Utils.getBError("error: A WebDriver instance is already active. Please quit the current " +
                "instance before starting a new one.", null);
    }

    public static Object openFirefox(BObject webDriver, BMap<BString, Object> options) {
        boolean headless = options.getBooleanValue(StringUtils.fromString("headlessMode"));
        String url = options.getStringValue(StringUtils.fromString("url")).toString();
        boolean incognito = options.getBooleanValue(StringUtils.fromString("incognitoMode"));
        String[] additionalArguments = options.getArrayValue(StringUtils.fromString("additionalArguments"))
                .getStringArray();
        if (Utils.getDriverNObject(webDriver) == null) {
            try {
                FirefoxOptions firefoxOptions = new FirefoxOptions();
                if (headless) {
                    firefoxOptions.addArguments("--headless");
                }
                if (incognito) {
                    firefoxOptions.addArguments("--incognito");
                }
                for (String arg: additionalArguments) {
                    firefoxOptions.addArguments(arg);
                }
                webDriver.addNativeData(DRIVER_OBJECT, new FirefoxDriver(firefoxOptions));
                Utils.getDriverNObject(webDriver).get(url);
                return null;
            } catch (Exception e) {
                return Utils.getBError(e.getMessage(), e);
            }
        }
        return Utils.getBError("error: A WebDriver instance is already active. Please quit the current " +
                "instance before starting a new one.", null);
    }

    public static Object getTitle(BObject webDriver) {
        try {
            return StringUtils.fromString(Utils.getDriverNObject(webDriver).getTitle());
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object maximize(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).manage().window().maximize();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object minimize(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).manage().window().minimize();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object setSize(BObject webDriver, int width, int height) {
        try {
            Utils.getDriverNObject(webDriver).manage().window().setSize(new Dimension(width, height));
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object navigateTo(BObject webDriver, BString url) {
        try {
            Utils.getDriverNObject(webDriver).navigate().to(url.toString());
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object navigateBack(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).navigate().back();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object navigateForward(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).navigate().forward();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object refresh(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).navigate().refresh();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getCurrentUrl(BObject webDriver) {
        try {
            return StringUtils.fromString(Utils.getDriverNObject(webDriver).getCurrentUrl());
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findById(BObject webDriver, BString id) {
        try {
            return Utils.getWebElementBObject(
                Utils.getDriverNObject(webDriver).findElement(By.id(id.toString()))
                );
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByClassName(BObject webDriver, BString className) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.className(className.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByTagName(BObject webDriver, BString tagName) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.tagName(tagName.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByXpath(BObject webDriver, BString xpath) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.xpath(xpath.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByCssSelector(BObject webDriver, BString cssSelector) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.cssSelector(cssSelector.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByName(BObject webDriver, BString name) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver).findElement(By.name(name.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByLinkText(BObject webDriver, BString linkText) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.linkText(linkText.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByPartialLinkText(BObject webDriver, BString partialLinkText) {
        try {
            return Utils.getWebElementBObject(Utils.getDriverNObject(webDriver)
                    .findElement(By.partialLinkText(partialLinkText.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByTagName(BObject webDriver, BString tagName) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                    .findElements(By.tagName(tagName.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByClassName(BObject webDriver, BString className) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                    .findElements(By.className(className.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByCssSelector(BObject webDriver, BString cssSelector) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                    .findElements(By.cssSelector(cssSelector.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByLinkText(BObject webDriver, BString linkText) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver)
                    .findElements(By.linkText(linkText.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByPartialLinkText(BObject webDriver, BString partialLinkText) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(
                    By.partialLinkText(partialLinkText.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByXpath(BObject webDriver, BString xpath) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.xpath(xpath.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByName(BObject webDriver, BString name) {
        try {
            List<WebElement> webElements = Utils.getDriverNObject(webDriver).findElements(By.name(name.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(webElements)
                    , Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object acceptAlert(BObject webDriver) {
        try {
             Utils.getDriverNObject(webDriver).switchTo().alert().accept();
             return null;
        } catch (Exception e) {
             return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object dismissAlert(BObject webDriver) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().alert().dismiss();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object sendKeysToAlert(BObject webDriver, BString value) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().alert().sendKeys(value.toString());
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getCurrentWindowHandle(BObject webDriver) {
        try {
            return StringUtils.fromString(Utils.getDriverNObject(webDriver).getWindowHandle());
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getAllWindowHandles(BObject webDriver) {
        try {
            Set<String> windows = Utils.getDriverNObject(webDriver).getWindowHandles();
            BString[] bStringWindows = new BString[windows.size()];
            int i = 0;
            for (String handle : windows) {
                bStringWindows[i++] = StringUtils.fromString(handle);
            }
            return ValueCreator.createArrayValue(bStringWindows);
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object switchToWindowHandle(BObject webDriver, BString windowHandle) {
        try {
            Utils.getDriverNObject(webDriver).switchTo().window(windowHandle.toString());
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object closeCurrentWindowHandle(BObject webDriver) {
        try {
            WebDriver driver = Utils.getDriverNObject(webDriver);
            if (driver.getWindowHandles().size() > 1) {
                Utils.getDriverNObject(webDriver).close();
            }
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object executeJavascript(BObject webDriver, BString script) {
        try {
            WebDriver driver = Utils.getDriverNObject(webDriver);
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript(script.toString());
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object quit(BObject webDriver) {
        try {
            WebDriver driver = Utils.getDriverNObject(webDriver);
            driver.quit();
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

}
