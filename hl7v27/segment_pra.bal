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
# + pra1 - Primary Key Value - PRA
# + pra2 - Practitioner Group
# + pra3 - Practitioner Category
# + pra4 - Provider Billing
# + pra5 - Specialty
# + pra6 - Practitioner ID Numbers
# + pra7 - Privileges
# + pra8 - Date Entered Practice
# + pra9 - Institution
# + pra10 - Date Left Practice
# + pra11 - Government Reimbursement Billing Eligibility
# + pra12 - Set ID - PRA
@hl7v2:SegmentDefinition {
    name: "PRA",
    required: false,
    maxReps: 0,
    fields: {
        "pra1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pra2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pra3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pra4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pra5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: SPD
        },
        "pra6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PLN
        },
        "pra7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PIP
        },
        "pra8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pra9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pra10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pra11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pra12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        }
    }
}
public type PRA record {
    *hl7v2:Segment;
    string name = PRA_SEGMENT_NAME;
    CWE pra1 = {};
    CWE[] pra2 = [{}];
    CWE[] pra3 = [{}];
    ID pra4 = "";
    SPD[] pra5 = [{}];
    PLN[] pra6 = [{}];
    PIP[] pra7 = [{}];
    DT pra8 = "";
    CWE pra9 = {};
    DT pra10 = "";
    CWE[] pra11 = [{}];
    SI pra12 = "";
};

public const PRA_SEGMENT_NAME = "PRA";