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
# + ovr1 - Art der Übersteuerung
# + ovr2 - Begründung der Übersteuerung
# + ovr3 - Kommentar zur Übersteuerung
# + ovr4 - Erfasser der Übersteuerung
# + ovr5 - Übersteuerung autorisiert durch
@hl7v2:SegmentDefinition {
    name: "OVR",
    required: false,
    maxReps: 0,
    fields: {
        "ovr1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ovr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ovr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "ovr4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "ovr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        }
    }
}
public type OVR record {
    *hl7v2:Segment;
    string name = OVR_SEGMENT_NAME;
    CWE ovr1 = {};
    CWE ovr2 = {};
    TX ovr3 = "";
    XCN ovr4 = {};
    XCN ovr5 = {};
};

public const OVR_SEGMENT_NAME = "OVR";