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
# + ipr1 - 2030EIHL7IPR Identifier
# + ipr2 - 2031EIHL7Provider Cross Reference Identifier
# + ipr3 - 2032EIHL7Payer Cross Reference Identifier
# + ipr4 - 2033CWEHL70571HL7IPR Status
# + ipr5 - 2034DTMHL7IPR Date/Time
# + ipr6 - 2035CPHL7Adjudicated/Paid Amount
# + ipr7 - 2036DTMHL7Expected Payment Date/Time
# + ipr8 - 2037STHL7IPR Checksum
@hl7v2:SegmentDefinition {
    name: "IPR",
    required: false,
    maxReps: 0,
    fields: {
        "ipr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipr2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipr3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipr4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ipr5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ipr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ipr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ipr8": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type IPR record {
    *hl7v2:Segment;
    string name = IPR_SEGMENT_NAME;
    EI ipr1 = {};
    EI ipr2 = {};
    EI ipr3 = {};
    CWE ipr4 = {};
    DTM ipr5 = "";
    CP ipr6 = {};
    DTM ipr7 = "";
    ST ipr8 = "";
};

public const IPR_SEGMENT_NAME = "IPR";