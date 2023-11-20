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
public const ARD_A19_MESSAGE_TYPE = "ARD_A19";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + dsc - DSC Segment
# + query_response - ARD_A19_QUERY_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "ARD_A19_QUERY_RESPONSE": {
            maxReps: -1,
            required: true,
            segments: {
                "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: typeof EVN},
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: typeof NK1},
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: typeof DB1},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: typeof DRG},
                "ARD_A19_PROCEDURE": {name: "ARD_A19_PROCEDURE", maxReps: -1, required: false, segmentType: typeof ARD_A19_PROCEDURE},
                "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: typeof GT1},
                "ARD_A19_INSURANCE": {name: "ARD_A19_INSURANCE", maxReps: -1, required: false, segmentType: typeof ARD_A19_INSURANCE},
                "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: typeof ACC},
                "UB1": {name: "UB1", maxReps: 1, required: false, segmentType: typeof UB1},
                "UB2": {name: "UB2", maxReps: 1, required: false, segmentType: typeof UB2}
            }
        }
    }
}
public type ARD_A19 record {
    *hl7v2:Message;
    string name = ARD_A19_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    QRF qrf?;
    DSC dsc?;
    ARD_A19_QUERY_RESPONSE[] query_response = [{pid:{}, pv1:{}}];
};