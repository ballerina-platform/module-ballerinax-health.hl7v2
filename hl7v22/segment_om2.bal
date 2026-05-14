// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# OM2 segment. Numeric Observation This segment contains attributes of observations with continuous values (including those with data types of numeric, date, or time stamp). It can be applied to observation batteries of type A and C (see OM1-19nature of test/observation).
# + name - Segment Name
# + om21 - Segment Type Id
# + om22 - Sequence Number - Test/ Observation Master File
# + om23 - Units Of Measure
# + om24 - Range Of Decimal Precision
# + om25 - Corresponding Si Units Of Measure
# + om26 - Si Conversion Factor
# + om27 - Reference (normal) Range - Ordinal & Continuous Observations
# + om28 - Critical Range For Ordinal And Continuous Observations
# + om29 - Absolute Range For Ordinal And Continuous Observations
# + om210 - Delta Check Criteria
# + om211 - Minimum Meaningful Increments

@hl7v2:SegmentDefinition {
    name: "OM2",
    required: false,
    maxReps: 0,
    fields: {
        "om21": {
            required: true,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om22": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om23": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om24": {
            required: false,
            length: 10,
            maxReps: -1,
            dataType: NM
        },
        "om25": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om26": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: TX
        },
        "om27": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CM_RFR
        },
        "om28": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CM_RANGE
        },
        "om29": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CM_ABS_RANGE
        },
        "om210": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CM_DLT
        },
        "om211": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        }

    }
}
public type OM2 record {
    *hl7v2:Segment;
    string name = OM2_SEGMENT_NAME;
    ST om21 = "";
    NM om22 = "";
    CE om23 = {};
    NM[] om24 = [""];
    CE om25 = {};
    TX om26 = "";
    CM_RFR om27 = {};
    CM_RANGE om28 = {};
    CM_ABS_RANGE om29 = {};
    CM_DLT[] om210 = [{}];
    NM om211 = "";
};

public const OM2_SEGMENT_NAME = "OM2";
