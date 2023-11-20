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
# + drg1 - Diagnostic Related Group
# + drg2 - DRG Assigned Date/Time
# + drg3 - DRG Approval Indicator
# + drg4 - DRG Grouper Review Code
# + drg5 - Outlier Type
# + drg6 - Outlier Days
# + drg7 - Outlier Cost
# + drg8 - DRG Payor
# + drg9 - Outlier Reimbursement
# + drg10 - Confidential Indicator
@hl7v2:SegmentDefinition {
    name: "DRG",
    required: false,
    maxReps: 0,
    fields: {
        "drg1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "drg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "drg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "drg4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "drg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type DRG record {
    *hl7v2:Segment;
    string name = DRG_SEGMENT_NAME;
    CE drg1 = {};
    TS drg2 = {};
    ID drg3 = "";
    IS drg4 = "";
    CE drg5 = {};
    NM drg6 = "";
    CP drg7 = {};
    IS drg8 = "";
    CP drg9 = {};
    ID drg10 = "";
};

public const DRG_SEGMENT_NAME = "DRG";