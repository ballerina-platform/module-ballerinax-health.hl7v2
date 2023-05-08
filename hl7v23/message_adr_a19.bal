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

public const ADR_A19_MESSAGE_TYPE = "ADR_A19";

# Patient query response message.
#
# + name - Message name  
# + msh - Message header segment  
# + msa - Message acknowledgement segment  
# + err - Error segment  
# + qrd - Query definition segment  
# + qrf - Query filter segment  
# + query_response - Query Response
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN, segmentComponentName: "QUERY_RESPONSE"},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID, segmentComponentName: "QUERY_RESPONSE"},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1, segmentComponentName: "QUERY_RESPONSE"},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1, segmentComponentName: "QUERY_RESPONSE"},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1, segmentComponentName: "QUERY_RESPONSE"},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2, segmentComponentName: "QUERY_RESPONSE"},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1, segmentComponentName: "QUERY_RESPONSE"},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX, segmentComponentName: "QUERY_RESPONSE"},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1, segmentComponentName: "QUERY_RESPONSE"},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1, segmentComponentName: "QUERY_RESPONSE"},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG, segmentComponentName: "QUERY_RESPONSE"}
    },
    groups: {
        "QUERY_RESPONSE": {
            maxReps: -1,
            required: true
        }
    }
}
public type ADR_A19 record {
    *hl7v2:Message;
    string name = ADR_A19_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    QRF qrf?;
    QUERY_RESPONSE[] query_response = [];
};
