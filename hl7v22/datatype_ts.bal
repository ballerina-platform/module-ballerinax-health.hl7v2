// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# Time Stamp
# Contains the exact time of an event, including the date and time. Time stamp fields are always in the format: YYYYMMDD[HHMM[SS[.SSSS]]][+/-ZZZZ]^<degree of precision> The date portion of a time stamp follows the rules...
# + ts1 - Time Of An Event
# + ts2 - Degree Of Precision

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TS record {
    *hl7v2:CompositeType;
    ST ts1 = "";
    ST ts2 = "";
};
