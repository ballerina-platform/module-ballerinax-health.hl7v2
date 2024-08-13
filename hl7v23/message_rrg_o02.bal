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
public const RRG_O02_MESSAGE_TYPE = "RRG_O02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + nte - NTE Segment
# + response - RRG_O02_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_PATIENT"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_ORDER"}],
        "RXG": [{name: "RXG", maxReps: 1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_ORDER.RRG_O02_GIVE"}],
        "RXC": [{name: "RXC", maxReps: -1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_ORDER.RRG_O02_GIVE"}],
        "RXR": [{name: "RXR", maxReps: -1, required: false, segmentComponentName: "RRG_O02_RESPONSE.RRG_O02_ORDER.RRG_O02_GIVE"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RRG_O02_RESPONSE": {
            maxReps: 1,
            required: false,
            segments: {
                "RRG_O02_PATIENT": {name: "RRG_O02_PATIENT", maxReps: 1, required: false, segmentType: typeof RRG_O02_PATIENT},
                "RRG_O02_ORDER": {name: "RRG_O02_ORDER", maxReps: -1, required: true, segmentType: typeof RRG_O02_ORDER}
            }
        },
        "RRG_O02_RESPONSE.RRG_O02_PATIENT": {
		   maxReps: 1,
		   required: false
		},
        "RRG_O02_RESPONSE.RRG_O02_ORDER.RRG_O02_GIVE": {
		   maxReps: 1,
		   required: false
		},
        "RRG_O02_RESPONSE.RRG_O02_ORDER": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type RRG_O02 record {
    *hl7v2:Message;
    string name = RRG_O02_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    NTE[] nte = [];
    RRG_O02_RESPONSE[] response = [{}];
};