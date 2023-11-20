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
# + iim1 - Primary Key Value - IIM
# + iim2 - Service Item Code
# + iim3 - Inventory Lot Number
# + iim4 - Inventory Expiration Date
# + iim5 - Inventory Manufacturer Name
# + iim6 - Inventory Location
# + iim7 - Inventory Received Date
# + iim8 - Inventory Received Quantity
# + iim9 - Inventory Received Quantity Unit
# + iim10 - Inventory Received Item Cost
# + iim11 - Inventory On Hand Date
# + iim12 - Inventory On Hand Quantity
# + iim13 - Inventory On Hand Quantity Unit
# + iim14 - Procedure Code
# + iim15 - Procedure Code Modifier
@hl7v2:SegmentDefinition {
    name: "IIM",
    required: false,
    maxReps: 0,
    fields: {
        "iim1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "iim4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iim5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iim8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "iim9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "iim11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iim12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "iim13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iim14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "iim15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        }
    }
}
public type IIM record {
    *hl7v2:Segment;
    string name = IIM_SEGMENT_NAME;
    CWE iim1 = {};
    CWE iim2 = {};
    ST iim3 = "";
    DTM iim4 = "";
    CWE iim5 = {};
    CWE iim6 = {};
    DTM iim7 = "";
    NM iim8 = "";
    CWE iim9 = {};
    MO iim10 = {};
    DTM iim11 = "";
    NM iim12 = "";
    CWE iim13 = {};
    CNE iim14 = {};
    CNE[] iim15 = [{}];
};

public const IIM_SEGMENT_NAME = "IIM";