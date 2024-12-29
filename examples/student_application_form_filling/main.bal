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

    selenium:WebDriver driver = check new ({
        url: "https://ballerina-ipa.choreoapps.dev/student-application"
    });

    check driver.maximize();

    runtime:sleep(2);
    
    // 1. Personal details
    selenium:WebElement fullNameElement = check driver.findById("fullName");
    check fullNameElement.sendKeys(data.fullName);

    selenium:WebElement nameWithInitialsElement = check driver.findById("nameWithInitials");
    check nameWithInitialsElement.sendKeys(data.nameWithInitials);

    selenium:WebElement dobElement = check driver.findById("dob");
    check dobElement.sendKeys(data.dob);

    selenium:WebElement ageElement = check driver.findById("age");
    check ageElement.sendKeys(data.age);

    selenium:WebElement nationalityElement = check driver.findById("nationality");
    check nationalityElement.sendKeys(data.nationality);

    selenium:WebElement genderElement = check driver.findById(data.gender);
    check genderElement.click();

    selenium:WebElement addressElement = check driver.findById("address");
    check addressElement.sendKeys(data.address);

    selenium:WebElement mobileElement = check driver.findById("mobile");
    check mobileElement.sendKeys(data.mobile);

    selenium:WebElement districtElement = check driver.findById("district");
    check districtElement.sendKeys(data.district);

    selenium:WebElement gramaSevakaElement = check driver.findById("gramaSevaka");
    check gramaSevakaElement.sendKeys(data.gramaSevaka);

    selenium:WebElement nicElement = check driver.findById("nic");
    check nicElement.sendKeys(data.nic ?: "");

    selenium:WebElement passportElement = check driver.findById("passport");
    check passportElement.sendKeys(data.passport ?: "");

    // 2. Emergency contact
    selenium:WebElement emerNameElement = check driver.findById("emer-name");
    check emerNameElement.sendKeys(data.emergency.name);

    selenium:WebElement emerAddressElement = check driver.findById("emer-address");
    check emerAddressElement.sendKeys(data.emergency.address);

    selenium:WebElement emerMobileElement = check driver.findById("emer-mobile");
    check emerMobileElement.sendKeys(data.emergency.mobile);

    selenium:WebElement relationshipElement = check driver.findById("relationship");
    check relationshipElement.sendKeys(data.emergency.relationship);

    selenium:WebElement emerEmailElement = check driver.findById("emer-email");
    check emerEmailElement.sendKeys(data.emergency.email);

    // 3. O/L results
    selenium:WebElement olSchoolElement = check driver.findById("ol-school");
    check olSchoolElement.sendKeys(data.olResults.school);

    selenium:WebElement olYearElement = check driver.findById("ol-year");
    check olYearElement.sendKeys(data.olResults.year);

    selenium:WebElement olIndexElement = check driver.findById("ol-index");
    check olIndexElement.sendKeys(data.olResults.index);

    selenium:WebElement olSubjectElement = check driver.findById("ol-subject");
    selenium:WebElement olGradeElement = check driver.findById("ol-grade");
    selenium:WebElement addOlResultElement = check driver.findById("add-ol-result");

    foreach ResultsItem item in data.olResults.results {
        check olSubjectElement.sendKeys(item.subject);
        check olGradeElement.sendKeys(item.grade);
        check addOlResultElement.click();
    }

    // 4. A/L results
    selenium:WebElement alSchoolElement = check driver.findById("al-school");
    check alSchoolElement.sendKeys(data.alResults.school);

    selenium:WebElement alYearElement = check driver.findById("al-year");
    check alYearElement.sendKeys(data.alResults.year);

    selenium:WebElement alIndexElement = check driver.findById("al-index");
    check alIndexElement.sendKeys(data.alResults.index);

    selenium:WebElement zScoreElement = check driver.findById("zScore");
    check zScoreElement.sendKeys(data.alResults.zScore);

    selenium:WebElement alSubjectElement = check driver.findById("al-subject");
    selenium:WebElement alGradeElement = check driver.findById("al-grade");
    selenium:WebElement addAlResultElement = check driver.findById("add-al-result");
    foreach ResultsItem item in data.alResults.results {
        check alSubjectElement.sendKeys(item.subject);
        check alGradeElement.sendKeys(item.grade);
        check addAlResultElement.click();
    }

    // 5. Other qualifications
    selenium:WebElement courseElement = check driver.findById("course");
    selenium:WebElement nvqElement = check driver.findById("nvq");
    selenium:WebElement instituteElement = check driver.findById("institute");
    selenium:WebElement nvqYearElement = check driver.findById("nvq-year");
    selenium:WebElement nvqResultElement = check driver.findById("nvq-result");
    selenium:WebElement addNvqResultElement = check driver.findById("add-nvq-result");

    foreach OtherQualificationsItem item in data.otherQualifications {
        check courseElement.sendKeys(item.course);
        check nvqElement.sendKeys(item.nvqLevel);
        check instituteElement.sendKeys(item.institute);
        check nvqYearElement.sendKeys(item.year);
        check nvqResultElement.sendKeys(item.result);
        check addNvqResultElement.click();
    }

    // 6. Extra curricular activities
    selenium:WebElement extraActivitiesElement = check driver.findById("extra-activities");
    check extraActivitiesElement.sendKeys(data.extraCurricularActivities);

    // 7. References
    selenium:WebElement refreeNameElement = check driver.findById("refree-name");
    selenium:WebElement designationElement = check driver.findById("designation");
    selenium:WebElement refreeAddressElement = check driver.findById("refree-address");
    selenium:WebElement refreeMobileElement = check driver.findById("refree-mobile");
    selenium:WebElement addRefreeElement = check driver.findById("add-refree");

    foreach RefreesItem item in data.refrees {
        check refreeNameElement.sendKeys(item.name);
        check designationElement.sendKeys(item.designation);
        check refreeAddressElement.sendKeys(item.address);
        check refreeMobileElement.sendKeys(item.mobile);
        check addRefreeElement.click();
    }

    // submit button
    selenium:WebElement submitButtonElement = check driver.findById("submit");
    check submitButtonElement.click();

    // close the browser
    check driver.quit();

    io:println("Data entered successfully!");

}

