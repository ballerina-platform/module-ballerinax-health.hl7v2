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
# + nst1 - Statistics Available
# + nst2 - Source Identifier
# + nst3 - Source Type
# + nst4 - Statistics Start
# + nst5 - Statistics End
# + nst6 - Receive Character Count
# + nst7 - Send Character Count
# + nst8 - Messages Received
# + nst9 - Messages Sent
# + nst10 - Checksum Errors Received
# + nst11 - Length Errors Received
# + nst12 - Other Errors Received
# + nst13 - Connect Timeouts
# + nst14 - Receive Timeouts
# + nst15 - Application control-level Errors
@hl7v2:SegmentDefinition {
    name: "NST",
    required: false,
    maxReps: 0,
    fields: {
        "nst1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nst2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nst3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nst4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nst5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nst6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nst15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type NST record {
    *hl7v2:Segment;
    string name = NST_SEGMENT_NAME;
    ID nst1 = "";
    ST nst2 = "";
    ID nst3 = "";
    DTM nst4 = "";
    DTM nst5 = "";
    NM nst6 = "";
    NM nst7 = "";
    NM nst8 = "";
    NM nst9 = "";
    NM nst10 = "";
    NM nst11 = "";
    NM nst12 = "";
    NM nst13 = "";
    NM nst14 = "";
    NM nst15 = "";
};

public const NST_SEGMENT_NAME = "NST";