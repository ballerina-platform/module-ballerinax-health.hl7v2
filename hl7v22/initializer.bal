import ballerina/log;
import ballerinax/health.hl7v2;
import ballerina/jballerina.java;

// This will get access to the package module from the Runtime API. The arguments are the org, name, and major version of the package.
final handle packageModule = hl7v2:newModule(java:fromString("ballerinax"), java:fromString("health.hl7v22"), java:fromString("1"));

function init() {
    readonly & hl7v2:HL7Package package = {
        name: "HL7v22",
        hl7Version: "2.2",
        parserCreator: (),
        encoderCreator: (),
        parserUtils: {
            getMessageFunc: getMessage,
            getSegmentFunc: getSegment,
            getSegmentGroupFunc: getSegmentComponent
        }
    };
    hl7v2:hl7Registry.addPackage(package);
    log:printDebug("HL7 v2.2 Package Initialized");
}
