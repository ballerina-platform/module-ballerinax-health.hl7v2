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
public const BAR_P02_MESSAGE_TYPE = "BAR_P02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + patient - BAR_P02_PATIENT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "DB1": [{name: "DB1", maxReps: -1, required: false, segmentComponentName: "BAR_P02_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "BAR_P02_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "BAR_P02_PATIENT"}],
        "PD1": [{name: "PD1", maxReps: 1, required: false, segmentComponentName: "BAR_P02_PATIENT"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN}
    }
    ,groups: {
        "BAR_P02_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: typeof DB1}
            }
        }
    }
}
public type BAR_P02 record {
    *hl7v2:Message;
    string name = BAR_P02_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    BAR_P02_PATIENT[] patient = [{pid:{}}];
};