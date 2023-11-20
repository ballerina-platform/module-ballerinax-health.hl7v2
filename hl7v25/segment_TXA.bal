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
# + txa1 - Set ID- TXA
# + txa2 - Document Type
# + txa3 - Document Content Presentation
# + txa4 - Activity Date/Time
# + txa5 - Primary Activity Provider Code/Name
# + txa6 - Origination Date/Time
# + txa7 - Transcription Date/Time
# + txa8 - Edit Date/Time
# + txa9 - Originator Code/Name
# + txa10 - Assigned Document Authenticator
# + txa11 - Transcriptionist Code/Name
# + txa12 - Unique Document Number
# + txa13 - Parent Document Number
# + txa14 - Placer Order Number
# + txa15 - Filler Order Number
# + txa16 - Unique Document File Name
# + txa17 - Document Completion Status
# + txa18 - Document Confidentiality Status
# + txa19 - Document Availability Status
# + txa20 - Document Storage Status
# + txa21 - Document Change Reason
# + txa22 - Authentication Person, Time Stamp
# + txa23 - Distributed Copies (Code and Name of Recipients)
@hl7v2:SegmentDefinition {
    name: "TXA",
    required: false,
    maxReps: 0,
    fields: {
        "txa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "txa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "txa3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "txa5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "txa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "txa8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TS
        },
        "txa9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "txa15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "txa17": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "txa22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PPN
        },
        "txa23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        }
    }
}
public type TXA record {
    *hl7v2:Segment;
    string name = TXA_SEGMENT_NAME;
    SI txa1 = "";
    IS txa2 = "";
    ID txa3 = "";
    TS txa4 = {};
    XCN[] txa5 = [{}];
    TS txa6 = {};
    TS txa7 = {};
    TS[] txa8 = [{}];
    XCN[] txa9 = [{}];
    XCN[] txa10 = [{}];
    XCN[] txa11 = [{}];
    EI txa12 = {};
    EI txa13 = {};
    EI[] txa14 = [{}];
    EI txa15 = {};
    ST txa16 = "";
    ID txa17 = "";
    ID txa18 = "";
    ID txa19 = "";
    ID txa20 = "";
    ST txa21 = "";
    PPN[] txa22 = [{}];
    XCN[] txa23 = [{}];
};

public const TXA_SEGMENT_NAME = "TXA";