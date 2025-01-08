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

package io.xlibb.selenium;

import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import io.xlibb.selenium.utils.Utils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

public class SeleniumWebElement {

    public static final String WEB_ELEMENT_OBJECT = "nativeWebElementObject";
    public static final String WEB_ELEMENT_OBJECT_TYPE = "WebElement";

    public static Object click(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            nativeElement.click();
            return null;
        }  catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object clear(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            nativeElement.clear();
            return null;
        }  catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object sendKeys(BObject element, BString value) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            nativeElement.sendKeys(value.toString());
            return null;
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getTagName(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return StringUtils.fromString(nativeElement.getTagName());
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getText(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return StringUtils.fromString(nativeElement.getText());
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getDomAttribute(BObject element, BString value) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return StringUtils.fromString(nativeElement.getDomAttribute(value.toString()));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object getDomProperty(BObject element, BString value) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return StringUtils.fromString(nativeElement.getDomProperty(value.toString()));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object isDisplayed(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return nativeElement.isDisplayed();
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object isEnabled(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return nativeElement.isEnabled();
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object isSelected(BObject element) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return nativeElement.isSelected();
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findById(BObject element, BString id) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.id(id.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByClassName(BObject element, BString className) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.className(className.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByTagName(BObject element, BString tagName) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.tagName(tagName.toString())));
        }  catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByXpath(BObject element, BString xpath) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return Utils.getWebElementBObject(nativeElement.findElement(By.xpath(xpath.toString())));
    }

    public static Object findByCssSelector(BObject element, BString cssSelector) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.cssSelector(cssSelector.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByName(BObject element, BString name) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.name(name.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByLinkText(BObject element, BString linkText) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement.findElement(By.linkText(linkText.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findByPartialLinkText(BObject element, BString partialLinkText) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            return Utils.getWebElementBObject(nativeElement
                    .findElement(By.partialLinkText(partialLinkText.toString())));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByTagName(BObject element, BString tagName) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.tagName(tagName.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByClassName(BObject element, BString className) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.className(className.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByCssSelector(BObject element, BString cssSelector) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.cssSelector(cssSelector.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByLinkText(BObject element, BString linkText) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.linkText(linkText.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByPartialLinkText(BObject element, BString partialLinkText) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By
                    .partialLinkText(partialLinkText.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByXpath(BObject element, BString xpath) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.xpath(xpath.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

    public static Object findAllByName(BObject element, BString name) {
        try {
            WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
            List<WebElement> nestedElements = nativeElement.findElements(By.name(name.toString()));
            return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements),
                    Utils.getArrayType(WEB_ELEMENT_OBJECT_TYPE));
        } catch (Exception e) {
            return Utils.getBError(e.getMessage(), e);
        }
    }

}
