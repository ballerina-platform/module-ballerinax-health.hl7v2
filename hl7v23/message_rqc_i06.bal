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
public const RQC_I06_MESSAGE_TYPE = "RQC_I06";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + pid - PID Segment
# + nk1 - NK1 Segment
# + gt1 - GT1 Segment
# + nte - NTE Segment
# + provider - RQC_I06_PROVIDER Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "QRF": [{name: "QRF", maxReps: 1, required: false}],
        "CTD": [{name: "CTD", maxReps: -1, required: false, segmentComponentName: "RQC_I06_PROVIDER"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "RQC_I06_PROVIDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "NK1": [{name: "NK1", maxReps: -1, required: false}],
        "GT1": [{name: "GT1", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: GT1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RQC_I06_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        }
    }
}
public type RQC_I06 record {
    *hl7v2:Message;
    string name = RQC_I06_MESSAGE_TYPE;
    MSH msh;
    QRD qrd;
    QRF qrf?;
    RQC_I06_PROVIDER[] provider = [{prd:{}}];
    PID pid;
    NK1[] nk1 = [];
    GT1 gt1?;
    NTE[] nte = [];
};