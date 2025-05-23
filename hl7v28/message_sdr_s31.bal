
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

public const SDR_S31_MESSAGE_TYPE = "SDR_S31";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + ANTI_microbial_device_data - SDR_S31_ANTI_MICROBIAL_DEVICE_DATA Segment Group

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
                        "segmentComponentName": "SDR_S31_ANTI_MICROBIAL_DEVICE_DATA"
                }
        ],
        "SCD": [
                {
                        "name": "SCD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SDR_S31_ANTI_MICROBIAL_DEVICE_DATA"
                }
        ]
},
    groups: {
        "SDR_S31_ANTI_MICROBIAL_DEVICE_DATA": {
                "maxReps": 1,
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
public type SDR_S31 record {
    *hl7v2:Message;
    string name = SDR_S31_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    SDR_S31_ANTI_MICROBIAL_DEVICE_DATA ANTI_microbial_device_data = {sdd: {}};
};
