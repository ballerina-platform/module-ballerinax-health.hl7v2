
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

public const SDN_S36_MESSAGE_TYPE = "SDN_S36";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + anti_microbial_device_data - SDN_S36_ANTI_MICROBIAL_DEVICE_DATA Segment Group

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
        "SDD": [
                {
                        "name": "SDD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SDN_S36_ANTI_MICROBIAL_DEVICE_DATA"
                }
        ],
        "SCD": [
                {
                        "name": "SCD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SDN_S36_ANTI_MICROBIAL_DEVICE_DATA"
                }
        ]
},
    groups: {
        "SDN_S36_ANTI_MICROBIAL_DEVICE_DATA": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SDD": {
                                "name": "SDD",
                                "maxReps": 1,
                                "required": true
                        },
                        "SCD": {
                                "name": "SCD",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type SDN_S36 record {
    *hl7v2:Message;
    string name = SDN_S36_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    SDN_S36_ANTI_MICROBIAL_DEVICE_DATA[] anti_microbial_device_data = [{sdd: {}}];
};
