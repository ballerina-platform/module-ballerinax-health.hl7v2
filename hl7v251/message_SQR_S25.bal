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
public const SQR_S25_MESSAGE_TYPE = "SQR_S25";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + dsc - DSC Segment
# + schedule - SQR_S25_SCHEDULE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: true, segmentType: QAK},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "SQR_S25_SCHEDULE": {
            maxReps: -1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "TQ1": {name: "TQ1", maxReps: -1, required: false, segmentType: typeof TQ1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "SQR_S25_PATIENT": {name: "SQR_S25_PATIENT", maxReps: 1, required: false, segmentType: typeof SQR_S25_PATIENT},
                "SQR_S25_RESOURCES": {name: "SQR_S25_RESOURCES", maxReps: -1, required: true, segmentType: typeof SQR_S25_RESOURCES}
            }
        }
    }
}
public type SQR_S25 record {
    *hl7v2:Message;
    string name = SQR_S25_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    QAK qak;
    DSC dsc?;
    SQR_S25_SCHEDULE[] schedule = [{sch:{}}];
};