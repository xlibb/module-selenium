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
import org.openqa.selenium.WebElement;

import java.util.List;

public class SeleniumWebElement {



    public static void click(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        nativeElement.click();
    }

    public static void clear(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        nativeElement.clear();
    }

    public static void sendKeys(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        nativeElement.sendKeys(value.toString());
    }

    public static BString getTagName(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getTagName());
    }

    public static BString getText(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getText());
    }

    public static BString getDomAttribute(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getDomAttribute(value.toString()));
    }

    public static BString getDomProperty(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getDomProperty(value.toString()));
    }

    public static boolean isDisplayed(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return nativeElement.isDisplayed();
    }

    public static boolean isEnabled(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return nativeElement.isEnabled();
    }

    public static boolean isSelected(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        return nativeElement.isSelected();
    }

    public static Object findById(BObject element, BString id) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.id(id.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("ID", id.toString());
    }

    public static Object findByClassName(BObject element, BString className) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.className(className.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("CLASS_NAME", className.toString());
    }

    public static Object findByTagName(BObject element, BString tagName) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.tagName(tagName.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("TAG_NAME", tagName.toString());
    }

    public static Object findByXpath(BObject element, BString xpath) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.xpath(xpath.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("XPATH", xpath.toString());
    }

    public static Object findByCssSelector(BObject element, BString cssSelector) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.cssSelector(cssSelector.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("CSS_SELECTOR", cssSelector.toString());
    }

    public static Object findByName(BObject element, BString name) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.name(name.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("NAME", name.toString());
    }

    public static Object findByLinkText(BObject element, BString linkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.linkText(linkText.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("LINK_TEXT", linkText.toString());
    }

    public static Object findByPartialLinkText(BObject element, BString partialLinkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.partialLinkText(partialLinkText.toString()));
        if (!nestedElement.isEmpty()) {
            return Utils.getWebElementBObject(nestedElement.get(0));
        }
        return Utils.noSuchElementError("PARTIAL_LINK_TEXT", partialLinkText.toString());
    }

    public static BArray findAllByTagName(BObject element, BString tagName) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.tagName(tagName.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByClassName(BObject element, BString className) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.className(className.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByCssSelector(BObject element, BString cssSelector) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.cssSelector(cssSelector.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByLinkText(BObject element, BString linkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.linkText(linkText.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByPartialLinkText(BObject element, BString partialLinkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.partialLinkText(partialLinkText.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByXpath(BObject element, BString xpath) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.xpath(xpath.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

    public static BArray findAllByName(BObject element, BString name) {
        WebElement nativeElement = (WebElement) element.getNativeData(Constants.WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.name(name.toString()));
        return ValueCreator.createArrayValue(Utils.getWebElementBObjectArr(nestedElements), 
                Utils.getArrayType(Constants.WEB_ELEMENT_OBJECT_TYPE));
    }

}