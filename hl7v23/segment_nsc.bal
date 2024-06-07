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
# + nsc1 - Network Change Type
# + nsc2 - Current CPU
# + nsc3 - Current Fileserver
# + nsc4 - Current Application
# + nsc5 - Current Facility
# + nsc6 - New CPU
# + nsc7 - New Fileserver
# + nsc8 - New Application
# + nsc9 - New Facility
@hl7v2:SegmentDefinition {
    name: "NSC",
    required: false,
    maxReps: 0,
    fields: {
        "nsc1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nsc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nsc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type NSC record {
    *hl7v2:Segment;
    string name = NSC_SEGMENT_NAME;
    IS nsc1 = "";
    ST nsc2 = "";
    ST nsc3 = "";
    ST nsc4 = "";
    ST nsc5 = "";
    ST nsc6 = "";
    ST nsc7 = "";
    ST nsc8 = "";
    ST nsc9 = "";
};

public const NSC_SEGMENT_NAME = "NSC";
