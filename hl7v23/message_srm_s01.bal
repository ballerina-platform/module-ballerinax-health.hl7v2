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
public const SRM_S01_MESSAGE_TYPE = "SRM_S01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + arq - ARQ Segment
# + apr - APR Segment
# + nte - NTE Segment
# + patient - SRM_S01_PATIENT Segment Group
# + resources - SRM_S01_RESOURCES Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "ARQ": [{name: "ARQ", maxReps: 1, required: false}],
        "APR": [{name: "APR", maxReps: 1, required: false}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_GENERAL_RESOURCE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_SERVICE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_PERSONNEL_RESOURCE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_LOCATION_RESOURCE"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_GENERAL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_SERVICE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_PERSONNEL_RESOURCE"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_LOCATION_RESOURCE"}],
        "OBX": [{name: "OBX", maxReps: -1, required: false, segmentComponentName: "SRM_S01_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "SRM_S01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "SRM_S01_PATIENT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "SRM_S01_PATIENT"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false, segmentComponentName: "SRM_S01_PATIENT"}],
        "AIG": [{name: "AIG", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_GENERAL_RESOURCE"}],
        "AIS": [{name: "AIS", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_SERVICE"}],
        "AIP": [{name: "AIP", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_PERSONNEL_RESOURCE"}],
        "AIL": [{name: "AIL", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES.SRM_S01_LOCATION_RESOURCE"}],
        "RGS": [{name: "RGS", maxReps: 1, required: false, segmentComponentName: "SRM_S01_RESOURCES"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "ARQ": {name: "ARQ", maxReps: 1, required: true, segmentType: ARQ},
        "APR": {name: "APR", maxReps: 1, required: false, segmentType: APR},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "SRM_S01_PATIENT": {
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
        "SRM_S01_RESOURCES": {
            maxReps: -1,
            required: true,
            segments: {
                "RGS": {name: "RGS", maxReps: 1, required: true, segmentType: typeof RGS},
                "SRM_S01_SERVICE": {name: "SRM_S01_SERVICE", maxReps: -1, required: false, segmentType: typeof SRM_S01_SERVICE},
                "SRM_S01_GENERAL_RESOURCE": {name: "SRM_S01_GENERAL_RESOURCE", maxReps: -1, required: false, segmentType: typeof SRM_S01_GENERAL_RESOURCE},
                "SRM_S01_LOCATION_RESOURCE": {name: "SRM_S01_LOCATION_RESOURCE", maxReps: -1, required: false, segmentType: typeof SRM_S01_LOCATION_RESOURCE},
                "SRM_S01_PERSONNEL_RESOURCE": {name: "SRM_S01_PERSONNEL_RESOURCE", maxReps: -1, required: false, segmentType: typeof SRM_S01_PERSONNEL_RESOURCE}
            }
        },
        "SRM_S01_RESOURCES.SRM_S01_LOCATION_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SRM_S01_RESOURCES.SRM_S01_SERVICE": {
		   maxReps: -1,
		   required: false
		},
        "SRM_S01_RESOURCES.SRM_S01_PERSONNEL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SRM_S01_RESOURCES.SRM_S01_GENERAL_RESOURCE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type SRM_S01 record {
    *hl7v2:Message;
    string name = SRM_S01_MESSAGE_TYPE;
    MSH msh;
    ARQ arq;
    APR apr?;
    NTE[] nte = [];
    SRM_S01_PATIENT[] patient = [{pid:{}}];
    SRM_S01_RESOURCES[] resources = [{rgs:{}}];
};