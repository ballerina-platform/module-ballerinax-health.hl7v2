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
# + pv11 - Set ID - Patient Visit
# + pv12 - Patient Class
# + pv13 - Assigned Patient Location
# + pv14 - Admission Type
# + pv15 - Preadmit Number
# + pv16 - Prior Patient Location
# + pv17 - Attending Doctor
# + pv18 - Referring Doctor
# + pv19 - Consulting Doctor
# + pv110 - Hospital Service
# + pv111 - Temporary Location
# + pv112 - Preadmit Test Indicator
# + pv113 - Readmission Indicator
# + pv114 - Admit Source
# + pv115 - Ambulatory Status
# + pv116 - VIP Indicator
# + pv117 - Admitting Doctor
# + pv118 - Patient Type
# + pv119 - Visit Number
# + pv120 - Financial Class
# + pv121 - Charge Price Indicator
# + pv122 - Courtesy Code
# + pv123 - Credit Rating
# + pv124 - Contract Code
# + pv125 - Contract Effective Date
# + pv126 - Contract Amount
# + pv127 - Contract Period
# + pv128 - Interest Code
# + pv129 - Transfer to Bad Debt Code
# + pv130 - Transfer to Bad Debt Date
# + pv131 - Bad Debt Agency Code
# + pv132 - Bad Debt Transfer Amount
# + pv133 - Bad Debt Recovery Amount
# + pv134 - Delete Account Indicator
# + pv135 - Delete Account Date
# + pv136 - Discharge Disposition
# + pv137 - Discharged to Location
# + pv138 - Diet Type
# + pv139 - Servicing Facility
# + pv140 - Bed Status
# + pv141 - Account Status
# + pv142 - Pending Location
# + pv143 - Prior Temporary Location
# + pv144 - Admit Date/Time
# + pv145 - Discharge Date/Time
# + pv146 - Current Patient Balance
# + pv147 - Total Charges
# + pv148 - Total Adjustments
# + pv149 - Total Payments
# + pv150 - Alternate Visit ID
# + pv151 - Visit Indicator
# + pv152 - Other Healthcare Provider
@hl7v2:SegmentDefinition {
    name: "PV1",
    required: false,
    maxReps: 0,
    fields: {
        "pv11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pv12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "pv18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "pv19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pv116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "pv118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv120": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FC
        },
        "pv121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv124": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "pv125": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DT
        },
        "pv126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "pv127": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "pv128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_DLD
        },
        "pv138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pv141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv144": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pv145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pv146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv149": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv151": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pv152": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        }
    }
}
public type PV1 record {
    *hl7v2:Segment;
    string name = PV1_SEGMENT_NAME;
    SI pv11 = "";
    ID pv12 = "";
    PL pv13 = {};
    ID pv14 = "";
    CX pv15 = {};
    PL pv16 = {};
    XCN pv17 = {};
    XCN pv18 = {};
    XCN[] pv19 = [{}];
    ID pv110 = "";
    PL pv111 = {};
    ID pv112 = "";
    ID pv113 = "";
    ID pv114 = "";
    IS pv115 = "";
    ID pv116 = "";
    XCN pv117 = {};
    ID pv118 = "";
    CX pv119 = {};
    FC[] pv120 = [{}];
    ID pv121 = "";
    ID pv122 = "";
    ID pv123 = "";
    ID[] pv124 = [""];
    DT[] pv125 = [""];
    NM[] pv126 = [""];
    NM[] pv127 = [""];
    ID pv128 = "";
    ID pv129 = "";
    DT pv130 = "";
    ID pv131 = "";
    NM pv132 = "";
    NM pv133 = "";
    ID pv134 = "";
    DT pv135 = "";
    ID pv136 = "";
    CM_DLD pv137 = {};
    ID pv138 = "";
    ID pv139 = "";
    IS pv140 = "";
    ID pv141 = "";
    PL pv142 = {};
    PL pv143 = {};
    TS pv144 = {};
    TS pv145 = {};
    NM pv146 = "";
    NM pv147 = "";
    NM pv148 = "";
    NM pv149 = "";
    CX pv150 = {};
    IS pv151 = "";
    XCN[] pv152 = [{}];
};

public const PV1_SEGMENT_NAME = "PV1";