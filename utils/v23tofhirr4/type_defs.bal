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

# Union type for holding notes and comments segment for all supported hl7 versions.
public type Nte hl7v23:NTE;

# Union type for holding procedure segment for all supported hl7 versions.
public type Pr1 hl7v23:PR1;

# Union type for holding role segment for all supported hl7 versions.
public type Rol hl7v23:ROL;

# Union type for holding pharmacy/treatment administration segment for all supported hl7 versions.
public type Rxa hl7v23:RXA;

# Union type for holding pharmacy/treatment order segment for all supported hl7 versions.
public type Rxo hl7v23:RXO;

# Union type for holding pharmacy/treatment route segment for all supported hl7 versions.
public type Rxr hl7v23:RXR;

# Union type for holding schedule activity information segment for all supported hl7 versions.
public type Sch hl7v23:SCH;

# Union type for holding transcription document header segment for all supported hl7 versions.
public type Txa hl7v23:TXA;

# Union type for holding insurance segment for all supported hl7 versions.
public type In1 hl7v23:IN1;

# Union type for holding insurance additional info - certification segment for all supported hl7 versions.
public type In3 hl7v23:IN3;

# Union type for holding merge patient information segment for all supported hl7 versions.
public type Mrg hl7v23:MRG;

# Union type for holding message acknowledgement segment for all supported hl7 versions.
public type Msa hl7v23:MSA;

# Union type for holding appointment information - general resource segment for all supported hl7 versions.
public type Aig hl7v23:AIG;

# Union type for holding appointment information - location resource segment for all supported hl7 versions.
public type Ail hl7v23:AIL;

# Union type for holding appointment information - personnel resource segment for all supported hl7 versions.
public type Aip hl7v23:AIP;

# Union type for holding appointment information - service segment for all supported hl7 versions.
public type Ais hl7v23:AIS;

# Union type for CX (composite ID with check digit) data type for all supported hl7 versions.
public type Cx hl7v23:CX;

# Union type for PL (person location) data type for all supported hl7 versions.
public type Pl hl7v23:PL;
