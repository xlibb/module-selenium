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

public enum BrowserName {
    CHROME = "chrome",
    FIREFOX = "firefox"
}

# Represents the options for configuring the WebDriver instance.
#
# + browserName - The type of browser to open (either "chrome" or "firefox"). The default is "chrome".
# + url - The URL of the web application to open in the browser.  
# + headlessMode - A boolean value indicating whether to run the browser in headless mode (without a GUI). The default is `false`.
# + incognitoMode - A boolean value indicating whether to run the browser in incognito mode. The default is `false`.
# + additionalArguments - A list of additional command-line arguments to pass to the browser during initialization.
public type BrowserOptions record {|
    BrowserName browserName = CHROME;
    string url;
    boolean headlessMode = false;
    boolean incognitoMode = false;
    string[] additionalArguments = [];
|};
