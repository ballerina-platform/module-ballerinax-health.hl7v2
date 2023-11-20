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
# + aip1 - Set ID - AIP
# + aip2 - Segment Action Code
# + aip3 - Personnel Resource ID
# + aip4 - Resource Type
# + aip5 - Resource Group
# + aip6 - Start Date/Time
# + aip7 - Start Date/Time Offset
# + aip8 - Start Date/Time Offset Units
# + aip9 - Duration
# + aip10 - Duration Units
# + aip11 - Allow Substitution Code
# + aip12 - Filler Status Code
@hl7v2:SegmentDefinition {
    name: "AIP",
    required: false,
    maxReps: 0,
    fields: {
        "aip1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "aip2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "aip3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "aip4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aip5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aip6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "aip7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aip8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aip9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aip10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aip11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "aip12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type AIP record {
    *hl7v2:Segment;
    string name = AIP_SEGMENT_NAME;
    SI aip1 = "";
    ID aip2 = "";
    XCN[] aip3 = [{}];
    CE aip4 = {};
    CE aip5 = {};
    TS aip6 = {};
    NM aip7 = "";
    CE aip8 = {};
    NM aip9 = "";
    CE aip10 = {};
    IS aip11 = "";
    CE aip12 = {};
};

public const AIP_SEGMENT_NAME = "AIP";