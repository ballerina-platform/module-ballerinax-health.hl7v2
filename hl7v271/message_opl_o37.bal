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
public const OPL_O37_MESSAGE_TYPE = "OPL_O37";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + prt - PRT Segment
# + guarantor - OPL_O37_GUARANTOR Segment Group
# + order - OPL_O37_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE},
        "PRT": {name: "PRT", maxReps: -1, required: true, segmentType: PRT}
    }
    ,groups: {
        "OPL_O37_GUARANTOR": {
            maxReps: 1,
            required: false,
            segments: {
                "GT1": {name: "GT1", maxReps: 1, required: true, segmentType: typeof GT1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        },
        "OPL_O37_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "NK1": {name: "NK1", maxReps: -1, required: true, segmentType: typeof NK1},
                "OPL_O37_PATIENT": {name: "OPL_O37_PATIENT", maxReps: 1, required: false, segmentType: typeof OPL_O37_PATIENT},
                "OPL_O37_SPECIMEN": {name: "OPL_O37_SPECIMEN", maxReps: -1, required: true, segmentType: typeof OPL_O37_SPECIMEN},
                "OPL_O37_PRIOR_RESULT": {name: "OPL_O37_PRIOR_RESULT", maxReps: 1, required: false, segmentType: typeof OPL_O37_PRIOR_RESULT},
                "FT1": {name: "FT1", maxReps: -1, required: false, segmentType: typeof FT1},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        }
    }
}
public type OPL_O37 record {
    *hl7v2:Message;
    string name = OPL_O37_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    PRT[] prt = [];
    OPL_O37_GUARANTOR[] guarantor = [{gt1:{}}];
    OPL_O37_ORDER[] 'order = [{}];
};