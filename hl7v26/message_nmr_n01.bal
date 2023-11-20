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
public const NMR_N01_MESSAGE_TYPE = "NMR_N01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qrd - QRD Segment
# + clock_and_stats_with_notes_alt - NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: false, segmentType: QRD}
    }
    ,groups: {
        "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT": {
            maxReps: -1,
            required: true,
            segments: {
                "NMR_N01_CLOCK": {name: "NMR_N01_CLOCK", maxReps: 1, required: false, segmentType: typeof NMR_N01_CLOCK},
                "NMR_N01_APP_STATS": {name: "NMR_N01_APP_STATS", maxReps: 1, required: false, segmentType: typeof NMR_N01_APP_STATS},
                "NMR_N01_APP_STATUS": {name: "NMR_N01_APP_STATUS", maxReps: 1, required: false, segmentType: typeof NMR_N01_APP_STATUS}
            }
        }
    }
}
public type NMR_N01 record {
    *hl7v2:Message;
    string name = NMR_N01_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    QRD qrd?;
    NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT[] clock_and_stats_with_notes_alt = [{}];
};