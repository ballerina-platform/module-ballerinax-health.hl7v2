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
public const BAR_P10_MESSAGE_TYPE = "BAR_P10";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pv1 - PV1 Segment
# + dg1 - DG1 Segment
# + gp1 - GP1 Segment
# + procedure - BAR_P10_PROCEDURE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "GP1": {name: "GP1", maxReps: 1, required: true, segmentType: GP1}
    }
    ,groups: {
        "BAR_P10_PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: true, segmentType: typeof PR1},
                "GP2": {name: "GP2", maxReps: 1, required: false, segmentType: typeof GP2}
            }
        }
    }
}
public type BAR_P10 record {
    *hl7v2:Message;
    string name = BAR_P10_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PV1 pv1;
    DG1[] dg1 = [];
    GP1 gp1;
    BAR_P10_PROCEDURE[] procedure = [{pr1:{}}];
};