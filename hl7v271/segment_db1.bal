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
# + db11 - DB1-Segmentnummer
# + db12 - Behinderte Person
# + db13 - ID der behinderten Person
# + db14 - Merkmal Behinderung
# + db15 - Datum Beginn der Behinderung
# + db16 - Datum Ende der Behinderung
# + db17 - Ende der Arbeitsunfähigkeit
# + db18 - Beginn der Arbeitsunfähigkeit
@hl7v2:SegmentDefinition {
    name: "DB1",
    required: false,
    maxReps: 0,
    fields: {
        "db11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "db12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "db13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "db14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "db15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "db16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "db17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "db18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type DB1 record {
    *hl7v2:Segment;
    string name = DB1_SEGMENT_NAME;
    SI db11 = "";
    CWE db12 = {};
    CX[] db13 = [{}];
    ID db14 = "";
    DT db15 = "";
    DT db16 = "";
    DT db17 = "";
    DT db18 = "";
};

public const DB1_SEGMENT_NAME = "DB1";