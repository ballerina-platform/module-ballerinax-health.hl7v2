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
public const RPL_I02_MESSAGE_TYPE = "RPL_I02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + nte - NTE Segment
# + dsp - DSP Segment
# + dsc - DSC Segment
# + provider - RPL_I02_PROVIDER Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "CTD": [{name: "CTD", maxReps: -1, required: false, segmentComponentName: "RPL_I02_PROVIDER"}],
        "PRD": [{name: "PRD", maxReps: 1, required: false, segmentComponentName: "RPL_I02_PROVIDER"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}],
        "DSP": [{name: "DSP", maxReps: -1, required: false}],
        "DSC": [{name: "DSC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE},
        "DSP": {name: "DSP", maxReps: -1, required: false, segmentType: DSP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "RPL_I02_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        }
    }
}
public type RPL_I02 record {
    *hl7v2:Message;
    string name = RPL_I02_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    RPL_I02_PROVIDER[] provider = [{prd:{}}];
    NTE[] nte = [];
    DSP[] dsp = [];
    DSC dsc?;
};