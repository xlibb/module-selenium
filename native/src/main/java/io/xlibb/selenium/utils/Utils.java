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
    public static final String INVALID_ELEMENT_STATE_ERROR_TYPE = "InvalidElementStateError";
    public static final String INSECURE_CERTIFICATE_ERROR_TYPE = "InsecureCertificateError";
    public static final String INVALID_ARGUMENT_ERROR_TYPE = "InvalidArgumentError";
    public static final String INVALID_SELECTOR_ERROR_TYPE = "InvalidSelectorError";
    public static final String JAVASCRIPT_ERROR_TYPE = "JavascriptError";
    public static final String NO_ALERT_PRESENT_ERROR_TYPE = "NoAlertPresentError";
    public static final String NO_SUCH_ELEMENT_ERROR_TYPE = "NoSuchElementError";
    public static final String NO_SUCH_WINDOW_ERROR_TYPE = "NoSuchWindowError";
    public static final String REQUEST_FAILED_ERROR_TYPE = "RequestFailedError";
    public static final String STALE_ELEMENT_REFERENCE_ERROR_TYPE = "StaleElementReferenceError";
    public static final String SESSION_NOT_CREATED_ERROR_TYPE = "SessionNotCreatedError";
    public static final String SCRIPT_TIMEOUT_ERROR_TYPE = "ScriptTimeoutError";
    public static final String TIMEOUT_ERROR_TYPE = "TimeoutError";
    public static final String UNHANDLED_ALERT_ERROR_TYPE = "UnhandledAlertError";

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

    public static BError getBError(String message, Exception e) {
        String errorType = ERROR_TYPE;
        if (e != null) {
            errorType = switch (e.getClass().getSimpleName()) {
                case "InvalidElementStateException", "ElementClickInterceptedException",
                     "ElementNotInteractableException" -> INVALID_ELEMENT_STATE_ERROR_TYPE;
                case "InsecureCertificateException" -> INSECURE_CERTIFICATE_ERROR_TYPE;
                case "InvalidArgumentException" -> INVALID_ARGUMENT_ERROR_TYPE;
                case "InvalidSelectorException" -> INVALID_SELECTOR_ERROR_TYPE;
                case "JavascriptException" -> JAVASCRIPT_ERROR_TYPE;
                case "NoAlertPresentException" -> NO_ALERT_PRESENT_ERROR_TYPE;
                case "NoSuchElementException" -> NO_SUCH_ELEMENT_ERROR_TYPE;
                case "NoSuchWindowException" -> NO_SUCH_WINDOW_ERROR_TYPE;
                case "WebDriverException" -> REQUEST_FAILED_ERROR_TYPE;
                case "StaleElementReferenceException" -> STALE_ELEMENT_REFERENCE_ERROR_TYPE;
                case "SessionNotCreatedException" -> SESSION_NOT_CREATED_ERROR_TYPE;
                case "ScriptTimeoutException" -> SCRIPT_TIMEOUT_ERROR_TYPE;
                case "TimeoutException" -> TIMEOUT_ERROR_TYPE;
                case "UnhandledAlertException" -> UNHANDLED_ALERT_ERROR_TYPE;
                default -> ERROR_TYPE;
            };
            BError cause = ErrorCreator.createError(e);
            return ErrorCreator.createError(ModuleUtils.getModule(), errorType,
                    StringUtils.fromString(message), cause, null);
        }
        return ErrorCreator.createError(ModuleUtils.getModule(), errorType,
                StringUtils.fromString(message), null, null);

    }
}
