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
public const VQQ_Q07_MESSAGE_TYPE = "VQQ_Q07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + vtq - Message Record Field
# + rdf - Message Record Field
# + dsc - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "VTQ": {name: "VTQ", maxReps: 1, required: false, segmentType: VTQ},
        "RDF": {name: "RDF", maxReps: 1, required: false, segmentType: RDF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type VQQ_Q07 record {
    *hl7v2:Message;
    string name = VQQ_Q07_MESSAGE_TYPE;
    MSH msh?;
    VTQ vtq?;
    RDF rdf?;
    DSC dsc?;
};