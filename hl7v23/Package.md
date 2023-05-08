Package containing HL7 messages, segments, data types and utilities to implement HL7 v2.3 specification related 
integration

# HL7 v2.3 Package

## Package Overview
This Package holds the messages, segments and data types for the HL7 version [2.3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=140). 

### Capabilities and features
1. [HL7 2.3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=140) Message model types
2. [HL7 2.3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=140) Segment model types 
3. [HL7 2.3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=140) Data types



#### Supported HL7 v2.3 Messages

|                                    |                                                                                                                                                                            |
|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Acknowledgement                    | [[Definition](http://www.hl7.eu/HL7v2x/v23/std23/ch2.htm#Heading266)] [[Ballerina Record](https://lib.ballerina.io/ballerinax/health.hl7v23/1.0.0/records/ACK)]    |
| ADT_A01 - Admit/visit notification | [[Definition](http://www.hl7.eu/HL7v2x/v23/std23/ch3.htm#Heading4)] [[Ballerina Record](https://lib.ballerina.io/ballerinax/health.hl7v23/1.0.0/records/ADT_A01)]  |
| ADR_A19 - Patient query            | [[Definition](http://www.hl7.eu/HL7v2x/v23/std23/ch3.htm#Heading22)] [[Ballerina Record](https://lib.ballerina.io/ballerinax/health.hl7v23/1.0.0/records/ADR_A19)] |
| QRY_A19 - Patient query            | [[Definition](http://www.hl7.eu/HL7v2x/v23/std23/ch3.htm#Heading22)] [[Ballerina Record](https://lib.ballerina.io/ballerinax/health.hl7v23/1.0.0/records/QRY_A19)] |

#### Supported HL7 v2.3 Data types

This package supports all the [HL7v2.3 Data types](http://www.hl7.eu/HL7v2x/v23/std23/ch2.htm#Heading21)

## Usage
To add the HL7 v23 dependency the project simply import the package as below,
```ballerina
import ballerinax/health.hl7v23
```
#### Dependency Compatibility

| Package                       | version |
|-------------------------------|---------|
| ballerinax/health.hl7v2       | 1.0.0   |

**Refer [HL7 Base package](https://central.ballerina.io/ballerinax/health.hl7v2) to learn more about usage of 
 the HL7 package series.**
