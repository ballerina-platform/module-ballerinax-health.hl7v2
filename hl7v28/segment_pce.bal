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
# + pce1 - PCE-Segmentnummer
# + pce2 - zu belastende Kostenstelle
# + pce3 - Leistungsziffer / Buchungstext / Entgeltart EBM (GSG)
# + pce4 - Einzelpreis / Punktwert
@hl7v2:SegmentDefinition {
    name: "PCE",
    required: false,
    maxReps: 0,
    fields: {
        "pce1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pce2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pce3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pce4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        }
    }
}
public type PCE record {
    *hl7v2:Segment;
    string name = PCE_SEGMENT_NAME;
    SI pce1 = "";
    CX pce2 = {};
    CWE pce3 = {};
    CP pce4 = {};
};

public const PCE_SEGMENT_NAME = "PCE";