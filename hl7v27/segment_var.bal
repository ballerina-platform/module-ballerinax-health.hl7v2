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
# + var1 - Variance Instance ID
# + var2 - Documented Date/Time
# + var3 - Stated Variance Date/Time
# + var4 - Variance Originator
# + var5 - Variance Classification
# + var6 - Variance Description
@hl7v2:SegmentDefinition {
    name: "VAR",
    required: false,
    maxReps: 0,
    fields: {
        "var1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "var2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "var3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "var4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "var5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "var6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        }
    }
}
public type VAR record {
    *hl7v2:Segment;
    string name = VAR_SEGMENT_NAME;
    EI var1 = {};
    DTM var2 = "";
    DTM var3 = "";
    XCN[] var4 = [{}];
    CWE var5 = {};
    ST[] var6 = [""];
};

public const VAR_SEGMENT_NAME = "VAR";