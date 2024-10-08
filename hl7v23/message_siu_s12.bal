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
public const SIU_S12_MESSAGE_TYPE = "SIU_S12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sch - SCH Segment
# + nte - NTE Segment
# + patient - SIU_S12_PATIENT Segment Group
# + resources - SIU_S12_RESOURCES Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "SCH": [{name: "SCH", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_PERSONNEL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_SERVICE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_GENERAL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_LOCATION_RESOURCE"}],
        "OBX": [{name: "OBX", maxReps: -1, required: false, segmentComponentName: "SIU_S12_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "SIU_S12_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "SIU_S12_PATIENT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "SIU_S12_PATIENT"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false, segmentComponentName: "SIU_S12_PATIENT"}],
        "AIP": [{name: "AIP", maxReps: 1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_PERSONNEL_RESOURCE"}],
        "AIS": [{name: "AIS", maxReps: 1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_SERVICE"}],
        "AIG": [{name: "AIG", maxReps: 1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_GENERAL_RESOURCE"}],
        "RGS": [{name: "RGS", maxReps: 1, required: false, segmentComponentName: "SIU_S12_RESOURCES"}],
        "AIL": [{name: "AIL", maxReps: 1, required: false, segmentComponentName: "SIU_S12_RESOURCES.SIU_S12_LOCATION_RESOURCE"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: SCH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "SIU_S12_PATIENT": {
            maxReps: -1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1}
            }
        },
        "SIU_S12_RESOURCES": {
            maxReps: -1,
            required: true,
            segments: {
                "RGS": {name: "RGS", maxReps: 1, required: true, segmentType: typeof RGS},
                "SIU_S12_SERVICE": {name: "SIU_S12_SERVICE", maxReps: -1, required: false, segmentType: typeof SIU_S12_SERVICE},
                "SIU_S12_GENERAL_RESOURCE": {name: "SIU_S12_GENERAL_RESOURCE", maxReps: -1, required: false, segmentType: typeof SIU_S12_GENERAL_RESOURCE},
                "SIU_S12_LOCATION_RESOURCE": {name: "SIU_S12_LOCATION_RESOURCE", maxReps: -1, required: false, segmentType: typeof SIU_S12_LOCATION_RESOURCE},
                "SIU_S12_PERSONNEL_RESOURCE": {name: "SIU_S12_PERSONNEL_RESOURCE", maxReps: -1, required: false, segmentType: typeof SIU_S12_PERSONNEL_RESOURCE}
            }
        },
        "SIU_S12_RESOURCES.SIU_S12_GENERAL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SIU_S12_RESOURCES.SIU_S12_PERSONNEL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SIU_S12_RESOURCES.SIU_S12_LOCATION_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SIU_S12_RESOURCES.SIU_S12_SERVICE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type SIU_S12 record {
    *hl7v2:Message;
    string name = SIU_S12_MESSAGE_TYPE;
    MSH msh;
    SCH sch;
    NTE[] nte = [];
    SIU_S12_PATIENT[] patient = [{pid:{}}];
    SIU_S12_RESOURCES[] resources = [{rgs:{}}];
};