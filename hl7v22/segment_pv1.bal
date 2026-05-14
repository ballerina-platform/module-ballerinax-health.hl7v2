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

# PV1 segment. Patient Visit The PV1 segment is used by Registration/ADT applications to communicate information on a visit specific basis. This segment can be used to send multiple visit statistic records to the same patient account, or single visit records to more than one acc...
# + name - Segment Name
# + pv11 - Set Id - Patient Visit
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
# + pv116 - Vip Indicator
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
# + pv129 - Transfer To Bad Debt - Code
# + pv130 - Transfer To Bad Debt - Date
# + pv131 - Bad Debt Agency Code
# + pv132 - Bad Debt Transfer Amount
# + pv133 - Bad Debt Recovery Amount
# + pv134 - Delete Account Indicator
# + pv135 - Delete Account Date
# + pv136 - Discharge Disposition
# + pv137 - Discharged To Location
# + pv138 - Diet Type
# + pv139 - Servicing Facility
# + pv140 - Bed Status
# + pv141 - Account Status
# + pv142 - Pending Location
# + pv143 - Prior Temporary Location
# + pv144 - Admit Date / Time
# + pv145 - Discharge Date / Time
# + pv146 - Current Patient Balance
# + pv147 - Total Charges
# + pv148 - Total Adjustments
# + pv149 - Total Payments
# + pv150 - Alternate Visit Id

@hl7v2:SegmentDefinition {
    name: "PV1",
    required: false,
    maxReps: 0,
    fields: {
        "pv11": {
            required: false,
            length: 4,
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
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv14": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv15": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "pv16": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv17": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PHYSICIAN
        },
        "pv18": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PHYSICIAN
        },
        "pv19": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: CN_PHYSICIAN
        },
        "pv110": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "pv111": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv112": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv113": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv114": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "pv115": {
            required: false,
            length: 2,
            maxReps: -1,
            dataType: ID
        },
        "pv116": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv117": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PHYSICIAN
        },
        "pv118": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv119": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: CM_PAT_ID
        },
        "pv120": {
            required: false,
            length: 50,
            maxReps: 4,
            dataType: CM_FINANCE
        },
        "pv121": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv122": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv123": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv124": {
            required: false,
            length: 2,
            maxReps: -1,
            dataType: ID
        },
        "pv125": {
            required: false,
            length: 8,
            maxReps: -1,
            dataType: DT
        },
        "pv126": {
            required: false,
            length: 12,
            maxReps: -1,
            dataType: NM
        },
        "pv127": {
            required: false,
            length: 3,
            maxReps: -1,
            dataType: NM
        },
        "pv128": {
            required: false,
            length: 2,
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
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "pv131": {
            required: false,
            length: 10,
            maxReps: 1,
            dataType: ID
        },
        "pv132": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "pv133": {
            required: false,
            length: 12,
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
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "pv136": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "pv137": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: CM_DLD
        },
        "pv138": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv139": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ID
        },
        "pv140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv141": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pv142": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv143": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "pv144": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "pv145": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "pv146": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "pv147": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "pv148": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "pv149": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "pv150": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CM_PAT_ID_0192
        }

    }
}
public type PV1 record {
    *hl7v2:Segment;
    string name = PV1_SEGMENT_NAME;
    SI pv11 = "";
    ID pv12 = "";
    CM_INTERNAL_LOCATION pv13 = {};
    ID pv14 = "";
    ST pv15 = "";
    CM_INTERNAL_LOCATION pv16 = {};
    CN_PHYSICIAN pv17 = {};
    CN_PHYSICIAN pv18 = {};
    CN_PHYSICIAN[] pv19 = [{}];
    ID pv110 = "";
    CM_INTERNAL_LOCATION pv111 = {};
    ID pv112 = "";
    ID pv113 = "";
    ID pv114 = "";
    ID[] pv115 = [""];
    ID pv116 = "";
    CN_PHYSICIAN pv117 = {};
    ID pv118 = "";
    CM_PAT_ID pv119 = {};
    CM_FINANCE pv120 = {};
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
    ID pv140 = "";
    ID pv141 = "";
    CM_INTERNAL_LOCATION pv142 = {};
    CM_INTERNAL_LOCATION pv143 = {};
    TS pv144 = {};
    TS pv145 = {};
    NM pv146 = "";
    NM pv147 = "";
    NM pv148 = "";
    NM pv149 = "";
    CM_PAT_ID_0192 pv150 = {};
};

public const PV1_SEGMENT_NAME = "PV1";
