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
# + org1 - Set ID - ORG
# + org2 - Organization Unit Code
# + org3 - Organization Unit Type Code - ORG
# + org4 - Primary Org Unit Indicator
# + org5 - Practitioner Org Unit Identifier
# + org6 - Health Care Provider Type Code
# + org7 - Health Care Provider Classification Code
# + org8 - Health Care Provider Area of Specialization Code
# + org9 - Effective Date Range
# + org10 - Employment Status Code
# + org11 - Board Approval Indicator
# + org12 - Primary Care Physician Indicator
@hl7v2:SegmentDefinition {
    name: "ORG",
    required: false,
    maxReps: 0,
    fields: {
        "org1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "org2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "org5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "org6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "org10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "org11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "org12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type ORG record {
    *hl7v2:Segment;
    string name = ORG_SEGMENT_NAME;
    SI org1 = "";
    CE org2 = {};
    CE org3 = {};
    ID org4 = "";
    CX org5 = {};
    CE org6 = {};
    CE org7 = {};
    CE org8 = {};
    DR org9 = {};
    CE org10 = {};
    ID org11 = "";
    ID org12 = "";
};

public const ORG_SEGMENT_NAME = "ORG";