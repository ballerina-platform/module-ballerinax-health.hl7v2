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
# + shp1 - 2317EIHL7Shipment ID
# + shp2 - 2318EIHL7Internal Shipment ID
# + shp3 - 2319CWEHL70905HL7Shipment Status
# + shp4 - 2320DTMHL7Shipment Status Date/Time
# + shp5 - 2321TXHL7Shipment Status Reason
# + shp6 - 2322CWEHL70906HL7Shipment Priority
# + shp7 - 2323CWEHL70907HL7Shipment Confidentiality
# + shp8 - 2324NMHL7Number of Packages in Shipment
# + shp9 - 2325CWEHL70544HL7Shipment Condition
# + shp10 - 2326CWEHL70376HL7Shipment Handling Code
# + shp11 - 2327CWEHL70489HL7Shipment Risk Code
@hl7v2:SegmentDefinition {
    name: "SHP",
    required: false,
    maxReps: 0,
    fields: {
        "shp1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "shp2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "shp3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "shp4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "shp5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "shp6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "shp7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "shp8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "shp9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "shp10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "shp11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type SHP record {
    *hl7v2:Segment;
    string name = SHP_SEGMENT_NAME;
    EI shp1 = {};
    EI[] shp2 = [{}];
    CWE shp3 = {};
    DTM shp4 = "";
    TX shp5 = "";
    CWE shp6 = {};
    CWE[] shp7 = [{}];
    NM shp8 = "";
    CWE[] shp9 = [{}];
    CWE[] shp10 = [{}];
    CWE[] shp11 = [{}];
};

public const SHP_SEGMENT_NAME = "SHP";