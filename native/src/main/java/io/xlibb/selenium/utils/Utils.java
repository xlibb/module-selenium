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

package io.xlibb.selenium.utils;

import io.ballerina.runtime.api.creators.ErrorCreator;
import io.ballerina.runtime.api.creators.TypeCreator;
import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.types.ArrayType;
import io.ballerina.runtime.api.types.Type;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BError;
import io.ballerina.runtime.api.values.BObject;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class Utils {

    public static final String DRIVER_OBJECT = "nativeDriverObject";
    public static final String WEB_ELEMENT_OBJECT = "nativeWebElementObject";
    public static final String WEB_ELEMENT_OBJECT_TYPE = "WebElement";
    public static final String ERROR_TYPE = "Error";

    public static WebDriver getDriverNObject(BObject object) {
        return (WebDriver) object.getNativeData(DRIVER_OBJECT);
    }

    public static BObject getWebElementBObject(WebElement webElement) {
        BObject elementBObj = ValueCreator.createObjectValue(ModuleUtils.getModule()
                                , WEB_ELEMENT_OBJECT_TYPE, (Object) null);
        elementBObj.addNativeData(WEB_ELEMENT_OBJECT, webElement);
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
        String message = "Unable to locate element. Provided {method:" + method + ", value: "
                + value + "}";
        return getBError(message);
    }

    public static BError getBError(String message) {
        return ErrorCreator.createError(ModuleUtils.getModule(), ERROR_TYPE,
                StringUtils.fromString(message), null, null);
    }

    public static BError getBError(String message, Throwable throwable) {
        BError cause = ErrorCreator.createError(throwable);
        return ErrorCreator.createError(ModuleUtils.getModule(), ERROR_TYPE,
                StringUtils.fromString(message), cause, null);
    }
}
