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
# + pv21 - Prior Pending Location
# + pv22 - Accommodation Code
# + pv23 - Admit Reason
# + pv24 - Transfer Reason
# + pv25 - Patient Valuables
# + pv26 - Patient Valuables Location
# + pv27 - Visit User Code
# + pv28 - Expected Admit Date/Time
# + pv29 - Expected Discharge Date/Time
# + pv210 - Estimated Length of Inpatient Stay
# + pv211 - Actual Length of Inpatient Stay
# + pv212 - Visit Description
# + pv213 - Referral Source Code
# + pv214 - Previous Service Date
# + pv215 - Employment Illness Related Indicator
# + pv216 - Purge Status Code
# + pv217 - Purge Status Date
# + pv218 - Special Program Code
# + pv219 - Retention Indicator
# + pv220 - Expected Number of Insurance Plans
# + pv221 - Visit Publicity Code
# + pv222 - Visit Protection Indicator
# + pv223 - Clinic Organization Name
# + pv224 - Patient Status Code
# + pv225 - Visit Priority Code
# + pv226 - Previous Treatment Date
# + pv227 - Expected Discharge Disposition
# + pv228 - Signature on File Date
# + pv229 - First Similar Illness Date
# + pv230 - Patient Charge Adjustment Code
# + pv231 - Recurring Service Code
# + pv232 - Billing Media Code
# + pv233 - Expected Surgery Date and Time
# + pv234 - Military Partnership Code
# + pv235 - Military Non-Availability Code
# + pv236 - Newborn Baby Indicator
# + pv237 - Baby Detained Indicator
# + pv238 - Mode of Arrival Code
# + pv239 - Recreational Drug Use Code
# + pv240 - Admission Level of Care Code
# + pv241 - Precaution Code
# + pv242 - Patient Condition Code
# + pv243 - Living Will Code
# + pv244 - Organ Donor Code
# + pv245 - Advance Directive Code
# + pv246 - Patient Status Effective Date
# + pv247 - Expected LOA Return Date/Time
# + pv248 - Expected Pre-admission Testing Date/Time
# + pv249 - Notify Clergy Code
# + pv250 - Advance Directive Last Verified Date
@hl7v2:SegmentDefinition {
    name: "PV2",
    required: false,
    maxReps: 0,
    fields: {
        "pv21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pv26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pv27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pv213": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv216": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv217": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv218": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv219": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv220": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv221": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv222": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv223": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pv224": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv225": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv226": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv228": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv229": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv230": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv231": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv232": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv233": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv234": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv235": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv236": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv237": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv238": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv239": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv240": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv241": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv242": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv243": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv244": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv245": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv246": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv247": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv248": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv249": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv250": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type PV2 record {
    *hl7v2:Segment;
    string name = PV2_SEGMENT_NAME;
    PL pv21 = {};
    CWE pv22 = {};
    CWE pv23 = {};
    CWE pv24 = {};
    ST[] pv25 = [""];
    ST pv26 = "";
    CWE[] pv27 = [{}];
    DTM pv28 = "";
    DTM pv29 = "";
    NM pv210 = "";
    NM pv211 = "";
    ST pv212 = "";
    XCN[] pv213 = [{}];
    DT pv214 = "";
    ID pv215 = "";
    CWE pv216 = {};
    DT pv217 = "";
    CWE pv218 = {};
    ID pv219 = "";
    NM pv220 = "";
    CWE pv221 = {};
    ID pv222 = "";
    XON[] pv223 = [{}];
    CWE pv224 = {};
    CWE pv225 = {};
    DT pv226 = "";
    CWE pv227 = {};
    DT pv228 = "";
    DT pv229 = "";
    CWE pv230 = {};
    CWE pv231 = {};
    ID pv232 = "";
    DTM pv233 = "";
    ID pv234 = "";
    ID pv235 = "";
    ID pv236 = "";
    ID pv237 = "";
    CWE pv238 = {};
    CWE[] pv239 = [{}];
    CWE pv240 = {};
    CWE[] pv241 = [{}];
    CWE pv242 = {};
    CWE pv243 = {};
    CWE pv244 = {};
    CWE[] pv245 = [{}];
    DT pv246 = "";
    DTM pv247 = "";
    DTM pv248 = "";
    CWE[] pv249 = [{}];
    DT pv250 = "";
};

public const PV2_SEGMENT_NAME = "PV2";