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
public const MFK_M02_MESSAGE_TYPE = "MFK_M02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + mfi - MFI Segment
# + mfa - MFA Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "MFI": {name: "MFI", maxReps: 1, required: true, segmentType: MFI},
        "MFA": {name: "MFA", maxReps: -1, required: false, segmentType: MFA}
    }
}
public type MFK_M02 record {
    *hl7v2:Message;
    string name = MFK_M02_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    MFI mfi;
    MFA[] mfa = [];
};