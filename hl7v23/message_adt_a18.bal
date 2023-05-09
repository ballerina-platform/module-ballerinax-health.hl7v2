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
public const ADT_A18_MESSAGE_TYPE = "ADT_A18";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + evn - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + mrg - Message Record Field
# + pv1 - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "MRG": {name: "MRG", maxReps: 1, required: false, segmentType: MRG},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1}
    }
}
public type ADT_A18 record {
    *hl7v2:Message;
    string name = ADT_A18_MESSAGE_TYPE;
    MSH msh?;
    EVN evn?;
    PID pid?;
    PD1 pd1?;
    MRG mrg?;
    PV1 pv1?;
};
