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
# + obr1 - Set ID - Observation Request
# + obr2 - Placer Order Number
# + obr3 - Filler Order Number
# + obr4 - Universal Service Identifier
# + obr5 - Priority
# + obr6 - Requested Date/Time
# + obr7 - Observation Date/Time
# + obr8 - Observation End Date/Time
# + obr9 - Collection Volume
# + obr10 - Collector Identifier
# + obr11 - Specimen Action Code
# + obr12 - Danger Code
# + obr13 - Relevant Clinical Information
# + obr14 - Specimen Received Date/Time
# + obr15 - Specimen Source
# + obr16 - Ordering Provider
# + obr17 - Order Callback Phone Number
# + obr18 - Placer Field 1
# + obr19 - Placer Field 2
# + obr20 - Filler Field 1
# + obr21 - Filler Field 2
# + obr22 - Results Rpt/Status Chng - Date/Time
# + obr23 - Charge To Practice
# + obr24 - Diagnostic Service Section ID
# + obr25 - Result Status
# + obr26 - Parent Result
# + obr27 - Quantity/Timing
# + obr28 - Result Copies To
# + obr29 - Parent Number
# + obr30 - Transportation Mode
# + obr31 - Reason For Study
# + obr32 - Principal Result Interpreter
# + obr33 - Assistant Result Interpreter
# + obr34 - Technician
# + obr35 - Transcriptionist
# + obr36 - Scheduled Date/Time
# + obr37 - Number Of Sample Containers
# + obr38 - Transport Logistics Of Collected Sample
# + obr39 - Collector’s Comment
# + obr40 - Transport Arrangement Responsibility
# + obr41 - Transport Arranged
# + obr42 - Escort Required
# + obr43 - Planned Patient Transport Comment
@hl7v2:SegmentDefinition {
    name: "OBR",
    required: false,
    maxReps: 0,
    fields: {
        "obr1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "obr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "obr10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obr13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_SPS
        },
        "obr16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "obr18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_MOC
        },
        "obr24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_PRL
        },
        "obr27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TQ
        },
        "obr28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_EIP
        },
        "obr30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr31": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "obr32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CM_NDL
        },
        "obr33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_NDL
        },
        "obr34": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_NDL
        },
        "obr35": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_NDL
        },
        "obr36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obr37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "obr38": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "obr39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "obr40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obr41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr43": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type OBR record {
    *hl7v2:Segment;
    string name = OBR_SEGMENT_NAME;
    SI obr1 = "";
    EI obr2 = {};
    EI obr3 = {};
    CE obr4 = {};
    ID obr5 = "";
    TS obr6 = {};
    TS obr7 = {};
    TS obr8 = {};
    CQ obr9 = {};
    XCN[] obr10 = [{}];
    ID obr11 = "";
    CE obr12 = {};
    ST obr13 = "";
    TS obr14 = {};
    CM_SPS obr15 = {};
    XCN[] obr16 = [{}];
    XTN[] obr17 = [{}];
    ST obr18 = "";
    ST obr19 = "";
    ST obr20 = "";
    ST obr21 = "";
    TS obr22 = {};
    CM_MOC obr23 = {};
    ID obr24 = "";
    ID obr25 = "";
    CM_PRL obr26 = {};
    TQ[] obr27 = [{}];
    XCN[] obr28 = [{}];
    CM_EIP obr29 = {};
    ID obr30 = "";
    CE[] obr31 = [{}];
    CM_NDL obr32 = {};
    CM_NDL[] obr33 = [{}];
    CM_NDL[] obr34 = [{}];
    CM_NDL[] obr35 = [{}];
    TS obr36 = {};
    NM obr37 = "";
    CE[] obr38 = [{}];
    CE[] obr39 = [{}];
    CE obr40 = {};
    ID obr41 = "";
    ID obr42 = "";
    CE[] obr43 = [{}];
};

public const OBR_SEGMENT_NAME = "OBR";
