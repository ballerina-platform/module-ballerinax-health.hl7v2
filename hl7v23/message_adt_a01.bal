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

public const ADT_A01_MESSAGE_TYPE = "ADT_A01";

# Admit/visit notification.
#
# + name - Message name  
# + msh - Message header segment  
# + evn - Event type  
# + pid - Patient Identification  
# + pd1 - Patient Demographic  
# + nk1 - Next of kin  
# + pv1 - Patient visit  
# + pv2 - Patient visit - additional information  
# + db1 - Disability Segment  
# + obx - Observation segment  
# + al1 - Patient Allergy Information  
# + dg1 - Diagnosis  
# + drg - Diagnosis Related Group  
# + procedure - Procedures
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH" ,maxReps: 1, required: true, segmentType: typeof MSH},
        "EVN": {name: "EVN" ,maxReps: 1, required: true, segmentType: typeof EVN},
        "PID": {name: "PID" ,maxReps: 1, required: true, segmentType: typeof PID},
        "PD1": {name: "PD1" ,maxReps: 1, required: false, segmentType: typeof PD1},
        "NK1": {name: "NK1" ,maxReps: -1, required: false, segmentType: NK1},
        "PV1": {name: "PV1" ,maxReps: 1, required: false, segmentType: typeof PV1},
        "PV2": {name: "PV2" ,maxReps: 1, required: false, segmentType: typeof PV2},
        "DB1": {name: "DB1" ,maxReps: -1, required: false, segmentType: typeof DB1},
        "OBX": {name: "OBX" ,maxReps: -1, required: false, segmentType: typeof OBX},
        "AL1": {name: "AL1" ,maxReps: -1, required: false, segmentType: typeof AL1},
        "DG1": {name: "DG1" ,maxReps: -1, required: false, segmentType: typeof DG1},
        "DRG": {name: "DRG" ,maxReps: 1, required: false, segmentType: typeof DRG},
        "PR1": {name: "PR1" ,maxReps: 1, required: false, segmentType: typeof PR1, segmentComponentName: "PROCEDURE"},
        "ROL": {name: "ROL" ,maxReps: -1, required: false, segmentType: typeof ROL, segmentComponentName: "PROCEDURE"}
    },
    groups: {
        "PROCEDURE": {
            maxReps: -1,
            required: false,
            segments: {
                "PR1": {name: "PR1", maxReps: 1, required: false, segmentType: typeof PR1},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        }
    }
}
public type ADT_A01 record {
    *hl7v2:Message;
    string name = ADT_A01_MESSAGE_TYPE;
    MSH msh;
    EVN evn?;
    PID pid;
    PD1 pd1?;
    NK1[] nk1 = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    PROCEDURE[] procedure = [{}];
};
