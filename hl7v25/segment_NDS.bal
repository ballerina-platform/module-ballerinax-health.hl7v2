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
# + nds1 - Notification Reference Number
# + nds2 - Notification Date/Time
# + nds3 - Notification Alert Severity
# + nds4 - Notification Code
@hl7v2:SegmentDefinition {
    name: "NDS",
    required: false,
    maxReps: 0,
    fields: {
        "nds1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "nds2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "nds3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "nds4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type NDS record {
    *hl7v2:Segment;
    string name = NDS_SEGMENT_NAME;
    NM nds1 = "";
    TS nds2 = {};
    CE nds3 = {};
    CE nds4 = {};
};

public const NDS_SEGMENT_NAME = "NDS";