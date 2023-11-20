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
# + tcd1 - Universal Service Identifier
# + tcd2 - Auto-Dilution Factor
# + tcd3 - Rerun Dilution Factor
# + tcd4 - Pre-Dilution Factor
# + tcd5 - Endogenous Content of Pre-Dilution Diluent
# + tcd6 - Automatic Repeat Allowed
# + tcd7 - Reflex Allowed
# + tcd8 - Analyte Repeat Status
@hl7v2:SegmentDefinition {
    name: "TCD",
    required: false,
    maxReps: 0,
    fields: {
        "tcd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "tcd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type TCD record {
    *hl7v2:Segment;
    string name = TCD_SEGMENT_NAME;
    CWE tcd1 = {};
    SN tcd2 = {};
    SN tcd3 = {};
    SN tcd4 = {};
    SN tcd5 = {};
    ID tcd6 = "";
    ID tcd7 = "";
    CWE tcd8 = {};
};

public const TCD_SEGMENT_NAME = "TCD";