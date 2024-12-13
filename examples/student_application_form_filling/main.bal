// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com.
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

    Data data = check getData();

    selenium:WebDriver driver = new ();
    driver.openChrome("https://ballerina-ipa.choreoapps.dev/student-application");
    driver.maximize();

    runtime:sleep(2);

    (check driver.findById("fullName")).sendKeys(data.fullName);
    (check driver.findById("nameWithInitials")).sendKeys(data.nameWithInitials);
    (check driver.findById("dob")).sendKeys(data.dob);
    (check driver.findById("age")).sendKeys(data.age);
    (check driver.findById("nationality")).sendKeys(data.nationality);
    (check driver.findById(data.gender)).click();
    (check driver.findById("address")).sendKeys(data.address);
    (check driver.findById("mobile")).sendKeys(data.mobile);
    (check driver.findById("district")).sendKeys(data.district);
    (check driver.findById("gramaSevaka")).sendKeys(data.gramaSevaka);
    (check driver.findById("nic")).sendKeys(data.nic ?: "");
    (check driver.findById("passport")).sendKeys(data.passport ?: "");

    // 2. Emergency contact
    (check driver.findById("emer-name")).sendKeys(data.emergency.name);
    (check driver.findById("emer-address")).sendKeys(data.emergency.address);
    (check driver.findById("emer-mobile")).sendKeys(data.emergency.mobile);
    (check driver.findById("relationship")).sendKeys(data.emergency.relationship);
    (check driver.findById("emer-email")).sendKeys(data.emergency.email);

    // 3. O/L results
    (check driver.findById("ol-school")).sendKeys(data.olResults.school);
    (check driver.findById("ol-year")).sendKeys(data.olResults.year);
    (check driver.findById("ol-index")).sendKeys(data.olResults.index);
    foreach ResultsItem item in data.olResults.results {
        (check driver.findById("ol-subject")).sendKeys(item.subject);
        (check driver.findById("ol-grade")).sendKeys(item.grade);
        (check driver.findById("add-ol-result")).click();
    }

    // 4. A/L results
    (check driver.findById("al-school")).sendKeys(data.alResults.school);
    (check driver.findById("al-year")).sendKeys(data.alResults.year);
    (check driver.findById("al-index")).sendKeys(data.alResults.index);
    (check driver.findById("zScore")).sendKeys(data.alResults.zScore);
    foreach ResultsItem item in data.alResults.results {
        (check driver.findById("al-subject")).sendKeys(item.subject);
        (check driver.findById("al-grade")).sendKeys(item.grade);
        (check driver.findById("add-al-result")).click();
    }

    // 5. Other qualifications
    foreach OtherQualificationsItem item in data.otherQualifications {
        (check driver.findById("course")).sendKeys(item.course);
        (check driver.findById("nvq")).sendKeys(item.nvqLevel);
        (check driver.findById("institute")).sendKeys(item.institute);
        (check driver.findById("nvq-year")).sendKeys(item.year);
        (check driver.findById("nvq-result")).sendKeys(item.result);
        (check driver.findById("add-nvq-result")).click();
    }

    // 6. Extra curricular activities
    (check driver.findById("extra-activities")).sendKeys(data.extraCurricularActivities);

    // 7. References
    foreach RefreesItem item in data.refrees {
        (check driver.findById("refree-name")).sendKeys(item.name);
        (check driver.findById("designation")).sendKeys(item.designation);
        (check driver.findById("refree-address")).sendKeys(item.address);
        (check driver.findById("refree-mobile")).sendKeys(item.mobile);
        (check driver.findById("add-refree")).click();
    }

    // submit button
    (check driver.findById("submit")).click();

    io:println("Data entered successfully!");

}

