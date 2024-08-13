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
public const ADT_A45_MESSAGE_TYPE = "ADT_A45";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + merge_info - ADT_A45_MERGE_INFO Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PD1": [{name: "PD1", maxReps: 1, required: false}],
        "MRG": [{name: "MRG", maxReps: 1, required: false, segmentComponentName: "ADT_A45_MERGE_INFO"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "ADT_A45_MERGE_INFO"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1}
    }
    ,groups: {
        "ADT_A45_MERGE_INFO": {
            maxReps: -1,
            required: true,
            segments: {
                "MRG": {name: "MRG", maxReps: 1, required: true, segmentType: typeof MRG},
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1}
            }
        }
    }
}
public type ADT_A45 record {
    *hl7v2:Message;
    string name = ADT_A45_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    ADT_A45_MERGE_INFO[] merge_info = [{mrg:{}, pv1:{}}];
};