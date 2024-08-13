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
public const SQM_S25_MESSAGE_TYPE = "SQM_S25";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + dsc - DSC Segment
# + request - SQM_S25_REQUEST Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "QRF": [{name: "QRF", maxReps: 1, required: false}],
        "ARQ": [{name: "ARQ", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST"}],
        "APR": [{name: "APR", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE"}, {name: "APR", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE"}],
        "AIL": [{name: "AIL", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE"}],
        "AIG": [{name: "AIG", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE"}],
        "AIS": [{name: "AIS", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE"}],
        "RGS": [{name: "RGS", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES"}],
        "AIP": [{name: "AIP", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "SQM_S25_REQUEST"}],
        "DSC": [{name: "DSC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "SQM_S25_REQUEST": {
            maxReps: 1,
            required: false,
            segments: {
                "ARQ": {name: "ARQ", maxReps: 1, required: true, segmentType: typeof ARQ},
                "APR": {name: "APR", maxReps: 1, required: false, segmentType: typeof APR},
                "PID": {name: "PID", maxReps: 1, required: false, segmentType: typeof PID},
                "SQM_S25_RESOURCES": {name: "SQM_S25_RESOURCES", maxReps: -1, required: true, segmentType: typeof SQM_S25_RESOURCES}
            }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES": {
		   maxReps: -1,
		   required: false
		},
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE": {
		   maxReps: -1,
		   required: false
		},
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE": {
		   maxReps: -1,
		   required: false
		},
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type SQM_S25 record {
    *hl7v2:Message;
    string name = SQM_S25_MESSAGE_TYPE;
    MSH msh;
    QRD qrd;
    QRF qrf?;
    SQM_S25_REQUEST[] request = [{arq:{}}];
    DSC dsc?;
};