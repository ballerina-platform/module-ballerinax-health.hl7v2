
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
# + pmt1 - Segment Record Field
# + pmt2 - Segment Record Field
# + pmt3 - Segment Record Field
# + pmt4 - Segment Record Field
# + pmt5 - Segment Record Field
# + pmt6 - Segment Record Field
# + pmt7 - Segment Record Field
# + pmt8 - Segment Record Field
# + pmt9 - Segment Record Field
# + pmt10 - Segment Record Field
# + pmt11 - Segment Record Field
# + pmt12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PMT",
    required: false,
    maxReps: 0,
    fields: {
        "pmt1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pmt2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pmt3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pmt4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pmt5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pmt6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "pmt7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pmt8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "pmt9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pmt10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pmt11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "pmt12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type PMT record {
    *hl7v2:Segment;
    string name = PMT_SEGMENT_NAME;
    EI pmt1 = {};
    DTM pmt2 = "";
    DTM pmt3 = "";
    CWE pmt4 = {};
    DTM pmt5 = "";
    CP pmt6 = {};
    EI pmt7 = {};
    XON pmt8 = {};
    ST pmt9 = "";
    CX pmt10 = {};
    XON pmt11 = {};
    ST pmt12 = "";
};

public const PMT_SEGMENT_NAME = "PMT";