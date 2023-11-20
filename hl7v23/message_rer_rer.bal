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
public const RER_RER_MESSAGE_TYPE = "RER_RER";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + dsc - DSC Segment
# + definition - RER_RER_DEFINITION Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "RER_RER_DEFINITION": {
            maxReps: -1,
            required: true,
            segments: {
                "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: typeof QRD},
                "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: typeof QRF},
                "RER_RER_PATIENT": {name: "RER_RER_PATIENT", maxReps: 1, required: false, segmentType: typeof RER_RER_PATIENT},
                "RER_RER_ORDER": {name: "RER_RER_ORDER", maxReps: -1, required: true, segmentType: typeof RER_RER_ORDER}
            }
        }
    }
}
public type RER_RER record {
    *hl7v2:Message;
    string name = RER_RER_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    DSC dsc?;
    RER_RER_DEFINITION[] definition = [{qrd:{}}];
};