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
# + obr1 - Set ID - OBR
# + obr2 - Placer Order Number
# + obr3 - Filler Order Number
# + obr4 - Universal Service Identifier
# + obr7 - Observation Date/Time #
# + obr8 - Observation End Date/Time #
# + obr9 - Collection Volume *
# + obr10 - Collector Identifier *
# + obr11 - Specimen Action Code *
# + obr12 - Danger Code
# + obr13 - Relevant Clinical Information
# + obr16 - Ordering Provider
# + obr17 - Order Callback Phone Number
# + obr18 - Placer Field 1
# + obr19 - Placer Field 2
# + obr20 - Filler Field 1 +
# + obr21 - Filler Field 2 +
# + obr22 - Results Rpt/Status Chng - Date/Time +
# + obr23 - Charge to Practice +
# + obr24 - Diagnostic Serv Sect ID
# + obr25 - Result Status +
# + obr26 - Parent Result +
# + obr28 - Result Copies To
# + obr29 - Parent
# + obr30 - Transportation Mode
# + obr31 - Reason for Study
# + obr32 - Principal Result Interpreter +
# + obr33 - Assistant Result Interpreter +
# + obr34 - Technician +
# + obr35 - Transcriptionist +
# + obr36 - Scheduled Date/Time +
# + obr37 - Number of Sample Containers *
# + obr38 - Transport Logistics of Collected Sample *
# + obr39 - Collector's Comment *
# + obr40 - Transport Arrangement Responsibility
# + obr41 - Transport Arranged
# + obr42 - Escort Required
# + obr43 - Planned Patient Transport Comment
# + obr44 - Procedure Code
# + obr45 - Procedure Code Modifier
# + obr46 - Placer Supplemental Service Information
# + obr47 - Filler Supplemental Service Information
# + obr48 - Medically Necessary Duplicate Procedure Reason
# + obr49 - Result Handling
# + obr50 - Parent Universal Service Identifier
# + obr51 - Observation Group ID
# + obr52 - Parent Observation Group ID
# + obr53 - Alternate Placer Order Number
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
            dataType: CWE
        },
        "obr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obr8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
        },
        "obr13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
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
            maxReps: 2,
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
            dataType: DTM
        },
        "obr23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MOC
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
            dataType: PRL
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
            dataType: EIP
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
            dataType: CWE
        },
        "obr32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NDL
        },
        "obr33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr34": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr35": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
        },
        "obr39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "obr44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "obr45": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "obr46": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr47": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr48": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr49": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr50": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr51": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr52": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr53": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        }
    }
}
public type OBR record {
    *hl7v2:Segment;
    string name = OBR_SEGMENT_NAME;
    SI obr1 = "";
    EI obr2 = {};
    EI obr3 = {};
    CWE obr4 = {};
    DTM obr7 = "";
    DTM obr8 = "";
    CQ obr9 = {};
    XCN[] obr10 = [{}];
    ID obr11 = "";
    CWE obr12 = {};
    ST obr13 = "";
    XCN[] obr16 = [{}];
    XTN obr17 = {};
    ST obr18 = "";
    ST obr19 = "";
    ST obr20 = "";
    ST obr21 = "";
    DTM obr22 = "";
    MOC obr23 = {};
    ID obr24 = "";
    ID obr25 = "";
    PRL obr26 = {};
    XCN[] obr28 = [{}];
    EIP obr29 = {};
    ID obr30 = "";
    CWE[] obr31 = [{}];
    NDL obr32 = {};
    NDL[] obr33 = [{}];
    NDL[] obr34 = [{}];
    NDL[] obr35 = [{}];
    DTM obr36 = "";
    NM obr37 = "";
    CWE[] obr38 = [{}];
    CWE[] obr39 = [{}];
    CWE obr40 = {};
    ID obr41 = "";
    ID obr42 = "";
    CWE[] obr43 = [{}];
    CNE obr44 = {};
    CNE[] obr45 = [{}];
    CWE[] obr46 = [{}];
    CWE[] obr47 = [{}];
    CWE obr48 = {};
    CWE obr49 = {};
    CWE obr50 = {};
    EI obr51 = {};
    EI obr52 = {};
    CX[] obr53 = [{}];
};

public const OBR_SEGMENT_NAME = "OBR";