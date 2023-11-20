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
# + pcr1 - Implicated Product
# + pcr2 - Generic Product
# + pcr3 - Product Class
# + pcr4 - Total Duration Of Therapy
# + pcr5 - Product Manufacture Date
# + pcr6 - Product Expiration Date
# + pcr7 - Product Implantation Date
# + pcr8 - Product Explantation Date
# + pcr9 - Single Use Device
# + pcr10 - Indication For Product Use
# + pcr11 - Product Problem
# + pcr12 - Product Serial/Lot Number
# + pcr13 - Product Available For Inspection
# + pcr14 - Product Evaluation Performed
# + pcr15 - Product Evaluation Status
# + pcr16 - Product Evaluation Results
# + pcr17 - Evaluated Product Source
# + pcr18 - Date Product Returned To Manufacturer
# + pcr19 - Device Operator Qualifications
# + pcr20 - Relatedness Assessment
# + pcr21 - Action Taken In Response To The Event
# + pcr22 - Event Causality Observations
# + pcr23 - Indirect Exposure Mechanism
@hl7v2:SegmentDefinition {
    name: "PCR",
    required: false,
    maxReps: 0,
    fields: {
        "pcr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pcr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pcr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr12": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: ST
        },
        "pcr13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr21": {
            required: false,
            length: 1,
            maxReps: 6,
            dataType: ID
        },
        "pcr22": {
            required: false,
            length: 1,
            maxReps: 6,
            dataType: ID
        },
        "pcr23": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: ID
        }
    }
}
public type PCR record {
    *hl7v2:Segment;
    string name = PCR_SEGMENT_NAME;
    CWE pcr1 = {};
    IS pcr2 = "";
    CWE pcr3 = {};
    CQ pcr4 = {};
    DTM pcr5 = "";
    DTM pcr6 = "";
    DTM pcr7 = "";
    DTM pcr8 = "";
    CWE pcr9 = {};
    CWE pcr10 = {};
    CWE pcr11 = {};
    ST pcr12 = "";
    CWE pcr13 = {};
    CWE pcr14 = {};
    CWE pcr15 = {};
    CWE pcr16 = {};
    ID pcr17 = "";
    DTM pcr18 = "";
    ID pcr19 = "";
    ID pcr20 = "";
    ID pcr21 = "";
    ID pcr22 = "";
    ID pcr23 = "";
};

public const PCR_SEGMENT_NAME = "PCR";