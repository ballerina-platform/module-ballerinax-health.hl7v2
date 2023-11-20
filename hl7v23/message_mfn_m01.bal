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
public const MFN_M01_MESSAGE_TYPE = "MFN_M01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + mfi - MFI Segment
# + mf - MFN_M01_MF Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MFI": {name: "MFI", maxReps: 1, required: true, segmentType: MFI}
    }
    ,groups: {
        "MFN_M01_MF": {
            maxReps: -1,
            required: true,
            segments: {
                "MFE": {name: "MFE", maxReps: 1, required: true, segmentType: typeof MFE}
            }
        }
    }
}
public type MFN_M01 record {
    *hl7v2:Message;
    string name = MFN_M01_MESSAGE_TYPE;
    MSH msh;
    MFI mfi;
    MFN_M01_MF[] mf = [{mfe:{}}];
};