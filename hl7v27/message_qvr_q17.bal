
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

public const QVR_Q17_MESSAGE_TYPE = "QVR_Q17";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + qpd - QPD
# + rcp - RCP
# + dsc - DSC
# + qbp - QVR_Q17_QBP Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
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
        "UAC": [
                {
                        "name": "UAC",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "Hxx": [
                {
                        "name": "Hxx",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "QVR_Q17_QBP"
                }
        ],
        "RCP": [
                {
                        "name": "RCP",
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
    groups: {
        "QVR_Q17_QBP": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "Hxx": {
                                "name": "Hxx",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type QVR_Q17 record {
    *hl7v2:Message;
    string name = QVR_Q17_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    QPD qpd;
    RCP rcp;
    DSC dsc?;
    QVR_Q17_QBP qbp?;
};
