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

# PV2 segment. Patient Visit - Additional Information The PV2 segment is a continuation of visit specific information contained on the PV1 segment.
# + name - Segment Name
# + pv21 - Prior Pending Location
# + pv22 - Accommodation Code
# + pv23 - Admit Reason
# + pv24 - Transfer Reason
# + pv25 - Patient Valuables
# + pv26 - Patient Valuables Location
# + pv27 - Visit User Code
# + pv28 - Expected Admit Date
# + pv29 - Expected Discharge Date

@hl7v2:SegmentDefinition {
    name: "PV2",
    required: false,
    maxReps: 0,
    fields: {
        "pv21": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv22": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "pv23": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "pv24": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "pv25": {
            required: false,
            length: 25,
            maxReps: -1,
            dataType: ST
        },
        "pv26": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: ST
        },
        "pv27": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv28": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "pv29": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        }

    }
}
public type PV2 record {
    *hl7v2:Segment;
    string name = PV2_SEGMENT_NAME;
    CM_INTERNAL_LOCATION pv21 = {};
    CE pv22 = {};
    CE pv23 = {};
    CE pv24 = {};
    ST[] pv25 = [""];
    ST pv26 = "";
    ID pv27 = "";
    DT pv28 = "";
    DT pv29 = "";
};

public const PV2_SEGMENT_NAME = "PV2";
