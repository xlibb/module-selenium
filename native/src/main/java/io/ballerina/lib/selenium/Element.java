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
import org.openqa.selenium.WebElement;

import java.util.List;

import static io.ballerina.lib.selenium.utils.ModuleUtils.getModule;

public class Element {

    public static final String WEB_ELEMENT_OBJECT = "nativeWebElementObject";
    public static final String ERROR_TYPE = "Error";
    public static final String WEB_ELEMENT_OBJECT_TYPE = "WebElement";

    public static void click(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        nativeElement.click();
    }

    public static void clear(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        nativeElement.clear();
    }

    public static void sendKeys(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        nativeElement.sendKeys(value.toString());
    }

    public static BString getTagName(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getTagName());
    }

    public static BString getText(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getText());
    }

    public static BString getDomAttribute(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getDomAttribute(value.toString()));
    }

    public static BString getDomProperty(BObject element, BString value) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return StringUtils.fromString(nativeElement.getDomProperty(value.toString()));
    }

    public static boolean isDisplayed(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return nativeElement.isDisplayed();
    }

    public static boolean isEnabled(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return nativeElement.isEnabled();
    }

    public static boolean isSelected(BObject element) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        return nativeElement.isSelected();
    }

    public static Object findById(BObject element, BString id) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.id(id.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("ID", id.toString());
    }

    public static Object findByClassName(BObject element, BString className) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.className(className.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("CLASS_NAME", className.toString());
    }

    public static Object findByTagName(BObject element, BString tagName) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.tagName(tagName.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("TAG_NAME", tagName.toString());
    }

    public static Object findByXpath(BObject element, BString xpath) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.xpath(xpath.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("XPATH", xpath.toString());
    }

    public static Object findByCssSelector(BObject element, BString cssSelector) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.cssSelector(cssSelector.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("CSS_SELECTOR", cssSelector.toString());
    }

    public static Object findByName(BObject element, BString name) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.name(name.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("NAME", name.toString());
    }

    public static Object findByLinkText(BObject element, BString linkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.linkText(linkText.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("LINK_TEXT", linkText.toString());
    }

    public static Object findByPartialLinkText(BObject element, BString partialLinkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElement = nativeElement.findElements(By.partialLinkText(partialLinkText.toString()));
        if (!nestedElement.isEmpty()) {
            return getWebElementBObject(nestedElement.get(0));
        }
        return noSuchElementError("PARTIAL_LINK_TEXT", partialLinkText.toString());
    }

    public static BArray findAllByTagName(BObject element, BString tagName) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.tagName(tagName.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByClassName(BObject element, BString className) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.className(className.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByCssSelector(BObject element, BString cssSelector) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.cssSelector(cssSelector.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByLinkText(BObject element, BString linkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.linkText(linkText.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByPartialLinkText(BObject element, BString partialLinkText) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.partialLinkText(partialLinkText.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByXpath(BObject element, BString xpath) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.xpath(xpath.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
    }

    public static BArray findAllByName(BObject element, BString name) {
        WebElement nativeElement = (WebElement) element.getNativeData(WEB_ELEMENT_OBJECT);
        List<WebElement> nestedElements = nativeElement.findElements(By.name(name.toString()));
        return ValueCreator.createArrayValue(getWebElementBObjectArr(nestedElements), getWebElementArrayType());
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


}
