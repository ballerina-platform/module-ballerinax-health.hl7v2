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
import ballerinax/health.hl7v231;
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v25;
import ballerinax/health.hl7v251;
import ballerinax/health.hl7v26;
import ballerinax/health.hl7v27;
import ballerinax/health.hl7v28;

# ## Union types for holding hl7 segments for supported hl7 versions. ####
# ########################################################################

# Union type for holding message header segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Msh hl7v23:MSH|hl7v231:MSH|hl7v24:MSH|hl7v25:MSH|hl7v251:MSH|hl7v26:MSH|hl7v27:MSH|hl7v28:MSH;

# Union type for holding patient allergy information segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Al1 hl7v23:AL1|hl7v231:AL1|hl7v24:AL1|hl7v25:AL1|hl7v251:AL1|hl7v26:AL1|hl7v27:AL1|hl7v28:AL1;

# Union type for holding event type segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Evn hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN|hl7v26:EVN|hl7v27:EVN|hl7v28:EVN;

# Union type for holding patient visit segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Dg1 hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1|hl7v26:DG1|hl7v27:DG1|hl7v28:DG1;

# Union type for holding next of kin segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk1 hl7v23:NK1|hl7v231:NK1|hl7v24:NK1|hl7v25:NK1|hl7v251:NK1|hl7v26:NK1|hl7v27:NK1|hl7v28:NK1;

# Union type for holding patient identification segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pd1 hl7v23:PD1|hl7v231:PD1|hl7v24:PD1|hl7v25:PD1|hl7v251:PD1|hl7v26:PD1|hl7v27:PD1|hl7v28:PD1;

# Union type for holding patient identification segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid hl7v23:PID|hl7v231:PID|hl7v24:PID|hl7v25:PID|hl7v251:PID|hl7v26:PID|hl7v27:PID|hl7v28:PID;

# Union type for holding patient visit segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pv1 hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1|hl7v27:PV1|hl7v28:PV1;

# Union type for holding patient visit additional information segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pv2 hl7v23:PV2|hl7v231:PV2|hl7v24:PV2|hl7v25:PV2|hl7v251:PV2|hl7v26:PV2|hl7v27:PV2|hl7v28:PV2;

# Union type for holding observation segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Obx hl7v23:OBX|hl7v231:OBX|hl7v24:OBX|hl7v25:OBX|hl7v251:OBX|hl7v26:OBX|hl7v27:OBX|hl7v28:OBX;

# Union type for holding common order segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Orc hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC|hl7v26:ORC|hl7v27:ORC|hl7v28:ORC;

# Union type for holding observation request segment for all supported hl7 versions.
# # Deprecated
@deprecated
public type Obr hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR|hl7v26:OBR|hl7v27:OBR|hl7v28:OBR;

# ## Union types defined for data types for supported hl7 versions. ####
# ######################################################################

# Union type for holding patient name for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid5 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for holding patient alias name for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid9 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:ST|hl7v28:ST;

# Union type for holding patient address for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid11 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];

# Union type for holding patient home phone number for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid13 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[];

# Union type for holding patient business phone number for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid14 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[];

# Union type for holding patient primary language for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid15 hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE;

# Union type for holding patient marital status for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pid16 string|hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE;

# Union type for patient primary facility for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pd13 hl7v23:XON[]|hl7v231:XON[]|hl7v24:XON[]|hl7v25:XON[]|hl7v251:XON[]|hl7v26:XON[]|hl7v27:XON[];

# Union type for patient primary care provider for all supported hl7 versions.
# # Deprecated
@deprecated
public type Pd14 hl7v23:XCN[]|hl7v231:XCN[]|hl7v24:XCN[]|hl7v25:XCN[]|hl7v251:XCN[]|hl7v26:XCN[]|hl7v27:ST;

# Union type for patient's extended person's name for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk12 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for patient's extended person's address for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk14 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];

# Union type for patient's extended person's home phone number for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk15 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's business phone number for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk16 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's contact role for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk17 hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE|hl7v27:CWE;

# Union type for patient's extended person's start date for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk18 hl7v23:DT|hl7v231:DT|hl7v24:DT|hl7v25:DT|hl7v251:DT|hl7v26:DT|hl7v27:DT;

# Union type for patient's extended person's end date for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk19 hl7v23:DT|hl7v231:DT|hl7v24:DT|hl7v25:DT|hl7v251:DT|hl7v26:DT|hl7v27:DT;

# Union type for patient's extended person's organization name for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk113 hl7v23:XON[]|hl7v231:XON[]|hl7v24:XON[]|hl7v25:XON[]|hl7v251:XON[]|hl7v26:XON[]|hl7v27:XON[];

# Union type for patient's extended person's gender for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk115 hl7v23:IS|hl7v231:IS|hl7v24:IS|hl7v25:IS|hl7v251:IS|hl7v26:IS|hl7v27:CWE;

# Union type for patient's extended person's contact person name for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk130 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for patient's extended person's contact person phone number for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk131 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's contact person address for all supported hl7 versions.
# # Deprecated
@deprecated
public type Nk132 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];
