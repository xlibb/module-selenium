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

package io.ballerina.lib.selenium.utils;

import io.ballerina.runtime.api.creators.ErrorCreator;
import io.ballerina.runtime.api.creators.TypeCreator;
import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.types.ArrayType;
import io.ballerina.runtime.api.types.Type;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BError;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class Utils {

    public static WebDriver getDriverNObject(BObject object) {
        return (WebDriver) object.getNativeData(Constants.DRIVER_OBJECT);
    }

    public static BObject getWebElementBObject(WebElement webElement) {
        BObject elementBObj = ValueCreator.createObjectValue(ModuleUtils.getModule()
                                , Constants.WEB_ELEMENT_OBJECT_TYPE, (Object) null);
        elementBObj.addNativeData(Constants.WEB_ELEMENT_OBJECT, webElement);
        return elementBObj;
    }

    public static BObject[] getWebElementBObjectArr(List<WebElement> webElements) {
        BObject[] elementArr = new BObject[webElements.size()];
        for (int i = 0; i < webElements.size(); i++) {
            elementArr[i]  = getWebElementBObject(webElements.get(i));
        }
        return elementArr;
    }

    public static ArrayType getArrayType(String objectType) {
        Type type = TypeCreator.createObjectType(objectType, ModuleUtils.getModule(), 0);
        return TypeCreator.createArrayType(type);
    }

    public static BError noSuchElementError(String method, String value) {
        BString message = StringUtils.fromString("Unable to locate element: {method:" + method + ", value: "
                + value + "}");
        return getBError(message);
    }

    public static BError noSuchAlertError() {
        BString message = StringUtils.fromString("No such alert.");
        return getBError(message);
    }

    public static BError noSuchWindowError(String handle) {
        BString message = StringUtils.fromString("No such window: " + handle);
        return getBError(message);
    }

    public static BError getBError(BString message) {
        return ErrorCreator.createError(ModuleUtils.getModule(), Constants.ERROR_TYPE,
                message, null, null);
    }
}
