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
# + gp21 - Revenue Code
# + gp22 - Number of Service Units
# + gp23 - Charge
# + gp24 - Reimbursement Action Code
# + gp25 - Denial or Rejection Code
# + gp26 - OCE Edit Code
# + gp27 - Ambulatory Payment Classification Code
# + gp28 - Modifier Edit Code
# + gp29 - Payment Adjustment Code
# + gp210 - Packaging Status Code
# + gp211 - Expected CMS Payment Amount
# + gp212 - Reimbursement Type Code
# + gp213 - Co-Pay Amount
# + gp214 - Pay Rate per Service Unit
@hl7v2:SegmentDefinition {
    name: "GP2",
    required: false,
    maxReps: 0,
    fields: {
        "gp21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gp23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gp27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gp29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp213": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type GP2 record {
    *hl7v2:Segment;
    string name = GP2_SEGMENT_NAME;
    CWE gp21 = {};
    NM gp22 = "";
    CP gp23 = {};
    CWE gp24 = {};
    CWE gp25 = {};
    CWE[] gp26 = [{}];
    CWE gp27 = {};
    CWE[] gp28 = [{}];
    CWE gp29 = {};
    CWE gp210 = {};
    CP gp211 = {};
    CWE gp212 = {};
    CP gp213 = {};
    NM gp214 = "";
};

public const GP2_SEGMENT_NAME = "GP2";