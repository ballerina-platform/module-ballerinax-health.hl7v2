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
public const RCI_I05_MESSAGE_TYPE = "RCI_I05";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + pid - PID Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + al1 - AL1 Segment
# + nte - NTE Segment
# + provider - RCI_I05_PROVIDER Segment Group
# + observation - RCI_I05_OBSERVATION Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "QRF": [{name: "QRF", maxReps: 1, required: false}],
        "CTD": [{name: "CTD", maxReps: -1, required: false, segmentComponentName: "RCI_I05_PROVIDER"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "RCI_I05_PROVIDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "DG1": [{name: "DG1", maxReps: -1, required: false}],
        "DRG": [{name: "DRG", maxReps: -1, required: false}],
        "AL1": [{name: "AL1", maxReps: -1, required: false}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "RCI_I05_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "RCI_I05_OBSERVATION.RCI_I05_RESULTS"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: -1, required: false, segmentType: DRG},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RCI_I05_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "RCI_I05_OBSERVATION": {
            maxReps: -1,
            required: false,
            segments: {
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "RCI_I05_RESULTS": {name: "RCI_I05_RESULTS", maxReps: -1, required: false, segmentType: typeof RCI_I05_RESULTS}
            }
        },
        "RCI_I05_OBSERVATION.RCI_I05_RESULTS": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type RCI_I05 record {
    *hl7v2:Message;
    string name = RCI_I05_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    QRD qrd;
    QRF qrf?;
    RCI_I05_PROVIDER[] provider = [{prd:{}}];
    PID pid;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    RCI_I05_OBSERVATION[] observation = [{obr:{}}];
    NTE[] nte = [];
};