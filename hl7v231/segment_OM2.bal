
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
# + om21 - Segment Record Field
# + om22 - Segment Record Field
# + om23 - Segment Record Field
# + om24 - Segment Record Field
# + om25 - Segment Record Field
# + om26 - Segment Record Field
# + om27 - Segment Record Field
# + om28 - Segment Record Field
# + om29 - Segment Record Field
# + om210 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "OM2",
    required: false,
    maxReps: 0,
    fields: {
        "om21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "om23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "om24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "om25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: RFR
        },
        "om27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NR
        },
        "om28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: RFR
        },
        "om29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DLT
        },
        "om210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type OM2 record {
    *hl7v2:Segment;
    string name = OM2_SEGMENT_NAME;
    NM om21 = "";
    CE om22 = {};
    NM[] om23 = [""];
    CE om24 = {};
    TX om25 = "";
    RFR om26 = {};
    NR om27 = {};
    RFR om28 = {};
    DLT[] om29 = [{}];
    NM om210 = "";
};

public const OM2_SEGMENT_NAME = "OM2";