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
# + cdm1 - Primary Key Value
# + cdm2 - Charge Code Alias
# + cdm3 - Charge Description Short
# + cdm4 - Charge Description Long
# + cdm5 - Description Override Indicator
# + cdm6 - Exploding Charges
# + cdm7 - Procedure Code
# + cdm8 - Active/Inactive Flag
# + cdm9 - Inventory Number
# + cdm10 - Resource Load
# + cdm11 - Contract Number
# + cdm12 - Contract Organization
# + cdm13 - Room Fee Indicator
@hl7v2:SegmentDefinition {
    name: "CDM",
    required: false,
    maxReps: 0,
    fields: {
        "cdm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "cdm2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "cdm3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "cdm6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "cdm7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "cdm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cdm9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "cdm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cdm11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CK
        },
        "cdm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "cdm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type CDM record {
    *hl7v2:Segment;
    string name = CDM_SEGMENT_NAME;
    CE cdm1 = {};
    CE[] cdm2 = [{}];
    ST cdm3 = "";
    ST cdm4 = "";
    IS cdm5 = "";
    CE[] cdm6 = [{}];
    CE[] cdm7 = [{}];
    ID cdm8 = "";
    CE[] cdm9 = [{}];
    NM cdm10 = "";
    CK[] cdm11 = [{}];
    XON cdm12 = {};
    ID cdm13 = "";
};

public const CDM_SEGMENT_NAME = "CDM";
