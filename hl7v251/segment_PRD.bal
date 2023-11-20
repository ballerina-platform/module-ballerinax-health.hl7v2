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
# + prd1 - Provider Role
# + prd2 - Provider Name
# + prd3 - Provider Address
# + prd4 - Provider Location
# + prd5 - Provider Communication Information
# + prd6 - Preferred Method of Contact
# + prd7 - Provider Identifiers
# + prd8 - Effective Start Date of Provider Role
# + prd9 - Effective End Date of Provider Role
@hl7v2:SegmentDefinition {
    name: "PRD",
    required: false,
    maxReps: 0,
    fields: {
        "prd1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "prd2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "prd3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "prd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "prd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "prd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prd7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PLN
        },
        "prd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prd9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type PRD record {
    *hl7v2:Segment;
    string name = PRD_SEGMENT_NAME;
    CE[] prd1 = [{}];
    XPN[] prd2 = [{}];
    XAD[] prd3 = [{}];
    PL prd4 = {};
    XTN[] prd5 = [{}];
    CE prd6 = {};
    PLN[] prd7 = [{}];
    TS prd8 = {};
    TS prd9 = {};
};

public const PRD_SEGMENT_NAME = "PRD";