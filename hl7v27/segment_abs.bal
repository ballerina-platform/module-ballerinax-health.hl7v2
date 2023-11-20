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
# + abs1 - Discharge Care Provider
# + abs2 - Transfer Medical Service Code
# + abs3 - Severity of Illness Code
# + abs4 - Date/Time of Attestation
# + abs5 - Attested By
# + abs6 - Triage Code
# + abs7 - Abstract Completion Date/Time
# + abs8 - Abstracted By
# + abs9 - Case Category Code
# + abs10 - Caesarian Section Indicator
# + abs11 - Gestation Category Code
# + abs12 - Gestation Period - Weeks
# + abs13 - Newborn Code
# + abs14 - Stillborn Indicator
@hl7v2:SegmentDefinition {
    name: "ABS",
    required: false,
    maxReps: 0,
    fields: {
        "abs1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "abs5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "abs8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "abs11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "abs13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "abs14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type ABS record {
    *hl7v2:Segment;
    string name = ABS_SEGMENT_NAME;
    XCN abs1 = {};
    CWE abs2 = {};
    CWE abs3 = {};
    DTM abs4 = "";
    XCN abs5 = {};
    CWE abs6 = {};
    DTM abs7 = "";
    XCN abs8 = {};
    CWE abs9 = {};
    ID abs10 = "";
    CWE abs11 = {};
    NM abs12 = "";
    CWE abs13 = {};
    ID abs14 = "";
};

public const ABS_SEGMENT_NAME = "ABS";