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
public const UDM_Q05_MESSAGE_TYPE = "UDM_Q05";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + urd - URD Segment
# + urs - URS Segment
# + dsp - DSP Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "URD": {name: "URD", maxReps: 1, required: true, segmentType: URD},
        "URS": {name: "URS", maxReps: 1, required: false, segmentType: URS},
        "DSP": {name: "DSP", maxReps: -1, required: true, segmentType: DSP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type UDM_Q05 record {
    *hl7v2:Message;
    string name = UDM_Q05_MESSAGE_TYPE;
    MSH msh;
    URD urd;
    URS urs?;
    DSP[] dsp = [];
    DSC dsc?;
};