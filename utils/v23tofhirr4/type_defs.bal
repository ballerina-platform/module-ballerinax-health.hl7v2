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

import ballerinax/health.hl7v23;

# ## Union types for holding hl7 segments for supported hl7 versions. ####
# ########################################################################

# Union type for holding message header segment for all supported hl7 versions.

public type Msh hl7v23:MSH;

# Union type for holding patient allergy information segment for all supported hl7 versions.

public type Al1 hl7v23:AL1;

# Union type for holding event type segment for all supported hl7 versions.

public type Evn hl7v23:EVN;

# Union type for holding patient visit segment for all supported hl7 versions.

public type Dg1 hl7v23:DG1;

# Union type for holding next of kin segment for all supported hl7 versions.

public type Nk1 hl7v23:NK1;

# Union type for holding patient identification segment for all supported hl7 versions.

public type Pd1 hl7v23:PD1;

# Union type for holding patient identification segment for all supported hl7 versions.

public type Pid hl7v23:PID;

# Union type for holding patient visit segment for all supported hl7 versions.

public type Pv1 hl7v23:PV1;

# Union type for holding patient visit additional information segment for all supported hl7 versions.

public type Pv2 hl7v23:PV2;

# Union type for holding observation segment for all supported hl7 versions.

public type Obx hl7v23:OBX;

# Union type for holding common order segment for all supported hl7 versions.

public type Orc hl7v23:ORC;

# Union type for holding observation request segment for all supported hl7 versions.

public type Obr hl7v23:OBR;

# ## Union types defined for data types for supported hl7 versions. ####
# ######################################################################

# Union type for holding patient name for all supported hl7 versions.

public type Pid5 hl7v23:XPN[];

# Union type for holding patient alias name for all supported hl7 versions.

public type Pid9 hl7v23:XPN[];

# Union type for holding patient address for all supported hl7 versions.

public type Pid11 hl7v23:XAD[];

# Union type for holding patient home phone number for all supported hl7 versions.

public type Pid13 hl7v23:XTN[];

# Union type for holding patient business phone number for all supported hl7 versions.

public type Pid14 hl7v23:XTN[];

# Union type for holding patient primary language for all supported hl7 versions.

public type Pid15 hl7v23:CE;

# Union type for holding patient marital status for all supported hl7 versions.

public type Pid16 string|hl7v23:CE;

# Union type for patient primary facility for all supported hl7 versions.

public type Pd13 hl7v23:XON[];

# Union type for patient primary care provider for all supported hl7 versions.

public type Pd14 hl7v23:XCN[];

# Union type for patient's extended person's name for all supported hl7 versions.

public type Nk12 hl7v23:XPN[];

# Union type for patient's extended person's address for all supported hl7 versions.

public type Nk14 hl7v23:XAD[];

# Union type for patient's extended person's home phone number for all supported hl7 versions.

public type Nk15 hl7v23:XTN[];

# Union type for patient's extended person's business phone number for all supported hl7 versions.

public type Nk16 hl7v23:XTN[];

# Union type for patient's extended person's contact role for all supported hl7 versions.

public type Nk17 hl7v23:CE;

# Union type for patient's extended person's start date for all supported hl7 versions.

public type Nk18 hl7v23:DT;

# Union type for patient's extended person's end date for all supported hl7 versions.

public type Nk19 hl7v23:DT;

# Union type for patient's extended person's organization name for all supported hl7 versions.

public type Nk113 hl7v23:XON[];

# Union type for patient's extended person's gender for all supported hl7 versions.

public type Nk115 hl7v23:IS;

# Union type for patient's extended person's contact person name for all supported hl7 versions.

public type Nk130 hl7v23:XPN[];

# Union type for patient's extended person's contact person phone number for all supported hl7 versions.

public type Nk131 hl7v23:XTN[];

# Union type for patient's extended person's contact person address for all supported hl7 versions.

public type Nk132 hl7v23:XAD[];
