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
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + rol - ROL Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment
# + db1 - DB1 Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + gt1 - GT1 Segment
# + acc - ACC Segment
# + common_order - DFT_P11_COMMON_ORDER Segment Group
# + insurance - DFT_P11_INSURANCE Segment Group
# + financial - DFT_P11_FINANCIAL Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
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
    ,groups: {
        "DFT_P11_COMMON_ORDER": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: false, segmentType: typeof ORC},
                "DFT_P11_ORDER": {name: "DFT_P11_ORDER", maxReps: 1, required: false, segmentType: typeof DFT_P11_ORDER},
                "DFT_P11_OBSERVATION": {name: "DFT_P11_OBSERVATION", maxReps: -1, required: false, segmentType: typeof DFT_P11_OBSERVATION}
            }
        },
        "DFT_P11_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: -1, required: false, segmentType: typeof IN3},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        },
        "DFT_P11_FINANCIAL": {
            maxReps: -1,
            required: true,
            segments: {
                "FT1": {name: "FT1", maxReps: 1, required: true, segmentType: typeof FT1},
                "DFT_P11_FINANCIAL_PROCEDURE": {name: "DFT_P11_FINANCIAL_PROCEDURE", maxReps: -1, required: false, segmentType: typeof DFT_P11_FINANCIAL_PROCEDURE},
                "DFT_P11_FINANCIAL_COMMON_ORDER": {name: "DFT_P11_FINANCIAL_COMMON_ORDER", maxReps: -1, required: false, segmentType: typeof DFT_P11_FINANCIAL_COMMON_ORDER},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: typeof DRG},
                "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: typeof GT1},
                "DFT_P11_FINANCIAL_INSURANCE": {name: "DFT_P11_FINANCIAL_INSURANCE", maxReps: -1, required: false, segmentType: typeof DFT_P11_FINANCIAL_INSURANCE}
            }
        }
    }
}
public type DFT_P11 record {
    *hl7v2:Message;
    string name = DFT_P11_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    DFT_P11_COMMON_ORDER[] common_order = [{}];
    DFT_P11_INSURANCE[] insurance = [{in1:{}}];
    DFT_P11_FINANCIAL[] financial = [{ft1:{}}];
};