
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

public const ERP_R09_MESSAGE_TYPE = "ERP_R09";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qak - QAK
# + erq - ERQ
# + dsc - DSC

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
        "ERR": [
                {
                        "name": "ERR",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "QAK": [
                {
                        "name": "QAK",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ERQ": [
                {
                        "name": "ERQ",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {}
}
public type ERP_R09 record {
    *hl7v2:Message;
    string name = ERP_R09_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QAK qak;
    ERQ erq;
    DSC dsc?;

};
