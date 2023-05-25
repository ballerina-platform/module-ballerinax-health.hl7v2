
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
# + pye1 - Segment Record Field
# + pye2 - Segment Record Field
# + pye3 - Segment Record Field
# + pye4 - Segment Record Field
# + pye5 - Segment Record Field
# + pye6 - Segment Record Field
# + pye7 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PYE",
    required: false,
    maxReps: 0,
    fields: {
        "pye1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pye2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pye3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pye4": {
            required: false,
            length: 1,
            maxReps: 5,
            dataType: XON
        },
        "pye5": {
            required: false,
            length: 1,
            maxReps: 4,
            dataType: XPN
        },
        "pye6": {
            required: false,
            length: 1,
            maxReps: 4,
            dataType: XAD
        },
        "pye7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type PYE record {
    *hl7v2:Segment;
    string name = PYE_SEGMENT_NAME;
    SI pye1 = "";
    IS pye2 = "";
    IS pye3 = "";
    XON pye4 = {};
    XPN pye5 = {};
    XAD pye6 = {};
    IS pye7 = "";
};

public const PYE_SEGMENT_NAME = "PYE";