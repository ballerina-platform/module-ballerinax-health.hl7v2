Module for HL7 v2.8 specification.

# HL7 v2.8 Module

## Module Overview

This Package holds the messages, segments and data types for the HL7 version [2.8](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=356).

## Usage

To add the HL7 v2.8 dependency the project simply import the package as below,
```ballerina
import ballerinax/health.hl7v28
```

**Sample:** Simple HL7 Server implementation compatible for HL7 v2.8 which accept any message HL7 message available
in this package. This server binds to port `3000`

_Tip:_ Use [Hapi TestPanel](https://hapifhir.github.io/hapi-hl7v2/hapi-testpanel/) or any HL7 v2.8 compatible
client to invoke this server.

```ballerina
import ballerina/io;
import ballerina/tcp;
import ballerina/uuid;
import ballerinax/health.hl7v2;
import ballerinax/health.hl7v28;

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

        // Parse the received message.
        hl7v2:Message|error parsedMsg = hl7v2:parse(data);
        if parsedMsg is error {
            return error(string `Error occurred while parsing the received message: ${parsedMsg.message()}`,
            parsedMsg);
        }
        io:println(string `Parsed HL7 message: ${parsedMsg.toJsonString()}`);

        // Extract Message header (MSH).
        hl7v28:MSH? msh = ();
        if parsedMsg is hl7v2:Message && parsedMsg.hasKey("msh") {
            anydata mshEntry = parsedMsg["msh"];
            hl7v28:MSH|error tempMSH = mshEntry.ensureType();
            if tempMSH is error {
                return error("Error occurred while casting MSH", tempMSH);
            }
            msh = tempMSH;
        }
        if msh is () {
            return error("Failed to extract MSH from HL7 message");
        }

        // Create Acknowledgement message.
        hl7v28:ACK ack = {
            msh: {
                msh3: {hd1: "TESTSERVER"},
                msh4: {hd1: "WSO2OH"},
                msh5: {hd1: msh.msh3.hd1},
                msh6: {hd1: msh.msh4.hd1},
                msh9: {"cm_msg1": hl7v28:ACK_MESSAGE_TYPE},
                msh10: uuid:createType1AsString().substring(0, 8),
                msh11: {pt1: "P"},
                msh12: {vid1: "2.8"}
            },
            msa: {
                msa1: "AA",
                msa2: msh.msh10
            }
        };
        // Encode message to wire format.
        byte[]|hl7v2:HL7Error encodedMsg = hl7v2:encode(hl7v28:VERSION, ack);
        if encodedMsg is hl7v2:HL7Error {
            return error("Error occurred while encoding acknowledgement", encodedMsg);
        }

        string|error resp = string:fromBytes(encodedMsg);
        if resp is string {
            io:println(string `Encoded HL7 ACK Response Message: ${resp}`);
        }

        // Echoes back the data to the client from which the data is received.
        check caller->writeBytes(encodedMsg);
    }

    remote function onError(tcp:Error err) {
        io:println(string `An error occurred while receiving HL7 message: ${err.message()}. Stack trace: `,
        err.stackTrace());
    }

    remote function onClose() {
        io:println("Client left.");
    }

}
```
