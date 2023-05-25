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
public const DFT_P11_MESSAGE_TYPE = "DFT_P11";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + evn - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + rol - Message Record Field
# + pv1 - Message Record Field
# + pv2 - Message Record Field
# + db1 - Message Record Field
# + dg1 - Message Record Field
# + drg - Message Record Field
# + gt1 - Message Record Field
# + acc - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: ROL},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC}
    }
}
public type DFT_P11 record {
    *hl7v2:Message;
    string name = DFT_P11_MESSAGE_TYPE;
    MSH msh?;
    EVN evn?;
    PID pid?;
    PD1 pd1?;
    ROL[] rol = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
};