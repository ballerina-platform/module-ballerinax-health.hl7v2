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
public const DFT_P03_MESSAGE_TYPE = "DFT_P03";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment
# + db1 - DB1 Segment
# + obx - OBX Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + gt1 - GT1 Segment
# + acc - ACC Segment
# + financial - DFT_P03_FINANCIAL Segment Group
# + insurance - DFT_P03_INSURANCE Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "EVN": [{name: "EVN", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PD1": [{name: "PD1", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false}],
        "PV2": [{name: "PV2", maxReps: 1, required: false}],
        "DB1": [{name: "DB1", maxReps: -1, required: false}],
        "OBX": [{name: "OBX", maxReps: -1, required: false}],
        "FT1": [{name: "FT1", maxReps: 1, required: false, segmentComponentName: "DFT_P03_FINANCIAL"}],
        "PR1": [{name: "PR1", maxReps: 1, required: false, segmentComponentName: "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE"}],
        "ROL": [{name: "ROL", maxReps: -1, required: false, segmentComponentName: "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false}],
        "DRG": [{name: "DRG", maxReps: 1, required: false}],
        "GT1": [{name: "GT1", maxReps: -1, required: false}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "DFT_P03_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "DFT_P03_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "DFT_P03_INSURANCE"}],
        "ACC": [{name: "ACC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC}
    }
    ,groups: {
        "DFT_P03_FINANCIAL": {
            maxReps: -1,
            required: true,
            segments: {
                "FT1": {name: "FT1", maxReps: 1, required: true, segmentType: typeof FT1},
                "DFT_P03_FINANCIAL_PROCEDURE": {name: "DFT_P03_FINANCIAL_PROCEDURE", maxReps: -1, required: false, segmentType: typeof DFT_P03_FINANCIAL_PROCEDURE}
            }
        },
        "DFT_P03_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type DFT_P03 record {
    *hl7v2:Message;
    string name = DFT_P03_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PD1 pd1?;
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    DFT_P03_FINANCIAL[] financial = [{ft1:{}}];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    DFT_P03_INSURANCE[] insurance = [{in1:{}}];
    ACC acc?;
};