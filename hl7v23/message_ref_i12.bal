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
public const REF_I12_MESSAGE_TYPE = "REF_I12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + rf1 - RF1 Segment
# + pid - PID Segment
# + nk1 - NK1 Segment
# + gt1 - GT1 Segment
# + acc - ACC Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + al1 - AL1 Segment
# + nte - NTE Segment
# + authorization - REF_I12_AUTHORIZATION Segment Group
# + provider - REF_I12_PROVIDER Segment Group
# + insurance - REF_I12_INSURANCE Segment Group
# + procedure - REF_I12_PROCEDURE Segment Group
# + results - REF_I12_RESULTS Segment Group
# + visit - REF_I12_VISIT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "RF1": [{name: "RF1", maxReps: 1, required: false}],
        "AUT": [{name: "AUT", maxReps: 1, required: false, segmentComponentName: "REF_I12_AUTHORIZATION"}, {name: "AUT", maxReps: 1, required: false, segmentComponentName: "REF_I12_PROCEDURE.REF_I12_AUTCTD_SUPPGRP2"}],
        "CTD": [{name: "CTD", maxReps: 1, required: false, segmentComponentName: "REF_I12_AUTHORIZATION"}, {name: "CTD", maxReps: -1, required: false, segmentComponentName: "REF_I12_PROVIDER"}, {name: "CTD", maxReps: 1, required: false, segmentComponentName: "REF_I12_PROCEDURE.REF_I12_AUTCTD_SUPPGRP2"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "REF_I12_PROVIDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "NK1": [{name: "NK1", maxReps: -1, required: false}],
        "GT1": [{name: "GT1", maxReps: -1, required: false}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "REF_I12_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "REF_I12_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "REF_I12_INSURANCE"}],
        "ACC": [{name: "ACC", maxReps: 1, required: false}],
        "DG1": [{name: "DG1", maxReps: -1, required: false}],
        "DRG": [{name: "DRG", maxReps: -1, required: false}],
        "AL1": [{name: "AL1", maxReps: -1, required: false}],
        "PR1": [{name: "PR1", maxReps: 1, required: false, segmentComponentName: "REF_I12_PROCEDURE"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "REF_I12_RESULTS.REF_I12_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "REF_I12_RESULTS"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "REF_I12_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "REF_I12_VISIT"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
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
        "REF_I12_AUTHORIZATION": {
            maxReps: 1,
            required: false,
            segments: {
                "AUT": {name: "AUT", maxReps: 1, required: true, segmentType: typeof AUT},
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD}
            }
        },
        "REF_I12_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "REF_I12_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "REF_I12_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "REF_I12_AUTCTD_SUPPGRP2": {name: "REF_I12_AUTCTD_SUPPGRP2", maxReps: 1, required: false, segmentType: typeof REF_I12_AUTCTD_SUPPGRP2}
            }
        },
        "REF_I12_RESULTS": {
            maxReps: -1,
            required: false,
            segments: {
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "REF_I12_OBSERVATION": {name: "REF_I12_OBSERVATION", maxReps: -1, required: false, segmentType: typeof REF_I12_OBSERVATION}
            }
        },
        "REF_I12_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "REF_I12_PROCEDURE.REF_I12_AUTCTD_SUPPGRP2": {
		   maxReps: 1,
		   required: false
		},
        "REF_I12_RESULTS.REF_I12_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type REF_I12 record {
    *hl7v2:Message;
    string name = REF_I12_MESSAGE_TYPE;
    MSH msh;
    RF1 rf1?;
    REF_I12_AUTHORIZATION[] authorization = [{aut:{}}];
    REF_I12_PROVIDER[] provider = [{prd:{}}];
    PID pid;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
    REF_I12_INSURANCE[] insurance = [{in1:{}}];
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    REF_I12_PROCEDURE[] procedure = [{pr1:{}}];
    REF_I12_RESULTS[] results = [{obr:{}}];
    REF_I12_VISIT[] visit = [{pv1:{}}];
    NTE[] nte = [];
};