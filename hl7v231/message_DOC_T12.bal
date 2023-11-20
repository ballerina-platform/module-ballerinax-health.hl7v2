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
public const DOC_T12_MESSAGE_TYPE = "DOC_T12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qrd - QRD Segment
# + dsc - DSC Segment
# + result - DOC_T12_RESULT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "DOC_T12_RESULT": {
            maxReps: -1,
            required: true,
            segments: {
                "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: typeof EVN},
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "TXA": {name: "TXA", maxReps: 1, required: true, segmentType: typeof TXA},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        }
    }
}
public type DOC_T12 record {
    *hl7v2:Message;
    string name = DOC_T12_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QAK qak?;
    QRD qrd;
    DSC dsc?;
    DOC_T12_RESULT[] result = [{pid:{}, pv1:{}, txa:{}}];
};