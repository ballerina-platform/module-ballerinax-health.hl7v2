Package containing core HL7v2 capabilities to implement HL7v2 related integration

# HL7 Base Package

## Package Overview
This Package holds the base implementation for referred by HL7v2 protocol version implementations. 

### Capabilities and features
1. This package contains core common processing utilities required by other version bound HL7v2 packages.
2. Framework implementation for other HL7v2 packages. 
3. Generic HL7v2 message Parser and Encoder
4. Generic HL7v2 client

## Usage
To add the HL7v2 base dependency the project simply import the package as below,
```ballerina
import ballerinax/health.hl7v2;
```

## Usage
To add the HL7v2 base dependency to the project, import the package as below,
```ballerina
import ballerinax/health.hl7v2;
```

### Parsing HL7 Messages
Let us see how to parse HL7 messages into its Ballerina record model.

**Example: Parsing HL7 messages sent over the wire**
```ballerina
import ballerina/io;
import ballerina/tcp;
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;

service on new tcp:Listener(3000) {
    remote function onConnect(tcp:Caller caller) returns tcp:ConnectionService {
        io:println("Client connected to HL7 server: ", caller.remotePort.toString());
        return new HL7ServiceConnectionService();
    }
}

service class HL7ServiceConnectionService {
    *tcp:ConnectionService;

    remote function onBytes(tcp:Caller caller, readonly & byte[] data) returns tcp:Error? {
        string|error fromBytes = string:fromBytes(data);
        if fromBytes is string {
            io:println("Received HL7 Message: ", fromBytes);
        }

        // Note: When you know the message type you can directly get it parsed.
        hl7v23:ADT_A01|error parsedMsg = hl7v2:parse(data).ensureType(hl7v23:ADT_A01);
        if parsedMsg is error {
            return error(string `Error occurred while parsing the received message: ${parsedMsg.message()}`, 
            parsedMsg);
        }
        io:println(string `Parsed HL7 message: ${parsedMsg.toJsonString()}`);
    }

    remote function onError(tcp:Error err) {
        io:println(string `An error occurred while receiving HL7 message: ${err.message()}. Stack trace: `, 
        err.stackTrace());
    }

    remote function onClose() {
        io:println("Client left");
    }
}
```

**Example: Parsing a string representation of a HL7 message**
```ballerina
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;
import ballerina/io;

public function main() returns hl7v2:HL7Error?|error {
    string queryMessageStr = string `MSH|^~\\&|ADT1|MCM|LABADT|MCM||SECURITY|QRY^A19|MSG00001|P|2.3|||||||${"\r"}QRD|20220828104856+0000|R|I|QueryID01|||5.0|1^ADAM^EVERMAN^^|VXI|SIIS|`;
    // Getting parsed QRY_A19 message record
    hl7v23:QRY_A19 parsedMsg = check hl7v2:parse(queryMessageStr).ensureType(hl7v23:QRY_A19);
    io:println(string `Query ID : ${parsedMsg.qrd.qrd4}`);
}
```
*Output :*
```
Query ID : QueryID01
```

### Encoding HL7 message model to wire format
Encoding HL7 message model into wire format.

**Example:**
```ballerina
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;
import ballerina/io;

public function main() returns error? {
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
            qrd7: {cq1: "5"},
            qrd8: [{xcn1: "1", xcn2: "ADAM", xcn3: "EVERMAN"}],
            qrd9: [{ce1: "VXI"}],
            qrd10: [{ce1: "SIIS"}]    
        }
    };

    byte[] encodedQRYA19 = check hl7v2:encode(hl7v23:VERSION, qry_a19);
    io:println(string `Encoded string:  ${check string:fromBytes(encodedQRYA19)}`);
}
```
*Output:*
```
Encoded string: QRD|20220828104856+0000|R|I|QueryID01|||5.0|1^ADAM^EVERMAN^^|VXI|SIIS|||||||
```

### Generic HL7 Client
Generic HL7 client to interact with HL7 servers.

