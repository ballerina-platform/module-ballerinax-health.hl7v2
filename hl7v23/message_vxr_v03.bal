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
public const VXR_V03_MESSAGE_TYPE = "VXR_V03";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + nk1 - NK1 Segment
# + patient_visit - VXR_V03_PATIENT_VISIT Segment Group
# + insurance - VXR_V03_INSURANCE Segment Group
# + order - VXR_V03_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1}
    }
    ,groups: {
        "VXR_V03_PATIENT_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "VXR_V03_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "VXR_V03_ORDER": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: false, segmentType: typeof ORC},
                "RXA": {name: "RXA", maxReps: 1, required: true, segmentType: typeof RXA},
                "RXR": {name: "RXR", maxReps: 1, required: false, segmentType: typeof RXR},
                "VXR_V03_OBSERVATION": {name: "VXR_V03_OBSERVATION", maxReps: -1, required: false, segmentType: typeof VXR_V03_OBSERVATION}
            }
        }
    }
}
public type VXR_V03 record {
    *hl7v2:Message;
    string name = VXR_V03_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    QRD qrd;
    QRF qrf?;
    PID pid;
    PD1 pd1?;
    NK1[] nk1 = [];
    VXR_V03_PATIENT_VISIT[] patient_visit = [{pv1:{}}];
    VXR_V03_INSURANCE[] insurance = [{in1:{}}];
    VXR_V03_ORDER[] 'order = [{rxa:{}}];
};