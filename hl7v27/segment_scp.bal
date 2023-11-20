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

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + scp1 - Number Of Decontamination/Sterilization Devices
# + scp2 - Labor Calculation Type
# + scp3 - Date Format
# + scp4 - Device Number
# + scp5 - Device Name
# + scp6 - Device Model Name
# + scp7 - Device Type
# + scp8 - Lot Control
@hl7v2:SegmentDefinition {
    name: "SCP",
    required: false,
    maxReps: 0,
    fields: {
        "scp1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "scp2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "scp3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "scp4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "scp5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "scp6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "scp7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "scp8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type SCP record {
    *hl7v2:Segment;
    string name = SCP_SEGMENT_NAME;
    NM scp1 = "";
    CWE scp2 = {};
    CWE scp3 = {};
    EI scp4 = {};
    ST scp5 = "";
    ST scp6 = "";
    CWE scp7 = {};
    CWE scp8 = {};
};

public const SCP_SEGMENT_NAME = "SCP";