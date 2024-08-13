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
public const ADT_A06_MESSAGE_TYPE = "ADT_A06";

# HL7 Message Default Description
#
# + name - Message name  
# + msh - MSH Segment  
# + evn - EVN Segment  
# + pid - PID Segment  
# + pd1 - PD1 Segment  
# + mrg - MRG Segment  
# + nk1 - NK1 Segment  
# + pv1 - PV1 Segment  
# + pv2 - PV2 Segment  
# + db1 - DB1 Segment  
# + drg - DRG Segment  
# + obx - OBX Segment  
# + al1 - AL1 Segment  
# + dg1 - DG1 Segment  
# + drg1 - DRG Segment
# + procedure - ADT_A06_PROCEDURE Segment Group  
# + gt1 - GT1 Segment  
# + insurance - ADT_A06_INSURANCE Segment Group  
# + acc - ACC Segment  
# + ub1 - UB1 Segment  
# + ub2 - UB2 Segment
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PD1": [{name: "PD1", maxReps: 1, required: false}],
        "MRG": [{name: "MRG", maxReps: 1, required: false}],
        "NK1": [{name: "NK1", maxReps: -1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false}],
        "PV2": [{name: "PV2", maxReps: 1, required: false}],
        "DB1": [{name: "DB1", maxReps: -1, required: false}],
        "DRG": [{name: "DRG", maxReps: 1, required: false}],
        "OBX": [{name: "OBX", maxReps: -1, required: false}],
        "AL1": [{name: "AL1", maxReps: -1, required: false}],
        "DG1": [{name: "DG1", maxReps: -1, required: false}],
        "PR1": [{name: "PR1", maxReps: 1, required: false, segmentComponentName: "ADT_A06_PROCEDURE"}],
        "ROL": [{name: "ROL", maxReps: -1, required: false, segmentComponentName: "ADT_A06_PROCEDURE"}],
        "GT1": [{name: "GT1", maxReps: -1, required: false}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "ADT_A06_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "ADT_A06_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "ADT_A06_INSURANCE"}],
        "ACC": [{name: "ACC", maxReps: 1, required: false}],
        "UB1": [{name: "UB1", maxReps: 1, required: false}],
        "UB2": [{name: "UB2", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "MRG": {name: "MRG", maxReps: 1, required: false, segmentType: MRG},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC},
        "UB1": {name: "UB1", maxReps: 1, required: false, segmentType: UB1},
        "UB2": {name: "UB2", maxReps: 1, required: false, segmentType: UB2}
    }
    ,groups: {
        "ADT_A06_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        },
        "ADT_A06_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        }
    }
}
public type ADT_A06 record {
    *hl7v2:Message;
    string name = ADT_A06_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    MRG mrg?;
    NK1[] nk1 = [];
    PV1 pv1;
    PV2 pv2?;
    DB1[] db1 = [];
    DRG drg?;
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg1?;
    ADT_A06_PROCEDURE[] procedure = [{pr1:{}}];
    GT1[] gt1 = [];
    ADT_A06_INSURANCE[] insurance = [{in1:{}}];
    ACC acc?;
    UB1 ub1?;
    UB2 ub2?;
};