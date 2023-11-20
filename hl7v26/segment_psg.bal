// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

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

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + psg1 - 1950EIHL7Provider Product/Service Group Number
# + psg2 - 1951EIHL7Payer Product/Service Group Number
# + psg3 - 1952SIHL7Product/Service Group Sequence Number
# + psg4 - 1953IDHL70136HL7Adjudicate as Group
# + psg5 - 1954CPHL7Product/Service Group Billed Amount
# + psg6 - 2044STHL7Product/Service Group Description
@hl7v2:SegmentDefinition {
    name: "PSG",
    required: false,
    maxReps: 0,
    fields: {
        "psg1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psg3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "psg4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psg5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psg6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type PSG record {
    *hl7v2:Segment;
    string name = PSG_SEGMENT_NAME;
    EI psg1 = {};
    EI psg2 = {};
    SI psg3 = "";
    ID psg4 = "";
    CP psg5 = {};
    ST psg6 = "";
};

public const PSG_SEGMENT_NAME = "PSG";