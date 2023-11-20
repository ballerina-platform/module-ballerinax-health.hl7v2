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
# + stz1 - Sterilization Type
# + stz2 - Sterilization Cycle
# + stz3 - Maintenance Cycle
# + stz4 - Maintenance Type
@hl7v2:SegmentDefinition {
    name: "STZ",
    required: false,
    maxReps: 0,
    fields: {
        "stz1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stz2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stz3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stz4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type STZ record {
    *hl7v2:Segment;
    string name = STZ_SEGMENT_NAME;
    CWE stz1 = {};
    CWE stz2 = {};
    CWE stz3 = {};
    CWE stz4 = {};
};

public const STZ_SEGMENT_NAME = "STZ";