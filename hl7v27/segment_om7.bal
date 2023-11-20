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
# + om71 - Sequence Number - Test/Observation Master File
# + om72 - Universal Service Identifier
# + om73 - Category Identifier
# + om74 - Category Description
# + om75 - Category Synonym
# + om76 - Effective Test/Service Start Date/Time
# + om77 - Effective Test/Service End Date/Time
# + om78 - Test/Service Default Duration Quantity
# + om79 - Test/Service Default Duration Units
# + om710 - Test/Service Default Frequency
# + om711 - Consent Indicator
# + om712 - Consent Identifier
# + om713 - Consent Effective Start Date/Time
# + om714 - Consent Effective End Date/Time
# + om715 - Consent Interval Quantity
# + om716 - Consent Interval Units
# + om717 - Consent Waiting Period Quantity
# + om718 - Consent Waiting Period Units
# + om719 - Effective Date/Time of Change
# + om720 - Entered By
# + om721 - Orderable-at Location
# + om722 - Formulary Status
# + om723 - Special Order Indicator
# + om724 - Primary Key Value - CDM
@hl7v2:SegmentDefinition {
    name: "OM7",
    required: false,
    maxReps: 0,
    fields: {
        "om71": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om72": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om73": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om74": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om75": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "om76": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om77": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om78": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om79": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om710": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om711": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om712": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om713": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om714": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om715": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om716": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om717": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om718": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om719": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om720": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "om721": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "om722": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om723": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om724": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type OM7 record {
    *hl7v2:Segment;
    string name = OM7_SEGMENT_NAME;
    NM om71 = "";
    CWE om72 = {};
    CWE[] om73 = [{}];
    TX om74 = "";
    ST[] om75 = [""];
    DTM om76 = "";
    DTM om77 = "";
    NM om78 = "";
    CWE om79 = {};
    CWE om710 = {};
    ID om711 = "";
    CWE om712 = {};
    DTM om713 = "";
    DTM om714 = "";
    NM om715 = "";
    CWE om716 = {};
    NM om717 = "";
    CWE om718 = {};
    DTM om719 = "";
    XCN om720 = {};
    PL[] om721 = [{}];
    CWE om722 = {};
    ID om723 = "";
    CWE[] om724 = [{}];
};

public const OM7_SEGMENT_NAME = "OM7";