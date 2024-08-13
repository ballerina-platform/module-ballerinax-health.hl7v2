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
public const RRI_I12_MESSAGE_TYPE = "RRI_I12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + rf1 - RF1 Segment
# + pid - PID Segment
# + acc - ACC Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + al1 - AL1 Segment
# + nte - NTE Segment
# + authorization - RRI_I12_AUTHORIZATION Segment Group
# + provider - RRI_I12_PROVIDER Segment Group
# + procedure - RRI_I12_PROCEDURE Segment Group
# + results - RRI_I12_RESULTS Segment Group
# + visit - RRI_I12_VISIT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "RF1": [{name: "RF1", maxReps: 1, required: false}],
        "AUT": [{name: "AUT", maxReps: 1, required: false, segmentComponentName: "RRI_I12_AUTHORIZATION"}, {name: "AUT", maxReps: 1, required: false, segmentComponentName: "RRI_I12_PROCEDURE.RRI_I12_AUTCTD_SUPPGRP2"}],
        "CTD": [{name: "CTD", maxReps: 1, required: false, segmentComponentName: "RRI_I12_AUTHORIZATION"}, {name: "CTD", maxReps: -1, required: false, segmentComponentName: "RRI_I12_PROVIDER"}, {name: "CTD", maxReps: 1, required: false, segmentComponentName: "RRI_I12_PROCEDURE.RRI_I12_AUTCTD_SUPPGRP2"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "RRI_I12_PROVIDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "ACC": [{name: "ACC", maxReps: 1, required: false}],
        "DG1": [{name: "DG1", maxReps: -1, required: false}],
        "DRG": [{name: "DRG", maxReps: -1, required: false}],
        "AL1": [{name: "AL1", maxReps: -1, required: false}],
        "PR1": [{name: "PR1", maxReps: 1, required: false, segmentComponentName: "RRI_I12_PROCEDURE"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "RRI_I12_RESULTS.RRI_I12_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "RRI_I12_RESULTS"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "RRI_I12_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "RRI_I12_VISIT"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "RF1": {name: "RF1", maxReps: 1, required: false, segmentType: RF1},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: -1, required: false, segmentType: DRG},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RRI_I12_AUTHORIZATION": {
            maxReps: 1,
            required: false,
            segments: {
                "AUT": {name: "AUT", maxReps: 1, required: true, segmentType: typeof AUT},
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD}
            }
        },
        "RRI_I12_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "RRI_I12_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "RRI_I12_AUTCTD_SUPPGRP2": {name: "RRI_I12_AUTCTD_SUPPGRP2", maxReps: 1, required: false, segmentType: typeof RRI_I12_AUTCTD_SUPPGRP2}
            }
        },
        "RRI_I12_RESULTS": {
            maxReps: -1,
            required: false,
            segments: {
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "RRI_I12_OBSERVATION": {name: "RRI_I12_OBSERVATION", maxReps: -1, required: false, segmentType: typeof RRI_I12_OBSERVATION}
            }
        },
        "RRI_I12_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "RRI_I12_PROCEDURE.RRI_I12_AUTCTD_SUPPGRP2": {
		   maxReps: 1,
		   required: false
		},
        "RRI_I12_RESULTS.RRI_I12_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type RRI_I12 record {
    *hl7v2:Message;
    string name = RRI_I12_MESSAGE_TYPE;
    MSH msh;
    MSA msa?;
    RF1 rf1?;
    RRI_I12_AUTHORIZATION[] authorization = [{aut:{}}];
    RRI_I12_PROVIDER[] provider = [{prd:{}}];
    PID pid;
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    RRI_I12_PROCEDURE[] procedure = [{pr1:{}}];
    RRI_I12_RESULTS[] results = [{obr:{}}];
    RRI_I12_VISIT[] visit = [{pv1:{}}];
    NTE[] nte = [];
};