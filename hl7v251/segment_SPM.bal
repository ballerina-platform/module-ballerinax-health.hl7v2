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
# + spm1 - Set ID - SPM
# + spm2 - Specimen ID
# + spm3 - Specimen Parent IDs
# + spm4 - Specimen Type
# + spm5 - Specimen Type Modifier
# + spm6 - Specimen Additives
# + spm7 - Specimen Collection Method
# + spm8 - Specimen Source Site
# + spm9 - Specimen Source Site Modifier
# + spm10 - Specimen Collection Site
# + spm11 - Specimen Role
# + spm12 - Specimen Collection Amount
# + spm13 - Grouped Specimen Count
# + spm14 - Specimen Description
# + spm15 - Specimen Handling Code
# + spm16 - Specimen Risk Code
# + spm17 - Specimen Collection Date/Time
# + spm18 - Specimen Received Date/Time
# + spm19 - Specimen Expiration Date/Time
# + spm20 - Specimen Availability
# + spm21 - Specimen Reject Reason
# + spm22 - Specimen Quality
# + spm23 - Specimen Appropriateness
# + spm24 - Specimen Condition
# + spm25 - Specimen Current Quantity
# + spm26 - Number of Specimen Containers
# + spm27 - Container Type
# + spm28 - Container Condition
# + spm29 - Specimen Child Role
@hl7v2:SegmentDefinition {
    name: "SPM",
    required: false,
    maxReps: 0,
    fields: {
        "spm1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "spm2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        },
        "spm3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EIP
        },
        "spm4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "spm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "spm14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "spm15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "spm18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "spm19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "spm20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "spm21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "spm26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "spm27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type SPM record {
    *hl7v2:Segment;
    string name = SPM_SEGMENT_NAME;
    SI spm1 = "";
    EIP spm2 = {};
    EIP[] spm3 = [{}];
    CWE spm4 = {};
    CWE[] spm5 = [{}];
    CWE[] spm6 = [{}];
    CWE spm7 = {};
    CWE spm8 = {};
    CWE[] spm9 = [{}];
    CWE spm10 = {};
    CWE[] spm11 = [{}];
    CQ spm12 = {};
    NM spm13 = "";
    ST[] spm14 = [""];
    CWE[] spm15 = [{}];
    CWE[] spm16 = [{}];
    DR spm17 = {};
    TS spm18 = {};
    TS spm19 = {};
    ID spm20 = "";
    CWE[] spm21 = [{}];
    CWE spm22 = {};
    CWE spm23 = {};
    CWE[] spm24 = [{}];
    CQ spm25 = {};
    NM spm26 = "";
    CWE spm27 = {};
    CWE spm28 = {};
    CWE spm29 = {};
};

public const SPM_SEGMENT_NAME = "SPM";