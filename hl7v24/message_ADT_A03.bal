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
public const ADT_A03_MESSAGE_TYPE = "ADT_A03";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + rol - ROL Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment
# + db1 - DB1 Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + obx - OBX Segment
# + pda - PDA Segment
# + procedure - ADT_A03_PROCEDURE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: ROL},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "PDA": {name: "PDA", maxReps: 1, required: false, segmentType: PDA}
    }
    ,groups: {
        "ADT_A03_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        }
    }
}
public type ADT_A03 record {
    *hl7v2:Message;
    string name = ADT_A03_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    PV1 pv1;
    PV2 pv2?;
    DB1[] db1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    OBX[] obx = [];
    PDA pda?;
    ADT_A03_PROCEDURE[] procedure = [{pr1:{}}];
};