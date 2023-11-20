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
# + sdd1 - 2098EIHL7Lot Number
# + sdd2 - Geräteidentifikation
# + sdd3 - Gerätebezeichnung
# + sdd4 - 2100CWEHL70667HL7Device Data State
# + sdd5 - 2101CWEHL70669HL7Load Status
# + sdd6 - 2102NMHL7Control Code
# + sdd7 - 2103STHL7Operator Name
@hl7v2:SegmentDefinition {
    name: "SDD",
    required: false,
    maxReps: 0,
    fields: {
        "sdd1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sdd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sdd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sdd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sdd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sdd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sdd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type SDD record {
    *hl7v2:Segment;
    string name = SDD_SEGMENT_NAME;
    EI sdd1 = {};
    EI sdd2 = {};
    ST sdd3 = "";
    CWE sdd4 = {};
    CWE sdd5 = {};
    NM sdd6 = "";
    ST sdd7 = "";
};

public const SDD_SEGMENT_NAME = "SDD";