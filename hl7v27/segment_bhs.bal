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
# + bhs1 - Batch Field Separator
# + bhs2 - Batch Encoding Characters
# + bhs3 - Batch Sending Application
# + bhs4 - Batch Sending Facility
# + bhs5 - Batch Receiving Application
# + bhs6 - Batch Receiving Facility
# + bhs7 - Batch Creation Date/Time
# + bhs8 - Batch Security
# + bhs9 - Batch Name/ID/Type
# + bhs10 - Batch Comment
# + bhs11 - Batch Control ID
# + bhs12 - Reference Batch Control ID
# + bhs13 - Batch Sending Network Address
# + bhs14 - Batch Receiving Network Address
@hl7v2:SegmentDefinition {
    name: "BHS",
    required: false,
    maxReps: 0,
    fields: {
        "bhs1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "bhs4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "bhs5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "bhs6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "bhs7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "bhs8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bhs13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "bhs14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        }
    }
}
public type BHS record {
    *hl7v2:Segment;
    string name = BHS_SEGMENT_NAME;
    ST bhs1 = "";
    ST bhs2 = "";
    HD bhs3 = {};
    HD bhs4 = {};
    HD bhs5 = {};
    HD bhs6 = {};
    DTM bhs7 = "";
    ST bhs8 = "";
    ST bhs9 = "";
    ST bhs10 = "";
    ST bhs11 = "";
    ST bhs12 = "";
    HD bhs13 = {};
    HD bhs14 = {};
};

public const BHS_SEGMENT_NAME = "BHS";