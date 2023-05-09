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

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type SI int;

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type ST string;

# Telephone Number
# Format:  [NN] [(999)]999-9999[X99999][B99999][C any text]n
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TN string;

# Text Data
# String data meant for user display
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TX string;

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type DTM string;

# Time
# Format: HH[MM[SS[.S[S[S[S]]]]]][+/-ZZZZ] 
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TM string;

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type IS string;

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type ID string;

# Formatted Text Data
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type FT string;

# Numeric. A number represented as a series of ASCII numeric characters consisting of an optional leading sign ( + or -),
#  the digits and an optional decimal point.
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type NM float;

# Date string
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type DT string;

# Variable Datatype
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type VARIES anydata;

# Primitive Data Type Header Definition
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_CD_ELECTRODE string;

# Primitive Data Type Header Definition
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_MDV string;

# Primitive Data Type Header Definition
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_CSU string;

# Primitive Data Type Header Definition
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_OSD string;

# Primitive Data Type Header Definition
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_CCP string;
