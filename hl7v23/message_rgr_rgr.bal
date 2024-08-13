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
public const RGR_RGR_MESSAGE_TYPE = "RGR_RGR";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + dsc - DSC Segment
# + definition - RGR_RGR_DEFINITION Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "RXG": [{name: "RXG", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER"}],
        "RXC": [{name: "RXC", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER"}, {name: "RXC", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER.RGR_RGR_ENCODING"}],
        "RXR": [{name: "RXR", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER"}, {name: "RXR", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER.RGR_RGR_ENCODING"}],
        "RXE": [{name: "RXE", maxReps: 1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_ORDER.RGR_RGR_ENCODING"}],
        "QRD": [{name: "QRD", maxReps: 1, required: false, segmentComponentName: "RGR_RGR_DEFINITION"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_PATIENT"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "RGR_RGR_DEFINITION.RGR_RGR_PATIENT"}],
        "QRF": [{name: "QRF", maxReps: 1, required: false, segmentComponentName: "RGR_RGR_DEFINITION"}],
        "DSC": [{name: "DSC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "RGR_RGR_DEFINITION": {
            maxReps: -1,
            required: true,
            segments: {
                "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: typeof QRD},
                "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: typeof QRF},
                "RGR_RGR_PATIENT": {name: "RGR_RGR_PATIENT", maxReps: 1, required: false, segmentType: typeof RGR_RGR_PATIENT},
                "RGR_RGR_ORDER": {name: "RGR_RGR_ORDER", maxReps: -1, required: true, segmentType: typeof RGR_RGR_ORDER}
            }
        },
        "RGR_RGR_DEFINITION.RGR_RGR_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "RGR_RGR_DEFINITION.RGR_RGR_ORDER.RGR_RGR_ENCODING": {
		   maxReps: 1,
		   required: false
		},
        "RGR_RGR_DEFINITION.RGR_RGR_PATIENT": {
		   maxReps: 1,
		   required: false
		}
    }
}
public type RGR_RGR record {
    *hl7v2:Message;
    string name = RGR_RGR_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    RGR_RGR_DEFINITION[] definition = [{qrd:{}}];
    DSC dsc?;
};