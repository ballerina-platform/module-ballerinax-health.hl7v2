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
# + aut1 - Authorizing Payor, Plan ID
# + aut2 - Authorizing Payor, Company ID
# + aut3 - Authorizing Payor, Company Name
# + aut4 - Authorization Effective Date
# + aut5 - Authorization Expiration Date
# + aut6 - Authorization Identifier
# + aut7 - Reimbursement Limit
# + aut8 - Requested Number of Treatments
# + aut9 - Authorized Number of Treatments
# + aut10 - Process Date
# + aut11 - Requested Discipline(s)
# + aut12 - Authorized Discipline(s)
@hl7v2:SegmentDefinition {
    name: "AUT",
    required: false,
    maxReps: 0,
    fields: {
        "aut1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aut2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aut3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "aut4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aut5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aut6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "aut7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "aut8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "aut9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "aut10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aut11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "aut12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type AUT record {
    *hl7v2:Segment;
    string name = AUT_SEGMENT_NAME;
    CWE aut1 = {};
    CWE aut2 = {};
    ST aut3 = "";
    DTM aut4 = "";
    DTM aut5 = "";
    EI aut6 = {};
    CP aut7 = {};
    CQ aut8 = {};
    CQ aut9 = {};
    DTM aut10 = "";
    CWE[] aut11 = [{}];
    CWE[] aut12 = [{}];
};

public const AUT_SEGMENT_NAME = "AUT";