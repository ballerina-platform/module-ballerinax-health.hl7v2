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
public const RPA_I08_MESSAGE_TYPE = "RPA_I08";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + rf1 - RF1 Segment
# + pid - PID Segment
# + nk1 - NK1 Segment
# + gt1 - GT1 Segment
# + acc - ACC Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + al1 - AL1 Segment
# + nte - NTE Segment
# + authorization - RPA_I08_AUTHORIZATION Segment Group
# + provider - RPA_I08_PROVIDER Segment Group
# + insurance - RPA_I08_INSURANCE Segment Group
# + procedure - RPA_I08_PROCEDURE Segment Group
# + observation - RPA_I08_OBSERVATION Segment Group
# + visit - RPA_I08_VISIT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "RF1": {name: "RF1", maxReps: 1, required: false, segmentType: RF1},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: -1, required: false, segmentType: DRG},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RPA_I08_AUTHORIZATION": {
            maxReps: 1,
            required: false,
            segments: {
                "AUT": {name: "AUT", maxReps: 1, required: true, segmentType: typeof AUT},
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD}
            }
        },
        "RPA_I08_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "RPA_I08_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "RPA_I08_PROCEDURE": {
            maxReps: -1,
            required: true,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "RPA_I08_AUTCTD_SUPPGRP2": {name: "RPA_I08_AUTCTD_SUPPGRP2", maxReps: 1, required: false, segmentType: typeof RPA_I08_AUTCTD_SUPPGRP2}
            }
        },
        "RPA_I08_OBSERVATION": {
            maxReps: -1,
            required: false,
            segments: {
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "RPA_I08_RESULTS": {name: "RPA_I08_RESULTS", maxReps: -1, required: false, segmentType: typeof RPA_I08_RESULTS}
            }
        },
        "RPA_I08_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        }
    }
}
public type RPA_I08 record {
    *hl7v2:Message;
    string name = RPA_I08_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    RF1 rf1?;
    PID pid;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    RPA_I08_AUTHORIZATION[] authorization = [{aut:{}}];
    RPA_I08_PROVIDER[] provider = [{prd:{}}];
    RPA_I08_INSURANCE[] insurance = [{in1:{}}];
    RPA_I08_PROCEDURE[] procedure = [{pr1:{}}];
    RPA_I08_OBSERVATION[] observation = [{obr:{}}];
    RPA_I08_VISIT[] visit = [{pv1:{}}];
};