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
public const CRM_C01_MESSAGE_TYPE = "CRM_C01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + patient - CRM_C01_PATIENT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "CSP": [{name: "CSP", maxReps: -1, required: false, segmentComponentName: "CRM_C01_PATIENT"}],
        "CSR": [{name: "CSR", maxReps: 1, required: false, segmentComponentName: "CRM_C01_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "CRM_C01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "CRM_C01_PATIENT"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH}
    }
    ,groups: {
        "CRM_C01_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "CSR": {name: "CSR", maxReps: 1, required: true, segmentType: typeof CSR},
                "CSP": {name: "CSP", maxReps: -1, required: false, segmentType: typeof CSP}
            }
        }
    }
}
public type CRM_C01 record {
    *hl7v2:Message;
    string name = CRM_C01_MESSAGE_TYPE;
    MSH msh;
    CRM_C01_PATIENT[] patient = [{pid:{}, csr:{}}];
};