
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

public const QSX_J02_MESSAGE_TYPE = "QSX_J02";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + qid - QID

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QID": [
                {
                        "name": "QID",
                        "maxReps": 1,
                        "required": true
                }
        ]
},
    groups: {}
}
public type QSX_J02 record {
    *hl7v2:Message;
    string name = QSX_J02_MESSAGE_TYPE;
    MSH msh;
    QID qid;

};
