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
public const ORM_O01_MESSAGE_TYPE = "ORM_O01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + nte - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "IN1": {name: "IN1", maxReps: 1, required: false, segmentType: IN1},
        "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: IN2},
        "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: IN3},
        "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: GT1},
        "AL1": {name: "AL1", maxReps: 1, required: false, segmentType: AL1},
        "ORC": {name: "ORC", maxReps: 1, required: false, segmentType: ORC},
        "OBR": {name: "OBR", maxReps: 1, required: false, segmentType: OBR},
        "RQD": {name: "RQD", maxReps: 1, required: false, segmentType: RQD},
        "RQ1": {name: "RQ1", maxReps: 1, required: false, segmentType: RQ1},
        "RXO": {name: "RXO", maxReps: 1, required: false, segmentType: RXO},
        "ODS": {name: "ODS", maxReps: 1, required: false, segmentType: ODS},
        "ODT": {name: "ODT", maxReps: 1, required: false, segmentType: ODT},
        "DG1": {name: "DG1", maxReps: 1, required: false, segmentType: DG1},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "CTI": {name: "CTI", maxReps: 1, required: false, segmentType: CTI},
        "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: BLG}
    }
}
public type ORM_O01 record {
    *hl7v2:Message;
    string name = ORM_O01_MESSAGE_TYPE;
    MSH msh?;
    NTE[] nte = [];
};