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
# + csp1 - Study Phase Identifier
# + csp2 - Date/time Study Phase Began
# + csp3 - Date/time Study Phase Ended
# + csp4 - Study Phase Evaluability
@hl7v2:SegmentDefinition {
    name: "CSP",
    required: false,
    maxReps: 0,
    fields: {
        "csp1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "csp2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "csp3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "csp4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type CSP record {
    *hl7v2:Segment;
    string name = CSP_SEGMENT_NAME;
    CE csp1 = {};
    TS csp2 = {};
    TS csp3 = {};
    CE csp4 = {};
};

public const CSP_SEGMENT_NAME = "CSP";
