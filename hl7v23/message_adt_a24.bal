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
public const ADT_A24_MESSAGE_TYPE = "ADT_A24";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + pv1 - PV1 Segment
# + db1 - DB1 Segment
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PD1": [{name: "PD1", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false}],
        "DB1": [{name: "DB1", maxReps: -1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1}
    }
}
public type ADT_A24 record {
    *hl7v2:Message;
    string name = ADT_A24_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    PV1 pv1?;
    DB1[] db1 = [];
};