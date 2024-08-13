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
public const PIN_I07_MESSAGE_TYPE = "PIN_I07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + pid - PID Segment
# + nk1 - NK1 Segment
# + nte - NTE Segment
# + provider - PIN_I07_PROVIDER Segment Group
# + guarantor_insurance - PIN_I07_GUARANTOR_INSURANCE Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "CTD": [{name: "CTD", maxReps: -1, required: false, segmentComponentName: "PIN_I07_PROVIDER"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "PIN_I07_PROVIDER"}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "NK1": [{name: "NK1", maxReps: -1, required: false}],
        "GT1": [{name: "GT1", maxReps: -1, required: false, segmentComponentName: "PIN_I07_GUARANTOR_INSURANCE"}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "PIN_I07_GUARANTOR_INSURANCE.PIN_I07_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "PIN_I07_GUARANTOR_INSURANCE.PIN_I07_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "PIN_I07_GUARANTOR_INSURANCE.PIN_I07_INSURANCE"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "PIN_I07_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "PIN_I07_GUARANTOR_INSURANCE": {
            maxReps: 1,
            required: false,
            segments: {
                "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: typeof GT1},
                "PIN_I07_INSURANCE": {name: "PIN_I07_INSURANCE", maxReps: -1, required: true, segmentType: typeof PIN_I07_INSURANCE}
            }
        },
        "PIN_I07_GUARANTOR_INSURANCE.PIN_I07_INSURANCE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PIN_I07 record {
    *hl7v2:Message;
    string name = PIN_I07_MESSAGE_TYPE;
    MSH msh;
    PIN_I07_PROVIDER[] provider = [{prd:{}}];
    PID pid;
    NK1[] nk1 = [];
    PIN_I07_GUARANTOR_INSURANCE[] guarantor_insurance = [{}];
    NTE[] nte = [];
};