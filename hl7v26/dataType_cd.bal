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

# Data type description
#
# + cd1 - Channel Identifier
# + cd2 - Waveform Source
# + cd3 - Channel Sensitivity and Units
# + cd4 - Channel Calibration Parameters
# + cd5 - Channel Sampling Frequency
# + cd6 - Minimum and Maximum Data Values
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CD record {
    *hl7v2:CompositeType;
    WVI cd1 = {};
    WVS cd2 = {};
    CSU cd3 = {};
    CCP cd4 = {};
    NM cd5 = "";
    NR cd6 = {};
};
