
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

public const QBP_Q15_MESSAGE_TYPE = "QBP_Q15";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + qpd - QPD
# + rdf - RDF
# + rcp - RCP
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
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "RDF": [
                {
                        "name": "RDF",
                        "maxReps": 1,
                        "required": false
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
    groups: {}
}
public type QBP_Q15 record {
    *hl7v2:Message;
    string name = QBP_Q15_MESSAGE_TYPE;
    MSH msh;
    QPD qpd;
    RDF rdf?;
    RCP rcp;
    DSC dsc?;

};
