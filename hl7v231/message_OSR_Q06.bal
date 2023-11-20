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
public const OSR_Q06_MESSAGE_TYPE = "OSR_Q06";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + nte - NTE Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + dsc - DSC Segment
# + response - OSR_Q06_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "OSR_Q06_RESPONSE": {
            maxReps: 1,
            required: false,
            segments: {
                "OSR_Q06_PATIENT": {name: "OSR_Q06_PATIENT", maxReps: 1, required: false, segmentType: typeof OSR_Q06_PATIENT},
                "OSR_Q06_OBSERVATION": {name: "OSR_Q06_OBSERVATION", maxReps: -1, required: true, segmentType: typeof OSR_Q06_OBSERVATION}
            }
        }
    }
}
public type OSR_Q06 record {
    *hl7v2:Message;
    string name = OSR_Q06_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    NTE[] nte = [];
    QRD qrd;
    QRF qrf?;
    DSC dsc?;
    OSR_Q06_RESPONSE[] response = [{}];
};