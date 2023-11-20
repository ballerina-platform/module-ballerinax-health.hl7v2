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
public const ORU_R01_MESSAGE_TYPE = "ORU_R01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + dsc - DSC Segment
# + patient_result - ORU_R01_PATIENT_RESULT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "ORU_R01_PATIENT_RESULT": {
            maxReps: -1,
            required: true,
            segments: {
                "ORU_R01_PATIENT": {name: "ORU_R01_PATIENT", maxReps: 1, required: false, segmentType: typeof ORU_R01_PATIENT},
                "ORU_R01_ORDER_OBSERVATION": {name: "ORU_R01_ORDER_OBSERVATION", maxReps: -1, required: true, segmentType: typeof ORU_R01_ORDER_OBSERVATION}
            }
        }
    }
}
public type ORU_R01 record {
    *hl7v2:Message;
    string name = ORU_R01_MESSAGE_TYPE;
    MSH msh;
    DSC dsc?;
    ORU_R01_PATIENT_RESULT[] patient_result = [{}];
};