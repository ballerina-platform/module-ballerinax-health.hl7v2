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
public const BAR_P05_MESSAGE_TYPE = "BAR_P05";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + rol - ROL Segment
# + visit - BAR_P05_VISIT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: ROL}
    }
    ,groups: {
        "BAR_P05_VISIT": {
            maxReps: -1,
            required: true,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL},
                "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: typeof DB1},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: typeof DRG},
                "BAR_P05_PROCEDURE": {name: "BAR_P05_PROCEDURE", maxReps: -1, required: false, segmentType: typeof BAR_P05_PROCEDURE},
                "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: typeof GT1},
                "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: typeof NK1},
                "BAR_P05_INSURANCE": {name: "BAR_P05_INSURANCE", maxReps: -1, required: false, segmentType: typeof BAR_P05_INSURANCE},
                "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: typeof ACC},
                "UB1": {name: "UB1", maxReps: 1, required: false, segmentType: typeof UB1},
                "UB2": {name: "UB2", maxReps: 1, required: false, segmentType: typeof UB2},
                "ABS": {name: "ABS", maxReps: 1, required: false, segmentType: typeof ABS},
                "BLC": {name: "BLC", maxReps: -1, required: false, segmentType: typeof BLC},
                "RMI": {name: "RMI", maxReps: 1, required: false, segmentType: typeof RMI}
            }
        }
    }
}
public type BAR_P05 record {
    *hl7v2:Message;
    string name = BAR_P05_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    BAR_P05_VISIT[] visit = [{}];
};