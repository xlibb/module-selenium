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

# Represents any error related to the Selenium module.
public type Error distinct error;

# Represents an error that occurs when performing actions on an element 
# that is in an invalid state (e.g., a disabled input field).
public type InvalidElementStateError distinct Error;

# Represents an error that occurs due to an insecure or untrusted SSL certificate.
public type InsecureCertificateError distinct Error;

# Represents an error that occurs when an invalid argument is passed to a command.
public type InvalidArgumentError distinct Error;

# Represents an error that occurs when attempting to locate or interact with an element using an invalid selector.
public type InvalidSelectorError distinct Error;

# Represents an error that occurs when executing JavaScript code in the browser.
public type JavascriptError distinct Error;

# Represents an error that occurs when attempting to interact with an alert that is not present.
public type NoAlertPresentError distinct Error;

# Represents an error that occurs when an element could not be found in the DOM.
public type NoSuchElementError distinct Error;

# Represents an error that occurs when attempting to switch to a window that no longer exists.
public type NoSuchWindowError distinct Error;

# Represents an error that occurs when a server request fails unexpectedly.
public type RequestFailedError distinct Error;

# Represents an error that occurs when an element's reference is stale 
# (e.g., the element is no longer attached to the DOM).
public type StaleElementReferenceError distinct Error;

# Represents an error that occurs when a session could not be created.
public type SessionNotCreatedError distinct Error;

# Represents an error that occurs when a script execution takes longer than the specified timeout.
public type ScriptTimeoutError distinct Error;

# Represents an error that occurs when an operation exceeds the specified timeout period.
public type TimeoutError distinct Error;

# Represents an error that occurs when an unexpected alert is present during an operation.
public type UnhandledAlertError distinct Error;
