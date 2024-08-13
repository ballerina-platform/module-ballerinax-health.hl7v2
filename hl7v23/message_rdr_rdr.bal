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
public const RDR_RDR_MESSAGE_TYPE = "RDR_RDR";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + dsc - DSC Segment
# + definition - RDR_RDR_DEFINITION Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_PATIENT"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_PATIENT"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER"}],
        "RXC": [{name: "RXC", maxReps: -1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_ENCODING"}, {name: "RXC", maxReps: -1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_DISPENSE"}],
        "RXR": [{name: "RXR", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_ENCODING"}, {name: "RXR", maxReps: -1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_DISPENSE"}],
        "RXE": [{name: "RXE", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_ENCODING"}],
        "RXD": [{name: "RXD", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_DISPENSE"}],
        "QRF": [{name: "QRF", maxReps: 1, required: false, segmentComponentName: "RDR_RDR_DEFINITION"}],
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
        "RDR_RDR_DEFINITION": {
            maxReps: -1,
            required: true,
            segments: {
                "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: typeof QRD},
                "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: typeof QRF},
                "RDR_RDR_PATIENT": {name: "RDR_RDR_PATIENT", maxReps: 1, required: false, segmentType: typeof RDR_RDR_PATIENT},
                "RDR_RDR_ORDER": {name: "RDR_RDR_ORDER", maxReps: -1, required: true, segmentType: typeof RDR_RDR_ORDER}
            }
        },
        "RDR_RDR_DEFINITION.RDR_RDR_PATIENT": {
		   maxReps: 1,
		   required: false
		},
        "RDR_RDR_DEFINITION.RDR_RDR_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_ENCODING": {
		   maxReps: 1,
		   required: false
		},
        "RDR_RDR_DEFINITION.RDR_RDR_ORDER.RDR_RDR_DISPENSE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type RDR_RDR record {
    *hl7v2:Message;
    string name = RDR_RDR_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    RDR_RDR_DEFINITION[] definition = [{qrd:{}}];
    DSC dsc?;
};