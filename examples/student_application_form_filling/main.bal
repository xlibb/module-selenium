import ballerina/io;
import ballerina/lang.runtime;

import dharshi/selenium.org.openqa.selenium;
import dharshi/selenium.org.openqa.selenium.chrome;

public function main() returns error? {

    Data data = check getData();

    chrome:ChromeDriver driver = chrome:newChromeDriver1();
    driver.get("https://ipa-usecase-2-demo-frontend.vercel.app/");

    runtime:sleep(2);

    driver.findElement(selenium:By_id("fullName")).click();
    check driver.findElement(selenium:By_id("fullName")).sendKeys([data.fullName]);
    driver.findElement(selenium:By_id("nameWithInitials")).click();
    check driver.findElement(selenium:By_id("nameWithInitials")).sendKeys([data.nameWithInitials]);
    driver.findElement(selenium:By_id("dob")).click();
    check driver.findElement(selenium:By_id("dob")).sendKeys([data.dob]);
    driver.findElement(selenium:By_id("age")).click();
    check driver.findElement(selenium:By_id("age")).sendKeys([data.age]);
    driver.findElement(selenium:By_id("nationality")).click();
    check driver.findElement(selenium:By_id("nationality")).sendKeys([data.nationality]);
    driver.findElement(selenium:By_id(data.gender)).click();
    driver.findElement(selenium:By_id("address")).click();
    check driver.findElement(selenium:By_id("address")).sendKeys([data.address]);
    driver.findElement(selenium:By_id("mobile")).click();
    check driver.findElement(selenium:By_id("mobile")).sendKeys([data.mobile]);
    driver.findElement(selenium:By_id("district")).click();
    check driver.findElement(selenium:By_id("district")).sendKeys([data.district]);
    driver.findElement(selenium:By_id("gramaSevaka")).click();
    check driver.findElement(selenium:By_id("gramaSevaka")).sendKeys([data.gramaSevaka]);
    driver.findElement(selenium:By_id("nic")).click();
    check driver.findElement(selenium:By_id("nic")).sendKeys([data.nic ?: ""]);
    driver.findElement(selenium:By_id("passport")).click();
    check driver.findElement(selenium:By_id("passport")).sendKeys([data.passport ?: ""]);

    // 2. Emergency contact
    driver.findElement(selenium:By_id("emer-name")).click();
    check driver.findElement(selenium:By_id("emer-name")).sendKeys([data.emergency.name]);
    driver.findElement(selenium:By_id("emer-address")).click();
    check driver.findElement(selenium:By_id("emer-address")).sendKeys([data.emergency.address]);
    driver.findElement(selenium:By_id("emer-mobile")).click();
    check driver.findElement(selenium:By_id("emer-mobile")).sendKeys([data.emergency.mobile]);
    driver.findElement(selenium:By_id("relationship")).click();
    check driver.findElement(selenium:By_id("relationship")).sendKeys([data.emergency.relationship]);
    driver.findElement(selenium:By_id("emer-email")).click();
    check driver.findElement(selenium:By_id("emer-email")).sendKeys([data.emergency.email]);

    // 3. O/L results
    driver.findElement(selenium:By_id("ol-school")).click();
    check driver.findElement(selenium:By_id("ol-school")).sendKeys([data.olResults.school]);
    driver.findElement(selenium:By_id("ol-year")).click();
    check driver.findElement(selenium:By_id("ol-year")).sendKeys([data.olResults.year]);
    driver.findElement(selenium:By_id("ol-index")).click();
    check driver.findElement(selenium:By_id("ol-index")).sendKeys([data.olResults.index]);
    foreach ResultsItem item in data.olResults.results {
        driver.findElement(selenium:By_id("ol-subject")).click();
        check driver.findElement(selenium:By_id("ol-subject")).sendKeys([item.subject]);
        driver.findElement(selenium:By_id("ol-grade")).click();
        check driver.findElement(selenium:By_id("ol-grade")).sendKeys([item.grade]);
        driver.findElement(selenium:By_id("add-ol-result")).click();
    }

    // 4. A/L results
    driver.findElement(selenium:By_id("al-school")).click();
    check driver.findElement(selenium:By_id("al-school")).sendKeys([data.alResults.school]);
    driver.findElement(selenium:By_id("al-year")).click();
    check driver.findElement(selenium:By_id("al-year")).sendKeys([data.alResults.year]);
    driver.findElement(selenium:By_id("al-index")).click();
    check driver.findElement(selenium:By_id("al-index")).sendKeys([data.alResults.index]);
    driver.findElement(selenium:By_id("zScore")).click();
    check driver.findElement(selenium:By_id("zScore")).sendKeys([data.alResults.zScore]);
    driver.findElement(selenium:By_id("al-subject")).click();
    foreach ResultsItem item in data.alResults.results {
        check driver.findElement(selenium:By_id("al-subject")).sendKeys([item.subject]);
        driver.findElement(selenium:By_id("al-grade")).click();
        check driver.findElement(selenium:By_id("al-grade")).sendKeys([item.grade]);
        driver.findElement(selenium:By_id("add-al-result")).click();
    }

    // 5. Other qualifications
    foreach OtherQualificationsItem item in data.otherQualifications {
        driver.findElement(selenium:By_id("course")).click();
        check driver.findElement(selenium:By_id("course")).sendKeys([item.course]);
        driver.findElement(selenium:By_id("nvq")).click();
        check driver.findElement(selenium:By_id("nvq")).sendKeys([item.nvqLevel]);
        driver.findElement(selenium:By_id("institute")).click();
        check driver.findElement(selenium:By_id("institute")).sendKeys([item.institute]);
        driver.findElement(selenium:By_id("nvq-year")).click();
        check driver.findElement(selenium:By_id("nvq-year")).sendKeys([item.year]);
        driver.findElement(selenium:By_id("nvq-result")).click();
        check driver.findElement(selenium:By_id("nvq-result")).sendKeys([item.result]);
        driver.findElement(selenium:By_id("add-nvq-result")).click();
    }

    // 6. Extra curricular activities
    driver.findElement(selenium:By_id("extra-activities")).click();
    check driver.findElement(selenium:By_id("extra-activities")).sendKeys([data.extraCurricularActivities]);

    // 7. References
    foreach RefreesItem item in data.refrees {
        driver.findElement(selenium:By_id("refree-name")).click();
        check driver.findElement(selenium:By_id("refree-name")).sendKeys([item.name]);
        driver.findElement(selenium:By_id("designation")).click();
        check driver.findElement(selenium:By_id("designation")).sendKeys([item.designation]);
        driver.findElement(selenium:By_id("refree-address")).click();
        check driver.findElement(selenium:By_id("refree-address")).sendKeys([item.address]);
        driver.findElement(selenium:By_id("refree-mobile")).click();
        check driver.findElement(selenium:By_id("refree-mobile")).sendKeys([item.mobile]);
        driver.findElement(selenium:By_id("add-refree")).click();
    }

    // submit button
    driver.findElement(selenium:By_id("submit")).click();

    io:println("Data entered successsfully!");
}

