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
# + tcc1 - Universal Service Identifier
# + tcc2 - Test Application Identifier
# + tcc3 - Specimen Source
# + tcc4 - Auto-Dilution Factor Default
# + tcc5 - Rerun Dilution Factor Default
# + tcc6 - Pre-Dilution Factor Default
# + tcc7 - Endogenous Content of Pre-Dilution Diluent
# + tcc8 - Inventory Limits Warning Level
# + tcc9 - Automatic Rerun Allowed
# + tcc10 - Automatic Repeat Allowed
# + tcc11 - Automatic Reflex Allowed
# + tcc12 - Equipment Dynamic Range
# + tcc13 - Units
# + tcc14 - Processing Type
@hl7v2:SegmentDefinition {
    name: "TCC",
    required: false,
    maxReps: 0,
    fields: {
        "tcc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "tcc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "tcc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SPS
        },
        "tcc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "tcc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "tcc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type TCC record {
    *hl7v2:Segment;
    string name = TCC_SEGMENT_NAME;
    CE tcc1 = {};
    EI tcc2 = {};
    SPS tcc3 = {};
    SN tcc4 = {};
    SN tcc5 = {};
    SN tcc6 = {};
    SN tcc7 = {};
    NM tcc8 = "";
    ID tcc9 = "";
    ID tcc10 = "";
    ID tcc11 = "";
    SN tcc12 = {};
    CE tcc13 = {};
    CE tcc14 = {};
};

public const TCC_SEGMENT_NAME = "TCC";