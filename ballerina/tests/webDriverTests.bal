import ballerina/test;

@test:Config
function testGetChromeDriver() returns error? {
    WebDriver driver = new();
    driver.getChromeDriver("https://central.ballerina.io/");
    string actualTitle = driver.getTitle();
    string expectedTitle = "Ballerina Central";
    test:assertEquals(actualTitle, expectedTitle);
}

// @test:Config
// function testFindById() returns error? {
//     WebDriver driver = new();
//     driver.getChromeDriver("https://central.ballerina.io/");
//     WebElement element = driver.findById("downshift-search-bar-input");
//     element.click();
// }