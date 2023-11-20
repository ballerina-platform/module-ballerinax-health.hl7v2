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
# + in11 - Set ID - IN1
# + in12 - Health Plan ID
# + in13 - Insurance Company ID
# + in14 - Insurance Company Name
# + in15 - Insurance Company Address
# + in16 - Insurance Co Contact Person
# + in17 - Insurance Co Phone Number
# + in18 - Group Number
# + in19 - Group Name
# + in110 - Insured's Group Emp ID
# + in111 - Insured's Group Emp Name
# + in112 - Plan Effective Date
# + in113 - Plan Expiration Date
# + in114 - Authorization Information
# + in115 - Plan Type
# + in116 - Name Of Insured
# + in117 - Insured's Relationship To Patient
# + in118 - Insured's Date Of Birth
# + in119 - Insured's Address
# + in120 - Assignment Of Benefits
# + in121 - Coordination Of Benefits
# + in122 - Coord Of Ben. Priority
# + in123 - Notice Of Admission Flag
# + in124 - Notice Of Admission Date
# + in125 - Report Of Eligibility Flag
# + in126 - Report Of Eligibility Date
# + in127 - Release Information Code
# + in128 - Pre-Admit Cert (PAC)
# + in129 - Verification Date/Time
# + in130 - Verification By
# + in131 - Type Of Agreement Code
# + in132 - Billing Status
# + in133 - Lifetime Reserve Days
# + in134 - Delay Before L.R. Day
# + in135 - Company Plan Code
# + in136 - Policy Number
# + in137 - Policy Deductible
# + in139 - Policy Limit - Days
# + in142 - Insured's Employment Status
# + in143 - Insured's Administrative Sex
# + in144 - Insured's Employer's Address
# + in145 - Verification Status
# + in146 - Prior Insurance Plan ID
# + in147 - Coverage Type
# + in148 - Handicap
# + in149 - Insured's ID Number
# + in150 - Signature Code
# + in151 - Signature Code Date
# + in152 - Insured's Birth Place
# + in153 - VIP Indicator
# + in154 - External Health Plan Identifiers
@hl7v2:SegmentDefinition {
    name: "IN1",
    required: false,
    maxReps: 0,
    fields: {
        "in11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "in12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in111": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: AUI
        },
        "in115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "in139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in149": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in151": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in154": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        }
    }
}
public type IN1 record {
    *hl7v2:Segment;
    string name = IN1_SEGMENT_NAME;
    SI in11 = "";
    CWE in12 = {};
    CX[] in13 = [{}];
    XON[] in14 = [{}];
    XAD[] in15 = [{}];
    XPN[] in16 = [{}];
    XTN[] in17 = [{}];
    ST in18 = "";
    XON[] in19 = [{}];
    CX[] in110 = [{}];
    XON[] in111 = [{}];
    DT in112 = "";
    DT in113 = "";
    AUI in114 = {};
    CWE in115 = {};
    XPN[] in116 = [{}];
    CWE in117 = {};
    DTM in118 = "";
    XAD[] in119 = [{}];
    CWE in120 = {};
    CWE in121 = {};
    ST in122 = "";
    ID in123 = "";
    DT in124 = "";
    ID in125 = "";
    DT in126 = "";
    CWE in127 = {};
    ST in128 = "";
    DTM in129 = "";
    XCN[] in130 = [{}];
    CWE in131 = {};
    CWE in132 = {};
    NM in133 = "";
    NM in134 = "";
    CWE in135 = {};
    ST in136 = "";
    CP in137 = {};
    NM in139 = "";
    CWE in142 = {};
    CWE in143 = {};
    XAD[] in144 = [{}];
    ST in145 = "";
    CWE in146 = {};
    CWE in147 = {};
    CWE in148 = {};
    CX[] in149 = [{}];
    CWE in150 = {};
    DT in151 = "";
    ST in152 = "";
    CWE in153 = {};
    CX[] in154 = [{}];
};

public const IN1_SEGMENT_NAME = "IN1";