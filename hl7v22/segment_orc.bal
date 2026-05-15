// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerinax/health.hl7v2;

# ORC segment. Commom Order The Common Order segment (ORC) is used to transmit data elements that are common to all orders (all types of services that are requested). The ORC segment is required in both the Order (ORM) and Order Acknowledgement (ORR) messages.
# + name - Segment Name
# + orc1 - Order Control
# + orc2 - Placer Order Number
# + orc3 - Filler Order Number
# + orc4 - Placer Group Number
# + orc5 - Order Status
# + orc6 - Response Flag
# + orc7 - Quantity / Timing
# + orc8 - Parent
# + orc9 - Date / Time Of Transaction
# + orc10 - Entered By
# + orc11 - Verified By
# + orc12 - Ordering Provider
# + orc13 - Enterer s Location
# + orc14 - Call Back Phone Number
# + orc15 - Order Effective Date / Time
# + orc16 - Order Control Code Reason
# + orc17 - Entering Organization
# + orc18 - Entering Device
# + orc19 - Action By

@hl7v2:SegmentDefinition {
    name: "ORC",
    required: false,
    maxReps: 0,
    fields: {
        "orc1": {
            required: true,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "orc2": {
            required: false,
            length: 75,
            maxReps: 1,
            dataType: CM_PLACER
        },
        "orc3": {
            required: false,
            length: 75,
            maxReps: 1,
            dataType: CM_FILLER
        },
        "orc4": {
            required: false,
            length: 75,
            maxReps: 1,
            dataType: CM_GROUP_ID
        },
        "orc5": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "orc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc7": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: TQ
        },
        "orc8": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CM_EIP
        },
        "orc9": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "orc10": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "orc11": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "orc12": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "orc13": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: PL
        },
        "orc14": {
            required: false,
            length: 40,
            maxReps: 2,
            dataType: TN
        },
        "orc15": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "orc16": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "orc17": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "orc18": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "orc19": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: CN_PERSON
        }

    }
}
public type ORC record {
    *hl7v2:Segment;
    string name = ORC_SEGMENT_NAME;
    ID orc1 = "";
    CM_PLACER orc2 = {};
    CM_FILLER orc3 = {};
    CM_GROUP_ID orc4 = {};
    ID orc5 = "";
    ID orc6 = "";
    TQ[] orc7 = [{}];
    CM_EIP orc8 = {};
    TS orc9 = {};
    CN_PERSON orc10 = {};
    CN_PERSON orc11 = {};
    CN_PERSON orc12 = {};
    PL orc13 = {};
    TN orc14 = "";
    TS orc15 = {};
    CE orc16 = {};
    CE orc17 = {};
    CE orc18 = {};
    CN_PERSON orc19 = {};
};

public const ORC_SEGMENT_NAME = "ORC";
