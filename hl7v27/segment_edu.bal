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
# + edu1 - Set ID - EDU
# + edu2 - Academic Degree
# + edu3 - Academic Degree Program Date Range
# + edu4 - Academic Degree Program Participation Date Range
# + edu5 - Academic Degree Granted Date
# + edu6 - School
# + edu7 - School Type Code
# + edu8 - School Address
# + edu9 - Major Field of Study
@hl7v2:SegmentDefinition {
    name: "EDU",
    required: false,
    maxReps: 0,
    fields: {
        "edu1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "edu2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "edu3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "edu4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "edu5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "edu6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "edu7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "edu8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "edu9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type EDU record {
    *hl7v2:Segment;
    string name = EDU_SEGMENT_NAME;
    SI edu1 = "";
    CWE edu2 = {};
    DR edu3 = {};
    DR edu4 = {};
    DT edu5 = "";
    XON edu6 = {};
    CWE edu7 = {};
    XAD edu8 = {};
    CWE[] edu9 = [{}];
};

public const EDU_SEGMENT_NAME = "EDU";