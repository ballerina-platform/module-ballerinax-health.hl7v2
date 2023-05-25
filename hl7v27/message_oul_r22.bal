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

public const OUL_R22_MESSAGE_TYPE = "OUL_R22";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + nte - Message Record Field
# + nk1 - Message Record Field
# + dsc - Message Record Field
# + patient - Message Record Field
# + specimen - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: NTE},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type OUL_R22 record {
    *hl7v2:Message;
    string name = OUL_R22_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    NK1[] nk1 = [];
    DSC dsc?;
    PATIENT[] patient = [{}];
    SPECIMEN[] specimen = [{}];
};