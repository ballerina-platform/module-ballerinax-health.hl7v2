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
public const ROR_ROR_MESSAGE_TYPE = "ROR_ROR";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + dsc - DSC Segment
# + definition - ROR_ROR_DEFINITION Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false, segmentComponentName: "ROR_ROR_DEFINITION"}],
        "QRF": [{name: "QRF", maxReps: 1, required: false, segmentComponentName: "ROR_ROR_DEFINITION"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_ORDER"}],
        "RXO": [{name: "RXO", maxReps: 1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_ORDER"}],
        "RXC": [{name: "RXC", maxReps: -1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_ORDER"}],
        "RXR": [{name: "RXR", maxReps: -1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_ORDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_PATIENT"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "ROR_ROR_DEFINITION.ROR_ROR_PATIENT"}],
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
        "ROR_ROR_DEFINITION": {
            maxReps: -1,
            required: true,
            segments: {
                "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: typeof QRD},
                "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: typeof QRF},
                "ROR_ROR_PATIENT": {name: "ROR_ROR_PATIENT", maxReps: 1, required: false, segmentType: typeof ROR_ROR_PATIENT},
                "ROR_ROR_ORDER": {name: "ROR_ROR_ORDER", maxReps: -1, required: true, segmentType: typeof ROR_ROR_ORDER}
            }
        },
        "ROR_ROR_DEFINITION.ROR_ROR_PATIENT": {
		   maxReps: 1,
		   required: false
		},
        "ROR_ROR_DEFINITION.ROR_ROR_ORDER": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type ROR_ROR record {
    *hl7v2:Message;
    string name = ROR_ROR_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    ROR_ROR_DEFINITION[] definition = [{qrd:{}}];
    DSC dsc?;
};