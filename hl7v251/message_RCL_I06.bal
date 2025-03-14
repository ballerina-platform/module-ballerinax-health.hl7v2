
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

public const RCL_I06_MESSAGE_TYPE = "RCL_I06";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + msa - MSA
# + qrd - QRD
# + qrf - QRF
# + pid - PID
# + dg1 - DG1
# + drg - DRG
# + al1 - AL1
# + nte - NTE
# + dsp - DSP
# + dsc - DSC
# + provider - RCL_I06_PROVIDER Segment Group

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
        "MSA": [
                {
                        "name": "MSA",
                        "maxReps": 1,
                        "required": true
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
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RCL_I06_PROVIDER"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RCL_I06_PROVIDER"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DSP": [
                {
                        "name": "DSP",
                        "maxReps": -1,
                        "required": false
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
        "RCL_I06_PROVIDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type RCL_I06 record {
    *hl7v2:Message;
    string name = RCL_I06_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    QRD qrd;
    QRF qrf?;
    PID pid;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    DSP[] dsp = [];
    DSC dsc?;
    RCL_I06_PROVIDER[] provider = [{prd: {}}];
};
