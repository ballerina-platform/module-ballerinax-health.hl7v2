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
public const SRR_S01_MESSAGE_TYPE = "SRR_S01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + schedule - SRR_S01_SCHEDULE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR}
    }
    ,groups: {
        "SRR_S01_SCHEDULE": {
            maxReps: 1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "TQ1": {name: "TQ1", maxReps: -1, required: false, segmentType: typeof TQ1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "SRR_S01_PATIENT": {name: "SRR_S01_PATIENT", maxReps: -1, required: false, segmentType: typeof SRR_S01_PATIENT},
                "SRR_S01_RESOURCE": {name: "SRR_S01_RESOURCE", maxReps: -1, required: true, segmentType: typeof SRR_S01_RESOURCE}
            }
        }
    }
}
public type SRR_S01 record {
    *hl7v2:Message;
    string name = SRR_S01_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SRR_S01_SCHEDULE[] schedule = [{sch:{}}];
};