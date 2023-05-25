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

public const CCI_I22_MESSAGE_TYPE = "CCI_I22";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + msa - Message Record Field
# + err - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + nk1 - Message Record Field
# + rel - Message Record Field
# + insurance - Message Record Field
# + appointment_history - Message Record Field
# + clinical_history - Message Record Field
# + patient_visits - Message Record Field
# + medication_history - Message Record Field
# + problem - Message Record Field
# + goal - Message Record Field
# + pathway - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "REL": {name: "REL", maxReps: -1, required: false, segmentType: REL}
    }
}
public type CCI_I22 record {
    *hl7v2:Message;
    string name = CCI_I22_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    MSA msa?;
    ERR[] err = [];
    PID pid?;
    PD1 pd1?;
    NK1[] nk1 = [];
    REL[] rel = [];
    INSURANCE[] insurance = [{}];
    APPOINTMENT_HISTORY[] appointment_history = [{}];
    CLINICAL_HISTORY[] clinical_history = [{}];
    PATIENT_VISITS[] patient_visits = [{}];
    MEDICATION_HISTORY[] medication_history = [{}];
    PROBLEM[] problem = [{}];
    GOAL[] goal = [{}];
    PATHWAY[] pathway = [{}];
};