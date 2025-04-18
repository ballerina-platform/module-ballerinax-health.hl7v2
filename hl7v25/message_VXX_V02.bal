
// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

public const VXX_V02_MESSAGE_TYPE = "VXX_V02";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + sft - SFT
# + qrd - QRD
# + qrf - QRF
# + patient - VXX_V02_PATIENT Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "MSA": [
                {
                        "name": "MSA",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "SFT": [
                {
                        "name": "SFT",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "VXX_V02_PATIENT"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "VXX_V02_PATIENT"
                }
        ]
},
    groups: {
        "VXX_V02_PATIENT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type VXX_V02 record {
    *hl7v2:Message;
    string name = VXX_V02_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    SFT[] sft = [];
    QRD qrd;
    QRF qrf?;
    VXX_V02_PATIENT[] patient = [{pid: {}}];
};
