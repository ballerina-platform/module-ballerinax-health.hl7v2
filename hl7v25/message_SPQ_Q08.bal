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
public const SPQ_Q08_MESSAGE_TYPE = "SPQ_Q08";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + spr - Message Record Field
# + rdf - Message Record Field
# + dsc - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "SPR": {name: "SPR", maxReps: 1, required: false, segmentType: SPR},
        "RDF": {name: "RDF", maxReps: 1, required: false, segmentType: RDF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type SPQ_Q08 record {
    *hl7v2:Message;
    string name = SPQ_Q08_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    SPR spr?;
    RDF rdf?;
    DSC dsc?;
};