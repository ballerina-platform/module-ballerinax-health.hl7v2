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
# + response - ORU_R01_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION.ORU_R01_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION.ORU_R01_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_PATIENT"}],
        "CTI": [{name: "CTI", maxReps: -1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_PATIENT.ORU_R01_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_PATIENT.ORU_R01_VISIT"}],
        "PD1": [{name: "PD1", maxReps: 1, required: false, segmentComponentName: "ORU_R01_RESPONSE.ORU_R01_PATIENT"}],
        "DSC": [{name: "DSC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "ORU_R01_RESPONSE": {
            maxReps: -1,
            required: true,
            segments: {
                "ORU_R01_PATIENT": {name: "ORU_R01_PATIENT", maxReps: 1, required: false, segmentType: typeof ORU_R01_PATIENT},
                "ORU_R01_ORDER_OBSERVATION": {name: "ORU_R01_ORDER_OBSERVATION", maxReps: -1, required: true, segmentType: typeof ORU_R01_ORDER_OBSERVATION}
            }
        },
        "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION.ORU_R01_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "ORU_R01_RESPONSE.ORU_R01_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "ORU_R01_RESPONSE.ORU_R01_PATIENT": {
		   maxReps: 1,
		   required: false
		},
        "ORU_R01_RESPONSE.ORU_R01_PATIENT.ORU_R01_VISIT": {
		   maxReps: 1,
		   required: false
		}
    }
}
public type ORU_R01 record {
    *hl7v2:Message;
    string name = ORU_R01_MESSAGE_TYPE;
    MSH msh;
    ORU_R01_RESPONSE[] response = [{}];
    DSC dsc?;
};