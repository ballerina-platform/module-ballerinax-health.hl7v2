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
# + mfa1 - Record-Level Event Code
# + mfa2 - MFN Control ID
# + mfa3 - Event Completion Date/Time
# + mfa4 - Error Return Code and/or Text
# + mfa5 - Primary Key Value
@hl7v2:SegmentDefinition {
    name: "MFA",
    required: false,
    maxReps: 0,
    fields: {
        "mfa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "mfa2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "mfa3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "mfa4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "mfa5": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type MFA record {
    *hl7v2:Segment;
    string name = MFA_SEGMENT_NAME;
    ID mfa1 = "";
    ST mfa2 = "";
    TS mfa3 = {};
    CE mfa4 = {};
    CE[] mfa5 = [{}];
};

public const MFA_SEGMENT_NAME = "MFA";