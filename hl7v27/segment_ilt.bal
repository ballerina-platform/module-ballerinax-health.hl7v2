
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
# + ilt1 - Segment Record Field
# + ilt2 - Segment Record Field
# + ilt3 - Segment Record Field
# + ilt4 - Segment Record Field
# + ilt5 - Segment Record Field
# + ilt6 - Segment Record Field
# + ilt7 - Segment Record Field
# + ilt8 - Segment Record Field
# + ilt9 - Segment Record Field
# + ilt10 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ILT",
    required: false,
    maxReps: 0,
    fields: {
        "ilt1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ilt2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ilt3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ilt4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ilt5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ilt6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ilt7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "ilt8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ilt9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ilt10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ILT record {
    *hl7v2:Segment;
    string name = ILT_SEGMENT_NAME;
    SI ilt1 = "";
    ST ilt2 = "";
    DTM ilt3 = "";
    DTM ilt4 = "";
    NM ilt5 = "";
    CWE ilt6 = {};
    MO ilt7 = {};
    DTM ilt8 = "";
    NM ilt9 = "";
    CWE ilt10 = {};
};

public const ILT_SEGMENT_NAME = "ILT";