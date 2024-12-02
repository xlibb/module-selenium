import ballerina/io;

public function getData() returns Data|error {
    json inputs = check io:fileReadJson("modules/resources/data.json");
    Data data = check inputs.cloneWithType();
    return data;
}