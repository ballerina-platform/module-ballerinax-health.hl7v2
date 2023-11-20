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
public const MDM_T02_MESSAGE_TYPE = "MDM_T02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pv1 - PV1 Segment
# + txa - TXA Segment
# + obx - OBX Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "TXA": {name: "TXA", maxReps: 1, required: true, segmentType: TXA},
        "OBX": {name: "OBX", maxReps: -1, required: true, segmentType: OBX}
    }
}
public type MDM_T02 record {
    *hl7v2:Message;
    string name = MDM_T02_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PV1 pv1;
    TXA txa;
    OBX[] obx = [];
};