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
# + mrg1 - Prior Patient Identifier List
# + mrg2 - Withdrawn field
# + mrg3 - Prior Patient Account Number
# + mrg4 - Withdrawn field
# + mrg5 - Prior Visit Number
# + mrg6 - Prior Alternate Visit ID
# + mrg7 - Prior Patient Name
@hl7v2:SegmentDefinition {
    name: "MRG",
    required: false,
    maxReps: 0,
    fields: {
        "mrg1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "mrg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "mrg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "mrg4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "mrg5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "mrg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "mrg7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        }
    }
}
public type MRG record {
    *hl7v2:Segment;
    string name = MRG_SEGMENT_NAME;
    CX[] mrg1 = [{}];
    ST mrg2 = "";
    CX mrg3 = {};
    ST mrg4 = "";
    CX mrg5 = {};
    CX mrg6 = {};
    XPN[] mrg7 = [{}];
};

public const MRG_SEGMENT_NAME = "MRG";