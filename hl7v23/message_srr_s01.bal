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
public const SRR_S01_MESSAGE_TYPE = "SRR_S01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + schedule - SRR_S01_SCHEDULE Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_PATIENT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_PATIENT"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_PATIENT"}],
        "AIS": [{name: "AIS", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_SERVICE"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_SERVICE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_GENERAL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_PERSONNEL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_LOCATION_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRR_S01_SCHEDULE"}],
        "AIG": [{name: "AIG", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_GENERAL_RESOURCE"}],
        "AIP": [{name: "AIP", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_PERSONNEL_RESOURCE"}],
        "AIL": [{name: "AIL", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_LOCATION_RESOURCE"}],
        "RGS": [{name: "RGS", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE.SRR_S01_RESOURCES"}],
        "SCH": [{name: "SCH", maxReps: 1, required: false, segmentComponentName: "SRR_S01_SCHEDULE"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR}
    }
    ,groups: {
        "SRR_S01_SCHEDULE": {
            maxReps: 1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "SRR_S01_PATIENT": {name: "SRR_S01_PATIENT", maxReps: -1, required: false, segmentType: typeof SRR_S01_PATIENT},
                "SRR_S01_RESOURCES": {name: "SRR_S01_RESOURCES", maxReps: -1, required: true, segmentType: typeof SRR_S01_RESOURCES}
            }
        },
        "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_PERSONNEL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SRR_S01_SCHEDULE.SRR_S01_RESOURCES": {
		   maxReps: -1,
		   required: false
		},
        "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_LOCATION_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_SERVICE": {
		   maxReps: -1,
		   required: false
		},
        "SRR_S01_SCHEDULE.SRR_S01_RESOURCES.SRR_S01_GENERAL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SRR_S01_SCHEDULE.SRR_S01_PATIENT": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type SRR_S01 record {
    *hl7v2:Message;
    string name = SRR_S01_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    SRR_S01_SCHEDULE[] schedule = [{sch:{}}];
};