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
# + om51 - Sequence Number - Test/Observation Master File
# + om52 - Test/Observations Included Within an Ordered Test Battery
            
# + om53 - Observation ID Suffixes
@hl7v2:SegmentDefinition {
    name: "OM5",
    required: false,
    maxReps: 0,
    fields: {
        "om51": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om52": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om53": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type OM5 record {
    *hl7v2:Segment;
    string name = OM5_SEGMENT_NAME;
    NM om51 = "";
    CWE[] om52 = [{}];
    ST om53 = "";
};

public const OM5_SEGMENT_NAME = "OM5";