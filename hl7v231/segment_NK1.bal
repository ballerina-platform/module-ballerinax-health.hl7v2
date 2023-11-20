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
# + nk11 - Set ID - NK1
# + nk12 - Name
# + nk13 - Relationship
# + nk14 - Address
# + nk15 - Phone Number
# + nk16 - Business Phone Number
# + nk17 - Contact Role
# + nk18 - Start Date
# + nk19 - End Date
# + nk110 - Next of Kin / Associated Parties Job Title
# + nk111 - Next of Kin / Associated Parties Job Code/Class
# + nk112 - Next of Kin / Associated Parties Employee Number
# + nk113 - Organization Name - NK1
# + nk114 - Marital Status
# + nk115 - Sex
# + nk116 - Date/Time Of Birth
# + nk117 - Living Dependency
# + nk118 - Ambulatory Status
# + nk119 - Citizenship
# + nk120 - Primary Language
# + nk121 - Living Arrangement
# + nk122 - Publicity Code
# + nk123 - Protection Indicator
# + nk124 - Student Indicator
# + nk125 - Religion
# + nk126 - Mother’s Maiden Name
# + nk127 - Nationality
# + nk128 - Ethnic Group
# + nk129 - Contact Reason
# + nk130 - Contact Person’s Name
# + nk131 - Contact Person’s Telephone Number
# + nk132 - Contact Person’s Address
# + nk133 - Next of Kin/Associated Party’s Identifiers
# + nk134 - Job Status
# + nk135 - Race
# + nk136 - Handicap
# + nk137 - Contact Person Social Security Number
@hl7v2:SegmentDefinition {
    name: "NK1",
    required: false,
    maxReps: 0,
    fields: {
        "nk11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "nk12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "nk112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "nk113": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "nk114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "nk117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "nk118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "nk119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "nk120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nk124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nk128": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "nk129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "nk130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk131": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk132": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk133": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "nk134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "nk136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type NK1 record {
    *hl7v2:Segment;
    string name = NK1_SEGMENT_NAME;
    SI nk11 = "";
    XPN[] nk12 = [{}];
    CE nk13 = {};
    XAD[] nk14 = [{}];
    XTN[] nk15 = [{}];
    XTN[] nk16 = [{}];
    CE nk17 = {};
    DT nk18 = "";
    DT nk19 = "";
    ST nk110 = "";
    JCC nk111 = {};
    CX nk112 = {};
    XON[] nk113 = [{}];
    CE nk114 = {};
    IS nk115 = "";
    TS nk116 = {};
    IS[] nk117 = [""];
    IS[] nk118 = [""];
    CE[] nk119 = [{}];
    CE nk120 = {};
    IS nk121 = "";
    CE nk122 = {};
    ID nk123 = "";
    IS nk124 = "";
    CE nk125 = {};
    XPN[] nk126 = [{}];
    CE nk127 = {};
    CE[] nk128 = [{}];
    CE[] nk129 = [{}];
    XPN[] nk130 = [{}];
    XTN[] nk131 = [{}];
    XAD[] nk132 = [{}];
    CX[] nk133 = [{}];
    IS nk134 = "";
    CE[] nk135 = [{}];
    IS nk136 = "";
    ST nk137 = "";
};

public const NK1_SEGMENT_NAME = "NK1";