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
# + scd1 - Cycle Start Time
# + scd2 - Cycle Count
# + scd3 - Temp Max
# + scd4 - Temp Min
# + scd5 - Load Number
# + scd6 - Condition Time
# + scd7 - Sterilize Time
# + scd8 - Exhaust Time
# + scd9 - Total Cycle Time
# + scd10 - Device Status
# + scd11 - Cycle Start Date/Time
# + scd12 - Dry Time
# + scd13 - Leak Rate
# + scd14 - Control Temperature
# + scd15 - Sterilizer Temperature
# + scd16 - Cycle Complete Time
# + scd17 - Under Temperature
# + scd18 - Over Temperature
# + scd19 - Abort Cycle
# + scd20 - Alarm
# + scd21 - Long in Charge Phase
# + scd22 - Long in Exhaust Phase
# + scd23 - Long in Fast Exhaust Phase
# + scd24 - Reset
# + scd25 - Operator - Unload
# + scd26 - Door Open
# + scd27 - Reading Failure
# + scd28 - Cycle Type
# + scd29 - Thermal Rinse Time
# + scd30 - Wash Time
# + scd31 - Injection Rate
# + scd32 - Procedure Code
# + scd33 - Patient Identifier List
# + scd34 - Attending Doctor
# + scd35 - Dilution Factor
# + scd36 - Fill Time
# + scd37 - Inlet Temperature
@hl7v2:SegmentDefinition {
    name: "SCD",
    required: false,
    maxReps: 0,
    fields: {
        "scd1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TM
        },
        "scd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "scd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "scd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "scd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "scd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TM
        },
        "scd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "scd26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "scd29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "scd33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "scd34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "scd35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "scd36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "scd37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        }
    }
}
public type SCD record {
    *hl7v2:Segment;
    string name = SCD_SEGMENT_NAME;
    TM scd1 = "";
    NM scd2 = "";
    CQ scd3 = {};
    CQ scd4 = {};
    NM scd5 = "";
    CQ scd6 = {};
    CQ scd7 = {};
    CQ scd8 = {};
    CQ scd9 = {};
    CWE scd10 = {};
    DTM scd11 = "";
    CQ scd12 = {};
    CQ scd13 = {};
    CQ scd14 = {};
    CQ scd15 = {};
    TM scd16 = "";
    CQ scd17 = {};
    CQ scd18 = {};
    CNE scd19 = {};
    CNE scd20 = {};
    CNE scd21 = {};
    CNE scd22 = {};
    CNE scd23 = {};
    CNE scd24 = {};
    XCN scd25 = {};
    CNE scd26 = {};
    CNE scd27 = {};
    CWE scd28 = {};
    CQ scd29 = {};
    CQ scd30 = {};
    CQ scd31 = {};
    CNE scd32 = {};
    CX[] scd33 = [{}];
    XCN scd34 = {};
    SN scd35 = {};
    CQ scd36 = {};
    CQ scd37 = {};
};

public const SCD_SEGMENT_NAME = "SCD";