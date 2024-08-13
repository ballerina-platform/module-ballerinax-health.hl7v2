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
public const BAR_P01_MESSAGE_TYPE = "BAR_P01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + visit - BAR_P01_VISIT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PD1": [{name: "PD1", maxReps: 1, required: false}],
        "ACC": [{name: "ACC", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "OBX": [{name: "OBX", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "UB2": [{name: "UB2", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "GT1": [{name: "GT1", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "UB1": [{name: "UB1", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "AL1": [{name: "AL1", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT.BAR_P01_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT.BAR_P01_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT.BAR_P01_INSURANCE"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "DB1": [{name: "DB1", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "NK1": [{name: "NK1", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "DRG": [{name: "DRG", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT"}],
        "PR1": [{name: "PR1", maxReps: 1, required: false, segmentComponentName: "BAR_P01_VISIT.BAR_P01_PROCEDURE"}],
        "ROL": [{name: "ROL", maxReps: -1, required: false, segmentComponentName: "BAR_P01_VISIT.BAR_P01_PROCEDURE"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1}
    }
    ,groups: {
        "BAR_P01_VISIT": {
            maxReps: -1,
            required: true,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: typeof DB1},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: typeof DRG},
                "BAR_P01_PROCEDURE": {name: "BAR_P01_PROCEDURE", maxReps: -1, required: false, segmentType: typeof BAR_P01_PROCEDURE},
                "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: typeof GT1},
                "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: typeof NK1},
                "BAR_P01_INSURANCE": {name: "BAR_P01_INSURANCE", maxReps: -1, required: false, segmentType: typeof BAR_P01_INSURANCE},
                "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: typeof ACC},
                "UB1": {name: "UB1", maxReps: 1, required: false, segmentType: typeof UB1},
                "UB2": {name: "UB2", maxReps: 1, required: false, segmentType: typeof UB2}
            }
        }, 
        "BAR_P01_VISIT.BAR_P01_PROCEDURE": {
		   maxReps: -1,
		   required: false
		},
        "BAR_P01_VISIT.BAR_P01_INSURANCE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type BAR_P01 record {
    *hl7v2:Message;
    string name = BAR_P01_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    BAR_P01_VISIT[] visit = [{}];
};