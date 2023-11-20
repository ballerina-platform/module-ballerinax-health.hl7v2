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
public const CSU_C09_MESSAGE_TYPE = "CSU_C09";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + patient - CSU_C09_PATIENT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH}
    }
    ,groups: {
        "CSU_C09_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "CSU_C09_VISIT": {name: "CSU_C09_VISIT", maxReps: 1, required: false, segmentType: typeof CSU_C09_VISIT},
                "CSR": {name: "CSR", maxReps: 1, required: true, segmentType: typeof CSR},
                "CSU_C09_STUDY_PHASE": {name: "CSU_C09_STUDY_PHASE", maxReps: -1, required: true, segmentType: typeof CSU_C09_STUDY_PHASE}
            }
        }
    }
}
public type CSU_C09 record {
    *hl7v2:Message;
    string name = CSU_C09_MESSAGE_TYPE;
    MSH msh;
    CSU_C09_PATIENT[] patient = [{pid:{}, csr:{}}];
};