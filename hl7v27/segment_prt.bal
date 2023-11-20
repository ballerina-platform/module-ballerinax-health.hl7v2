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
# + prt1 - Participation Instance ID
# + prt2 - Action Code
# + prt3 - Action Reason
# + prt4 - Participation
# + prt5 - Participation Person
# + prt6 - Participation Person Provider Type
# + prt7 - Participant Organization Unit Type
# + prt8 - Participation Organization
# + prt9 - Participant Location
# + prt10 - Participation Device
# + prt11 - Participation Begin Date/Time (arrival time)
# + prt12 - Participation End Date/Time (departure time)
# + prt13 - Participation Qualitative Duration
# + prt14 - Participation Address
# + prt15 - Participant Telecommunication Address
@hl7v2:SegmentDefinition {
    name: "PRT",
    required: false,
    maxReps: 0,
    fields: {
        "prt1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "prt2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prt3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prt4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prt5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "prt6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prt7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prt8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "prt9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "prt10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "prt11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prt12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prt13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prt14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "prt15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type PRT record {
    *hl7v2:Segment;
    string name = PRT_SEGMENT_NAME;
    EI prt1 = {};
    ID prt2 = "";
    CWE prt3 = {};
    CWE prt4 = {};
    XCN[] prt5 = [{}];
    CWE prt6 = {};
    CWE prt7 = {};
    XON[] prt8 = [{}];
    PL[] prt9 = [{}];
    EI[] prt10 = [{}];
    DTM prt11 = "";
    DTM prt12 = "";
    CWE prt13 = {};
    XAD[] prt14 = [{}];
    XTN[] prt15 = [{}];
};

public const PRT_SEGMENT_NAME = "PRT";