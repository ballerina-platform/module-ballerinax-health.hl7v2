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
# + pdc1 - Manufacturer/Distributor
# + pdc2 - Country
# + pdc3 - Brand Name
# + pdc4 - Device Family Name
# + pdc5 - Generic Name
# + pdc6 - Model Identifier
# + pdc7 - Catalogue Identifier
# + pdc8 - Other Identifier
# + pdc9 - Product Code
# + pdc10 - Marketing Basis
# + pdc11 - Marketing Approval ID
# + pdc12 - Labeled Shelf Life
# + pdc13 - Expected Shelf Life
# + pdc14 - Date First Marketed
# + pdc15 - Date Last Marketed
@hl7v2:SegmentDefinition {
    name: "PDC",
    required: false,
    maxReps: 0,
    fields: {
        "pdc1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pdc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pdc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pdc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type PDC record {
    *hl7v2:Segment;
    string name = PDC_SEGMENT_NAME;
    XON[] pdc1 = [{}];
    CE pdc2 = {};
    ST pdc3 = "";
    ST pdc4 = "";
    CE pdc5 = {};
    ST[] pdc6 = [""];
    ST pdc7 = "";
    ST[] pdc8 = [""];
    CE pdc9 = {};
    ID pdc10 = "";
    ST pdc11 = "";
    CQ pdc12 = {};
    CQ pdc13 = {};
    TS pdc14 = {};
    TS pdc15 = {};
};

public const PDC_SEGMENT_NAME = "PDC";