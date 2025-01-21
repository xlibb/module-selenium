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

import ballerina/io;
import ballerina/lang.runtime;

import xlibb/selenium;

public function main() returns error? {

    selenium:WebDriver driver = check new ({
        url: "http://books.toscrape.com/"
    });
    check driver.maximize();
    runtime:sleep(2);

    string category = "Science";
    selenium:WebElement|error categoryLink = driver.findByPartialLinkText(category);
    if categoryLink is error {
        io:println(`Invalid category name: ${category}`);
        check driver.quit();
        return;
    }
    check categoryLink.click();
    runtime:sleep(2);

    selenium:WebElement[] results = check driver.findAllByClassName("product_pod");
    if results.length() == 0 {
        io:println("No results found for category " + category);
    }
    int count = 0;
    foreach selenium:WebElement result in results {
        count = count + 1;
        selenium:WebElement itemPageLink = check result.findByCssSelector("h3 > a");
        check itemPageLink.click();
        runtime:sleep(1);

        selenium:WebElement itemContent = check driver.findByClassName("product_main");
        string bookName = check (check itemContent.findByTagName("h1")).getText();
        string price = check (check itemContent.findByClassName("price_color")).getText();
        string availability = check (check itemContent.findByClassName("availability")).getText();

        io:println(string `${count}. Name: ${bookName}, Price: ${price}, Availability: ${availability}` + "\n");
        check driver.navigateBack();
        runtime:sleep(1);
    }

    check driver.quit();

}
