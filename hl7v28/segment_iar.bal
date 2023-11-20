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
# + iar1 - 3296CWEHL7Allergy Reaction Code
# + iar2 - 3297CWEHL70128HL7Allergy Severity Code
# + iar3 - 3298CWEHL70436HL7Sensitivity to Causative Agent Code
# + iar4 - 3299STHL7Management
@hl7v2:SegmentDefinition {
    name: "IAR",
    required: false,
    maxReps: 0,
    fields: {
        "iar1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iar2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iar3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iar4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type IAR record {
    *hl7v2:Segment;
    string name = IAR_SEGMENT_NAME;
    CWE iar1 = {};
    CWE iar2 = {};
    CWE iar3 = {};
    ST iar4 = "";
};

public const IAR_SEGMENT_NAME = "IAR";