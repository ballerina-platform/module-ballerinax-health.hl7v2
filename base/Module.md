HL7v2 base implementation module with common core capabilities

# HL7v2 Base Module

## Overview
This Module holds the base implementation for referred by HL7v2 protocol version implementations. 

## Usage
To add the HL7v2 base dependency the project simply import the package as below,
```ballerina
import ballerinax/health.hl7v2;
```

### Parsing HL7 Message
Parsing encoded wire format HL7 messages into its representative message model

NOTE: The `ballerinax/health.hl7v2` is capable of intelligently detecting used versioned hl7v2 packages 
ex: `health.hl7v23` in the project and parse to relevant message model. Hence, ensure required package is properly 
imported.

**Example: Parsing HL7 messages sent by a client**
```ballerina
import ballerina/log;
import ballerina/tcp;
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;

service on new tcp:Listener(3000) {
    remote function onConnect(tcp:Caller caller) returns tcp:ConnectionService {
        log:printInfo("Client connected to echoServer: " + caller.remotePort.toString());
        return new HL7ServiceConnectionService();
    }
}

service class HL7ServiceConnectionService {
    *tcp:ConnectionService;

    remote function onBytes(tcp:Caller caller, readonly & byte[] data) returns tcp:Error? {
        string|error fromBytes = string:fromBytes(data);
        if fromBytes is string {
            log:printInfo("Received HL7 Message: " + fromBytes);
        }

        hl7v2:HL7Parser parser = new();
        // Note: When you know the message type you can directly get it parsed.
        hl7v23:QRY_A19 parsedMsg = check parser.parse(data).ensureType(hl7v23:QRY_A19);
        if parsedMsg is hl7v2:HL7Error {
            return error("Error occurred while parsing the received message", parsedMsg);
        }
        log:printInfo("Parsed HL7 message:" + parsedMsg.toString());
    }

    remote function onError(tcp:Error err) {
        log:printError("An error occurred", 'error = err);
    }

    remote function onClose() {
        log:printInfo("Client left");
    }
}
```

**Example: Parsing a constructed HL7 message string**
```ballerina
import ballerinax/health.hl7v23;

function parseQueryMessage() returns hl7v2:HL7Error? {
    string queryMessageStr = "MSH|^~\\&|ADT1|MCM|LABADT|MCM||SECURITY|QRY^A19|MSG00001|P|2.3|||||||\r"
                            + "QRD|20220828104856+0000|R|I|QueryID01|||5.0|1^ADAM^EVERMAN^^|VXI|SIIS|";
    hl7v2:HL7Parser parser = new();
    // Getting parsed QRY_A19 message record
    hl7v23:QRY_A19 parsedMsg = check parser.parse(queryMessageStr).ensureType(hl7v23:QRY_A19);
    log:printInfo("Query ID : " + parsedMsg.qrd.qrd4);
}
```
*Output :*
```
level = INFO module = openHealthcare/hl7Client message = "Query ID : QueryID01"
```

### Encoding HL7 Message Model to Wire Format
Encoding HL7 message model into wire format.

**Example:**
```ballerina
import ballerinax/health.hl7v23;

function encodeQueryMessage() returns error? {
    hl7v23:QRY_A19 qry_a19 = {
        msh: {
            msh3: {hd1: "ADT1"},
            msh4: {hd1: "MCM"},
            msh5: {hd1: "LABADT"},
            msh6: {hd1: "MCM"},
            msh8: "SECURITY",
            msh9: {cm_msg1: "QRY", cm_msg2: "A19"},
            msh10: "MSG00001",
            msh11: {pt1: "P"},
            msh12: "2.3"
        },
        qrd: {
            qrd1: {ts1: "20220828104856+0000"},
            qrd2: "R",
            qrd3: "I",
            qrd4: "QueryID01",
            qrd7: {cq1: 5},
            qrd8: [{xcn1: "1", xcn2: "ADAM", xcn3: "EVERMAN"}],
            qrd9: [{ce1: "VXI"}],
            qrd10: [{ce1: "SIIS"}]    
        }
    };

    hl7v2:HL7Encoder encoder = new ();
    byte[] encodedQRYA19 = check encoder.encode(hl7v23:VERSION, qry_a19);
    log:printInfo("String: " + check string:fromBytes(encodedQRYA19));
}
```
*Output:*
```
level = INFO module = openHealthcare/hl7Client message = "String: 
           MSH|^~\\&|ADT1|MCM|LABADT|MCM||SECURITY|QRY^A19|MSG00001|P|2.3|||||||\rQRD|20220828104856+0000|R|I|QueryID01|||5.0|1^ADAM^EVERMAN^^|VXI|SIIS|\r\r"
level = INFO module = openHealthcare/hl7Client message = "Base16: 0b4d53487c5e7e5c267c414454317c4d434d7c4c41424144547c4d434d7c7c53454355524954597c5152595e4131397c4d534730303030317c507c322e337c7c7c7c7c7c7c0d5152447c32303232303832383130343835362b303030307c527c497c5175657279494430317c7c7c352e307c315e4144414d5e455645524d414e5e5e7c5658497c534949537c0d1c0d"
```

### Generic HL7 Client
Generic HL7 client to interact with HL7 servers.

**Example:**
```ballerina
function sendHl7Message(byte[] encodedQRYA19) returns hl7v2:HL7Error|error? {
    // Send to HL7 server
    hl7v2:HL7Client hl7client = check new("localhost", 56919);
    byte[] responseMsg = check hl7client.sendMessage(encodedQRYA19);
    log:printInfo("Response : " + check string:fromBytes(responseMsg));
}
```
*Output:*
```
level = INFO module = openHealthcare/hl7Client message = "Response : 
           MSH|^~\\&|LABADT|MCM|ADT1|MCM|20221220171109.967+0530||ACK^A19|103|P|2.3\rMSA|AA|MSG00001\r\r"
```