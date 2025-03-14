
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

public const QBP_E22_MESSAGE_TYPE = "QBP_E22";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + query - QBP_E22_QUERY Segment Group

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "QBP_E22_QUERY"
                }
        ],
        "RCP": [
                {
                        "name": "RCP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "QBP_E22_QUERY"
                }
        ]
},
    groups: {
        "QBP_E22_QUERY": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "QPD": {
                                "name": "QPD",
                                "maxReps": 1,
                                "required": true
                        },
                        "RCP": {
                                "name": "RCP",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type QBP_E22 record {
    *hl7v2:Message;
    string name = QBP_E22_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    QBP_E22_QUERY query = {qpd: {}, rcp: {}};
};