**Example:**
```ballerina
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;
import ballerina/io;

public function main() returns error? {

    hl7v23:QRY_A19 qry_a19 = {
        msh: {
            msh3: {hd1: "ADT1"},
            msh4: {hd1: "MCM"},
            msh5: {hd1: "LABADT"},
            msh6: {hd1: "MCM"},
            msh8: "SECURITY",
            msh9: {cm_msg1: "QRY"},
            msh10: "MSG00001",
            msh11: {pt1: "P"},
            msh12: "2.3"
        },
        qrd: {
            qrd1: {ts1: "20220828104856+0000"},
            qrd2: "R",
            qrd3: "I",
            qrd4: "QueryID01",
            qrd7: {cq1: "5"},
            qrd8: [{xcn1: "1", xcn2: "ADAM", xcn3: "EVERMAN"}],
            qrd9: [{ce1: "VXI"}],
            qrd10: [{ce1: "SIIS"}]    
        }
    };

    hl7v2:HL7Client hl7client = check new("localhost", 59519);
    hl7v2:Message msg = check hl7client.sendMessage(qry_a19);
    io:println(string `Response : ${msg.toJsonString()}`);
}
```
*Sample Output:*
```
Response : {"name":"ACK", "msh":{"name":"MSH", "msh1":"MSH", "msh2":"^~\\&", "msh3":{"hd1":"", "hd2":"", "hd3":""}, "msh4":{"hd1":"", "hd2":"", "hd3":""}, "msh5":{"hd1":"", "hd2":"", "hd3":""}, "msh6":{"hd1":"", "hd2":"", "hd3":""}, "msh7":{"ts1":"20230526182704.489+0530"}, "msh8":"", "msh9":{"cm_msg1":"ACK", "cm_msg2":""}, "msh10":"2101", "msh11":{"pt1":"P", "pt2":""}, "msh12":"2.3", "msh13":-1.0, "msh14":"", "msh15":"", "msh16":"", "msh17":"", "msh18":"", "msh19":{"ce1":"", "ce2":"", "ce3":"", "ce4":"", "ce5":"", "ce6":""}}, "msa":{"name":"MSA", "msa1":"AE", "msa2":"MSG00001", "msa3":"Unsupported message type", "msa4":-1.0, "msa5":"", "msa6":{"ce1":"", "ce2":"", "ce3":"", "ce4":"", "ce5":"", "ce6":""}}, "err":{"name":"ERR", "err1":[{"cm_eld1":"", "cm_eld2":-1.0, "cm_eld3":-1.0, "cm_eld4":{"ce1":"", "ce2":"", "ce3":"", "ce4":"", "ce5":"", "ce6":""}}]}}
```

### Customizing HL7v2 segments

Customizing HL7v2 segments is supported by this package.

**Customizing a existing segment**

Following example shows how to customize a existing segment. In this example we are adding a new field to the PID segment.

```ballerina
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;

// This is a custom segment definition for PID segment with a new field pid31
@hl7v2:SegmentDefinition {
    fields: {
        "pid31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: hl7v23:ST
        }
    }
}
public type PID record {
    *hl7v23:PID;
    hl7v23:ST pid31 = "";
};

public function main() returns error? {
    do {
        string hl7MsgStr = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|||||||||||testVal|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";
        // Register the custom PID segment
        PID pid = {};
        hl7v2:registerCustomSegment("2.3", pid);
        // Parse the HL7 message
        hl7v2:Message|hl7v2:HL7Error parsedMsg = hl7v2:parse(hl7MsgStr);
        if parsedMsg is hl7v23:ADT_A01 {
            io:println(parsedMsg);
            PID pidSegment = check parsedMsg.pid.cloneWithType();
            //prints testVal as the 31th field value
            io:println("PID 31 value: ", pidSegment.pid31);
        }
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
``` 


**Registering a new segment**

Following example shows how to register a new segment. In HL7v2 new segment types can be defined starting with 'Z' prefix.

```ballerina
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v23;


// This is a custom Z segment definition
@hl7v2:SegmentDefinition {
    name: "ZPD",
    required: false,
    fields: {
        "zpd1": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: hl7v23:ST
        },
        "zpd2": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: hl7v23:ST
        }
    }
}
public type ZPD record {
    *hl7v2:Segment;
    string name = "ZPD";
    hl7v23:ST zpd1 = "";
    hl7v23:ST zpd2 = "";
};

public function main() returns error? {
    do {
        string hl7MsgStr = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|||||||||||testVal|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|\rZPD|CustomValue1|CustomValue2\r";
        ZPD zpd = {};
        hl7v2:registerCustomSegment("2.3", zpd);
        hl7v2:Message|hl7v2:HL7Error parsedMsg = hl7v2:parse(hl7MsgStr);
        if parsedMsg is hl7v23:ADT_A01 {
            io:println(parsedMsg);
            ZPD[] zpdSegment = check parsedMsg["zpd"].cloneWithType();
            io:println("ZPD 1 value: ", zpdSegment[0].zpd1);
            io:println("ZPD 2 value: ", zpdSegment[0].zpd2);
            io:println("Parsed HL7 message successfully.");
        }
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
```

