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
public type Msh hl7v23:MSH|hl7v231:MSH|hl7v24:MSH|hl7v25:MSH|hl7v251:MSH|hl7v26:MSH|hl7v27:MSH|hl7v28:MSH;

# Union type for holding patient allergy information segment for all supported hl7 versions.
public type Al1 hl7v23:AL1|hl7v231:AL1|hl7v24:AL1|hl7v25:AL1|hl7v251:AL1|hl7v26:AL1|hl7v27:AL1|hl7v28:AL1;

# Union type for holding event type segment for all supported hl7 versions.
public type Evn hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN|hl7v26:EVN|hl7v27:EVN|hl7v28:EVN;

# Union type for holding patient visit segment for all supported hl7 versions.
public type Dg1 hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1|hl7v26:DG1|hl7v27:DG1|hl7v28:DG1;

# Union type for holding next of kin segment for all supported hl7 versions.
public type Nk1 hl7v23:NK1|hl7v231:NK1|hl7v24:NK1|hl7v25:NK1|hl7v251:NK1|hl7v26:NK1|hl7v27:NK1|hl7v28:NK1;

# Union type for holding patient identification segment for all supported hl7 versions.
public type Pd1 hl7v23:PD1|hl7v231:PD1|hl7v24:PD1|hl7v25:PD1|hl7v251:PD1|hl7v26:PD1|hl7v27:PD1|hl7v28:PD1;

# Union type for holding patient identification segment for all supported hl7 versions.
public type Pid hl7v23:PID|hl7v231:PID|hl7v24:PID|hl7v25:PID|hl7v251:PID|hl7v26:PID|hl7v27:PID|hl7v28:PID;

# Union type for holding patient visit segment for all supported hl7 versions.
public type Pv1 hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1|hl7v27:PV1|hl7v28:PV1;

# Union type for holding patient visit additional information segment for all supported hl7 versions.
public type Pv2 hl7v23:PV2|hl7v231:PV2|hl7v24:PV2|hl7v25:PV2|hl7v251:PV2|hl7v26:PV2|hl7v27:PV2|hl7v28:PV2;

# Union type for holding observation segment for all supported hl7 versions.
public type Obx hl7v23:OBX|hl7v231:OBX|hl7v24:OBX|hl7v25:OBX|hl7v251:OBX|hl7v26:OBX|hl7v27:OBX|hl7v28:OBX;

# Union type for holding common order segment for all supported hl7 versions.
public type Orc hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC|hl7v26:ORC|hl7v27:ORC|hl7v28:ORC;

# Union type for holding observation request segment for all supported hl7 versions.
public type Obr hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR|hl7v26:OBR|hl7v27:OBR|hl7v28:OBR;

# Union type for holding IN3 segment for all supported hl7 versions.
public type In3 hl7v23:IN3|hl7v231:IN3|hl7v24:IN3|hl7v25:IN3|hl7v251:IN3|hl7v26:IN3|hl7v27:IN3|hl7v28:IN3;

# Union type for holding DRG segment for all supported hl7 versions.
public type Drg hl7v23:DRG|hl7v231:DRG|hl7v24:DRG|hl7v25:DRG|hl7v251:DRG|hl7v26:DRG|hl7v27:DRG|hl7v28:DRG;

# Union type for holding DSC segment for all supported hl7 versions.
public type Dsc hl7v23:DSC|hl7v231:DSC|hl7v24:DSC|hl7v25:DSC|hl7v251:DSC|hl7v26:DSC|hl7v27:DSC|hl7v28:DSC;

# Union type for holding PTH segment for all supported hl7 versions.
public type Pth hl7v23:PTH|hl7v231:PTH|hl7v24:PTH|hl7v25:PTH|hl7v251:PTH|hl7v26:PTH|hl7v27:PTH|hl7v28:PTH;

# Union type for holding IN2 segment for all supported hl7 versions.
public type In2 hl7v23:IN2|hl7v231:IN2|hl7v24:IN2|hl7v25:IN2|hl7v251:IN2|hl7v26:IN2|hl7v27:IN2|hl7v28:IN2;

# Union type for holding LRL segment for all supported hl7 versions.
public type Lrl hl7v23:LRL|hl7v231:LRL|hl7v24:LRL|hl7v25:LRL|hl7v251:LRL|hl7v26:LRL|hl7v27:LRL|hl7v28:LRL;

# Union type for holding GT1 segment for all supported hl7 versions.
public type Gt1 hl7v23:GT1|hl7v231:GT1|hl7v24:GT1|hl7v25:GT1|hl7v251:GT1|hl7v26:GT1|hl7v27:GT1|hl7v28:GT1;

# Union type for holding IN1 segment for all supported hl7 versions.
public type In1 hl7v23:IN1|hl7v231:IN1|hl7v24:IN1|hl7v25:IN1|hl7v251:IN1|hl7v26:IN1|hl7v27:IN1|hl7v28:IN1;

# Union type for holding GOL segment for all supported hl7 versions.
public type Gol hl7v23:GOL|hl7v231:GOL|hl7v24:GOL|hl7v25:GOL|hl7v251:GOL|hl7v26:GOL|hl7v27:GOL|hl7v28:GOL;

# Union type for holding CM2 segment for all supported hl7 versions.
public type Cm2 hl7v23:CM2|hl7v231:CM2|hl7v24:CM2|hl7v25:CM2|hl7v251:CM2|hl7v26:CM2|hl7v27:CM2|hl7v28:CM2;

# Union type for holding SPR segment for all supported hl7 versions.
public type Spr hl7v23:SPR|hl7v231:SPR|hl7v24:SPR|hl7v25:SPR|hl7v251:SPR;

# Union type for holding NPU segment for all supported hl7 versions.
public type Npu hl7v23:NPU|hl7v231:NPU|hl7v24:NPU|hl7v25:NPU|hl7v251:NPU|hl7v26:NPU|hl7v27:NPU|hl7v28:NPU;

# Union type for holding RXO segment for all supported hl7 versions.
public type Rxo hl7v23:RXO|hl7v231:RXO|hl7v24:RXO|hl7v25:RXO|hl7v251:RXO|hl7v26:RXO|hl7v27:RXO|hl7v28:RXO;

# Union type for holding PCR segment for all supported hl7 versions.
public type Pcr hl7v23:PCR|hl7v231:PCR|hl7v24:PCR|hl7v25:PCR|hl7v251:PCR|hl7v26:PCR|hl7v27:PCR|hl7v28:PCR;

# Union type for holding LDP segment for all supported hl7 versions.
public type Ldp hl7v23:LDP|hl7v231:LDP|hl7v24:LDP|hl7v25:LDP|hl7v251:LDP|hl7v26:LDP|hl7v27:LDP|hl7v28:LDP;

# Union type for holding CM1 segment for all supported hl7 versions.
public type Cm1 hl7v23:CM1|hl7v231:CM1|hl7v24:CM1|hl7v25:CM1|hl7v251:CM1|hl7v26:CM1|hl7v27:CM1|hl7v28:CM1;

# Union type for holding AUT segment for all supported hl7 versions.
public type Aut hl7v23:AUT|hl7v231:AUT|hl7v24:AUT|hl7v25:AUT|hl7v251:AUT|hl7v26:AUT|hl7v27:AUT|hl7v28:AUT;

# Union type for holding DSP segment for all supported hl7 versions.
public type Dsp hl7v23:DSP|hl7v231:DSP|hl7v24:DSP|hl7v25:DSP|hl7v251:DSP|hl7v26:DSP|hl7v27:DSP|hl7v28:DSP;

# Union type for holding CTD segment for all supported hl7 versions.
public type Ctd hl7v23:CTD|hl7v231:CTD|hl7v24:CTD|hl7v25:CTD|hl7v251:CTD|hl7v26:CTD|hl7v27:CTD|hl7v28:CTD;

# Union type for holding CM0 segment for all supported hl7 versions.
public type Cm0 hl7v23:CM0|hl7v231:CM0|hl7v24:CM0|hl7v25:CM0|hl7v251:CM0|hl7v26:CM0|hl7v27:CM0|hl7v28:CM0;

# Union type for holding RQD segment for all supported hl7 versions.
public type Rqd hl7v23:RQD|hl7v231:RQD|hl7v24:RQD|hl7v25:RQD|hl7v251:RQD|hl7v26:RQD|hl7v27:RQD|hl7v28:RQD;

# Union type for holding ERR segment for all supported hl7 versions.
public type Err hl7v23:ERR|hl7v231:ERR|hl7v24:ERR|hl7v25:ERR|hl7v251:ERR|hl7v26:ERR|hl7v27:ERR|hl7v28:ERR;

# Union type for holding MFI segment for all supported hl7 versions.
public type Mfi hl7v23:MFI|hl7v231:MFI|hl7v24:MFI|hl7v25:MFI|hl7v251:MFI|hl7v26:MFI|hl7v27:MFI|hl7v28:MFI;

# Union type for holding FT1 segment for all supported hl7 versions.
public type Ft1 hl7v23:FT1|hl7v231:FT1|hl7v24:FT1|hl7v25:FT1|hl7v251:FT1|hl7v26:FT1|hl7v27:FT1|hl7v28:FT1;

# Union type for holding ODT segment for all supported hl7 versions.
public type Odt hl7v23:ODT|hl7v231:ODT|hl7v24:ODT|hl7v25:ODT|hl7v251:ODT|hl7v26:ODT|hl7v27:ODT|hl7v28:ODT;

# Union type for holding CSP segment for all supported hl7 versions.
public type Csp hl7v23:CSP|hl7v231:CSP|hl7v24:CSP|hl7v25:CSP|hl7v251:CSP|hl7v26:CSP|hl7v27:CSP|hl7v28:CSP;

# Union type for holding QAK segment for all supported hl7 versions.
public type Qak hl7v23:QAK|hl7v231:QAK|hl7v24:QAK|hl7v25:QAK|hl7v251:QAK|hl7v26:QAK|hl7v27:QAK|hl7v28:QAK;

# Union type for holding ERQ segment for all supported hl7 versions.
public type Erq hl7v23:ERQ|hl7v231:ERQ|hl7v24:ERQ|hl7v25:ERQ|hl7v251:ERQ;

# Union type for holding RQ1 segment for all supported hl7 versions.
public type Rq1 hl7v23:RQ1|hl7v231:RQ1|hl7v24:RQ1|hl7v25:RQ1|hl7v251:RQ1|hl7v26:RQ1|hl7v27:RQ1|hl7v28:RQ1;

# Union type for holding RDF segment for all supported hl7 versions.
public type Rdf hl7v23:RDF|hl7v231:RDF|hl7v24:RDF|hl7v25:RDF|hl7v251:RDF|hl7v26:RDF|hl7v27:RDF|hl7v28:RDF;

# Union type for holding FTS segment for all supported hl7 versions.
public type Fts hl7v23:FTS|hl7v231:FTS|hl7v24:FTS|hl7v25:FTS|hl7v251:FTS|hl7v26:FTS|hl7v27:FTS|hl7v28:FTS;

# Union type for holding CDM segment for all supported hl7 versions.
public type Cdm hl7v23:CDM|hl7v231:CDM|hl7v24:CDM|hl7v25:CDM|hl7v251:CDM|hl7v26:CDM|hl7v27:CDM|hl7v28:CDM;

# Union type for holding CSS segment for all supported hl7 versions.
public type Css hl7v23:CSS|hl7v231:CSS|hl7v24:CSS|hl7v25:CSS|hl7v251:CSS|hl7v26:CSS|hl7v27:CSS|hl7v28:CSS;

# Union type for holding CSR segment for all supported hl7 versions.
public type Csr hl7v23:CSR|hl7v231:CSR|hl7v24:CSR|hl7v25:CSR|hl7v251:CSR|hl7v26:CSR|hl7v27:CSR|hl7v28:CSR;

# Union type for holding BLG segment for all supported hl7 versions.
public type Blg hl7v23:BLG|hl7v231:BLG|hl7v24:BLG|hl7v25:BLG|hl7v251:BLG|hl7v26:BLG|hl7v27:BLG|hl7v28:BLG;

# Union type for holding PSH segment for all supported hl7 versions.
public type Psh hl7v23:PSH|hl7v231:PSH|hl7v24:PSH|hl7v25:PSH|hl7v251:PSH|hl7v26:PSH|hl7v27:PSH|hl7v28:PSH;

# Union type for holding LCC segment for all supported hl7 versions.
public type Lcc hl7v23:LCC|hl7v231:LCC|hl7v24:LCC|hl7v25:LCC|hl7v251:LCC|hl7v26:LCC|hl7v27:LCC|hl7v28:LCC;

# Union type for holding RDT segment for all supported hl7 versions.
public type Rdt hl7v23:RDT|hl7v231:RDT|hl7v24:RDT|hl7v25:RDT|hl7v251:RDT|hl7v26:RDT|hl7v27:RDT|hl7v28:RDT;

# Union type for holding ODS segment for all supported hl7 versions.
public type Ods hl7v23:ODS|hl7v231:ODS|hl7v24:ODS|hl7v25:ODS|hl7v251:ODS|hl7v26:ODS|hl7v27:ODS|hl7v28:ODS;

# Union type for holding AIL segment for all supported hl7 versions.
public type Ail hl7v23:AIL|hl7v231:AIL|hl7v24:AIL|hl7v25:AIL|hl7v251:AIL|hl7v26:AIL|hl7v27:AIL|hl7v28:AIL;

# Union type for holding ARQ segment for all supported hl7 versions.
public type Arq hl7v23:ARQ|hl7v231:ARQ|hl7v24:ARQ|hl7v25:ARQ|hl7v251:ARQ|hl7v26:ARQ|hl7v27:ARQ|hl7v28:ARQ;

# Union type for holding UB2 segment for all supported hl7 versions.
public type Ub2 hl7v23:UB2|hl7v231:UB2|hl7v24:UB2|hl7v25:UB2|hl7v251:UB2|hl7v26:UB2|hl7v27:UB2|hl7v28:UB2;

# Union type for holding PES segment for all supported hl7 versions.
public type Pes hl7v23:PES|hl7v231:PES|hl7v24:PES|hl7v25:PES|hl7v251:PES|hl7v26:PES|hl7v27:PES|hl7v28:PES;

# Union type for holding BTS segment for all supported hl7 versions.
public type Bts hl7v23:BTS|hl7v231:BTS|hl7v24:BTS|hl7v25:BTS|hl7v251:BTS|hl7v26:BTS|hl7v27:BTS|hl7v28:BTS;

# Union type for holding EQL segment for all supported hl7 versions.
public type Eql hl7v23:EQL|hl7v231:EQL|hl7v24:EQL|hl7v25:EQL|hl7v251:EQL;

# Union type for holding LOC segment for all supported hl7 versions.
public type Loc hl7v23:LOC|hl7v231:LOC|hl7v24:LOC|hl7v25:LOC|hl7v251:LOC|hl7v26:LOC|hl7v27:LOC|hl7v28:LOC;

# Union type for holding FAC segment for all supported hl7 versions.
public type Fac hl7v23:FAC|hl7v231:FAC|hl7v24:FAC|hl7v25:FAC|hl7v251:FAC|hl7v26:FAC|hl7v27:FAC|hl7v28:FAC;

# Union type for holding UB1 segment for all supported hl7 versions.
public type Ub1 hl7v23:UB1|hl7v231:UB1|hl7v24:UB1|hl7v25:UB1|hl7v251:UB1|hl7v26:UB1|hl7v27:UB1|hl7v28:UB1;

# Union type for holding PDC segment for all supported hl7 versions.
public type Pdc hl7v23:PDC|hl7v231:PDC|hl7v24:PDC|hl7v25:PDC|hl7v251:PDC|hl7v26:PDC|hl7v27:PDC|hl7v28:PDC;

# Union type for holding PRC segment for all supported hl7 versions.
public type Prc hl7v23:PRC|hl7v231:PRC|hl7v24:PRC|hl7v25:PRC|hl7v251:PRC|hl7v26:PRC|hl7v27:PRC|hl7v28:PRC;

# Union type for holding SCH segment for all supported hl7 versions.
public type Sch hl7v23:SCH|hl7v231:SCH|hl7v24:SCH|hl7v25:SCH|hl7v251:SCH|hl7v26:SCH|hl7v27:SCH|hl7v28:SCH;

# Union type for holding MSA segment for all supported hl7 versions.
public type Msa hl7v23:MSA|hl7v231:MSA|hl7v24:MSA|hl7v25:MSA|hl7v251:MSA|hl7v26:MSA|hl7v27:MSA|hl7v28:MSA;

# Union type for holding ADD segment for all supported hl7 versions.
public type Add hl7v23:ADD|hl7v231:ADD|hl7v24:ADD|hl7v25:ADD|hl7v251:ADD|hl7v26:ADD|hl7v27:ADD|hl7v28:ADD;

# Union type for holding MFA segment for all supported hl7 versions.
public type Mfa hl7v23:MFA|hl7v231:MFA|hl7v24:MFA|hl7v25:MFA|hl7v251:MFA|hl7v26:MFA|hl7v27:MFA|hl7v28:MFA;

# Union type for holding PRB segment for all supported hl7 versions.
public type Prb hl7v23:PRB|hl7v231:PRB|hl7v24:PRB|hl7v25:PRB|hl7v251:PRB|hl7v26:PRB|hl7v27:PRB|hl7v28:PRB;

# Union type for holding RF1 segment for all supported hl7 versions.
public type Rf1 hl7v23:RF1|hl7v231:RF1|hl7v24:RF1|hl7v25:RF1|hl7v251:RF1|hl7v26:RF1|hl7v27:RF1|hl7v28:RF1;

# Union type for holding MRG segment for all supported hl7 versions.
public type Mrg hl7v23:MRG|hl7v231:MRG|hl7v24:MRG|hl7v25:MRG|hl7v251:MRG|hl7v26:MRG|hl7v27:MRG|hl7v28:MRG;

# Union type for holding NTE segment for all supported hl7 versions.
public type Nte hl7v23:NTE|hl7v231:NTE|hl7v24:NTE|hl7v25:NTE|hl7v251:NTE|hl7v26:NTE|hl7v27:NTE|hl7v28:NTE;

# Union type for holding PRA segment for all supported hl7 versions.
public type Pra hl7v23:PRA|hl7v231:PRA|hl7v24:PRA|hl7v25:PRA|hl7v251:PRA|hl7v26:PRA|hl7v27:PRA|hl7v28:PRA;

# Union type for holding DB1 segment for all supported hl7 versions.
public type Db1 hl7v23:DB1|hl7v231:DB1|hl7v24:DB1|hl7v25:DB1|hl7v251:DB1|hl7v26:DB1|hl7v27:DB1|hl7v28:DB1;

# Union type for holding AIS segment for all supported hl7 versions.
public type Ais hl7v23:AIS|hl7v231:AIS|hl7v24:AIS|hl7v25:AIS|hl7v251:AIS|hl7v26:AIS|hl7v27:AIS|hl7v28:AIS;

# Union type for holding STF segment for all supported hl7 versions.
public type Stf hl7v23:STF|hl7v231:STF|hl7v24:STF|hl7v25:STF|hl7v251:STF|hl7v26:STF|hl7v27:STF|hl7v28:STF;

# Union type for holding PRD segment for all supported hl7 versions.
public type Prd hl7v23:PRD|hl7v231:PRD|hl7v24:PRD|hl7v25:PRD|hl7v251:PRD|hl7v26:PRD|hl7v27:PRD|hl7v28:PRD;

# Union type for holding NCK segment for all supported hl7 versions.
public type Nck hl7v23:NCK|hl7v231:NCK|hl7v24:NCK|hl7v25:NCK|hl7v251:NCK|hl7v26:NCK|hl7v27:NCK|hl7v28:NCK;

# Union type for holding PEO segment for all supported hl7 versions.
public type Peo hl7v23:PEO|hl7v231:PEO|hl7v24:PEO|hl7v25:PEO|hl7v251:PEO|hl7v26:PEO|hl7v27:PEO|hl7v28:PEO;

# Union type for holding MFE segment for all supported hl7 versions.
public type Mfe hl7v23:MFE|hl7v231:MFE|hl7v24:MFE|hl7v25:MFE|hl7v251:MFE|hl7v26:MFE|hl7v27:MFE|hl7v28:MFE;

# Union type for holding APR segment for all supported hl7 versions.
public type Apr hl7v23:APR|hl7v231:APR|hl7v24:APR|hl7v25:APR|hl7v251:APR|hl7v26:APR|hl7v27:APR|hl7v28:APR;

# Union type for holding AIP segment for all supported hl7 versions.
public type Aip hl7v23:AIP|hl7v231:AIP|hl7v24:AIP|hl7v25:AIP|hl7v251:AIP|hl7v26:AIP|hl7v27:AIP|hl7v28:AIP;

# Union type for holding AIG segment for all supported hl7 versions.
public type Aig hl7v23:AIG|hl7v231:AIG|hl7v24:AIG|hl7v25:AIG|hl7v251:AIG|hl7v26:AIG|hl7v27:AIG|hl7v28:AIG;

# Union type for holding RGS segment for all supported hl7 versions.
public type Rgs hl7v23:RGS|hl7v231:RGS|hl7v24:RGS|hl7v25:RGS|hl7v251:RGS|hl7v26:RGS|hl7v27:RGS|hl7v28:RGS;

# Union type for holding LCH segment for all supported hl7 versions.
public type Lch hl7v23:LCH|hl7v231:LCH|hl7v24:LCH|hl7v25:LCH|hl7v251:LCH|hl7v26:LCH|hl7v27:LCH|hl7v28:LCH;

# Union type for holding PR1 segment for all supported hl7 versions.
public type Pr1 hl7v23:PR1|hl7v231:PR1|hl7v24:PR1|hl7v25:PR1|hl7v251:PR1|hl7v26:PR1|hl7v27:PR1|hl7v28:PR1;

# Union type for holding URD segment for all supported hl7 versions.
public type Urd hl7v23:URD|hl7v231:URD|hl7v24:URD|hl7v25:URD|hl7v251:URD|hl7v26:URD|hl7v27:URD|hl7v28:URD;

# Union type for holding URS segment for all supported hl7 versions.
public type Urs hl7v23:URS|hl7v231:URS|hl7v24:URS|hl7v25:URS|hl7v251:URS|hl7v26:URS|hl7v27:URS|hl7v28:URS;

# Union type for holding RXA segment for all supported hl7 versions.
public type Rxa hl7v23:RXA|hl7v231:RXA|hl7v24:RXA|hl7v25:RXA|hl7v251:RXA|hl7v26:RXA|hl7v27:RXA|hl7v28:RXA;

# Union type for holding VTQ segment for all supported hl7 versions.
public type Vtq hl7v23:VTQ|hl7v231:VTQ|hl7v24:VTQ|hl7v25:VTQ|hl7v251:VTQ;

# Union type for holding CTI segment for all supported hl7 versions.
public type Cti hl7v23:CTI|hl7v231:CTI|hl7v24:CTI|hl7v25:CTI|hl7v251:CTI|hl7v26:CTI|hl7v27:CTI|hl7v28:CTI;

# Union type for holding ACC segment for all supported hl7 versions.
public type Acc hl7v23:ACC|hl7v231:ACC|hl7v24:ACC|hl7v25:ACC|hl7v251:ACC|hl7v26:ACC|hl7v27:ACC|hl7v28:ACC;

# Union type for holding OM1 segment for all supported hl7 versions.
public type Om1 hl7v23:OM1|hl7v231:OM1|hl7v24:OM1|hl7v25:OM1|hl7v251:OM1|hl7v26:OM1|hl7v27:OM1|hl7v28:OM1;

# Union type for holding BHS segment for all supported hl7 versions.
public type Bhs hl7v23:BHS|hl7v231:BHS|hl7v24:BHS|hl7v25:BHS|hl7v251:BHS|hl7v26:BHS|hl7v27:BHS|hl7v28:BHS;

# Union type for holding NST segment for all supported hl7 versions.
public type Nst hl7v23:NST|hl7v231:NST|hl7v24:NST|hl7v25:NST|hl7v251:NST|hl7v26:NST|hl7v27:NST|hl7v28:NST;

# Union type for holding NSC segment for all supported hl7 versions.
public type Nsc hl7v23:NSC|hl7v231:NSC|hl7v24:NSC|hl7v25:NSC|hl7v251:NSC|hl7v26:NSC|hl7v27:NSC|hl7v28:NSC;

# Union type for holding OM3 segment for all supported hl7 versions.
public type Om3 hl7v23:OM3|hl7v231:OM3|hl7v24:OM3|hl7v25:OM3|hl7v251:OM3|hl7v26:OM3|hl7v27:OM3|hl7v28:OM3;

# Union type for holding VAR segment for all supported hl7 versions.
public type Var hl7v23:VAR|hl7v231:VAR|hl7v24:VAR|hl7v25:VAR|hl7v251:VAR|hl7v26:VAR|hl7v27:VAR|hl7v28:VAR;

# Union type for holding OM2 segment for all supported hl7 versions.
public type Om2 hl7v23:OM2|hl7v231:OM2|hl7v24:OM2|hl7v25:OM2|hl7v251:OM2|hl7v26:OM2|hl7v27:OM2|hl7v28:OM2;

# Union type for holding RXC segment for all supported hl7 versions.
public type Rxc hl7v23:RXC|hl7v231:RXC|hl7v24:RXC|hl7v25:RXC|hl7v251:RXC|hl7v26:RXC|hl7v27:RXC|hl7v28:RXC;

# Union type for holding RXG segment for all supported hl7 versions.
public type Rxg hl7v23:RXG|hl7v231:RXG|hl7v24:RXG|hl7v25:RXG|hl7v251:RXG|hl7v26:RXG|hl7v27:RXG|hl7v28:RXG;

# Union type for holding QRF segment for all supported hl7 versions.
public type Qrf hl7v23:QRF|hl7v231:QRF|hl7v24:QRF|hl7v25:QRF|hl7v251:QRF|hl7v26:QRF|hl7v27:QRF|hl7v28:QRF;

# Union type for holding TXA segment for all supported hl7 versions.
public type Txa hl7v23:TXA|hl7v231:TXA|hl7v24:TXA|hl7v25:TXA|hl7v251:TXA|hl7v26:TXA|hl7v27:TXA|hl7v28:TXA;

# Union type for holding OM6 segment for all supported hl7 versions.
public type Om6 hl7v23:OM6|hl7v231:OM6|hl7v24:OM6|hl7v25:OM6|hl7v251:OM6|hl7v26:OM6|hl7v27:OM6|hl7v28:OM6;

# Union type for holding FHS segment for all supported hl7 versions.
public type Fhs hl7v23:FHS|hl7v231:FHS|hl7v24:FHS|hl7v25:FHS|hl7v251:FHS|hl7v26:FHS|hl7v27:FHS|hl7v28:FHS;

# Union type for holding RXD segment for all supported hl7 versions.
public type Rxd hl7v23:RXD|hl7v231:RXD|hl7v24:RXD|hl7v25:RXD|hl7v251:RXD|hl7v26:RXD|hl7v27:RXD|hl7v28:RXD;

# Union type for holding OM5 segment for all supported hl7 versions.
public type Om5 hl7v23:OM5|hl7v231:OM5|hl7v24:OM5|hl7v25:OM5|hl7v251:OM5|hl7v26:OM5|hl7v27:OM5|hl7v28:OM5;

# Union type for holding OM4 segment for all supported hl7 versions.
public type Om4 hl7v23:OM4|hl7v231:OM4|hl7v24:OM4|hl7v25:OM4|hl7v251:OM4|hl7v26:OM4|hl7v27:OM4|hl7v28:OM4;

# Union type for holding QRD segment for all supported hl7 versions.
public type Qrd hl7v23:QRD|hl7v231:QRD|hl7v24:QRD|hl7v25:QRD|hl7v251:QRD|hl7v26:QRD|hl7v27:QRD|hl7v28:QRD;

# Union type for holding ROL segment for all supported hl7 versions.
public type Rol hl7v23:ROL|hl7v231:ROL|hl7v24:ROL|hl7v25:ROL|hl7v251:ROL|hl7v26:ROL|hl7v27:ROL|hl7v28:ROL;

# Union type for holding RXE segment for all supported hl7 versions.
public type Rxe hl7v23:RXE|hl7v231:RXE|hl7v24:RXE|hl7v25:RXE|hl7v251:RXE|hl7v26:RXE|hl7v27:RXE|hl7v28:RXE;

# Union type for holding RXR segment for all supported hl7 versions.
public type Rxr hl7v23:RXR|hl7v231:RXR|hl7v24:RXR|hl7v25:RXR|hl7v251:RXR|hl7v26:RXR|hl7v27:RXR|hl7v28:RXR;

# ## Union types defined for data types for supported hl7 versions. ####
# ######################################################################

# Union type for holding patient name for all supported hl7 versions.
public type Pid5 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for holding patient alias name for all supported hl7 versions.
public type Pid9 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:ST|hl7v28:ST;

# Union type for holding patient address for all supported hl7 versions.
public type Pid11 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];

# Union type for holding patient home phone number for all supported hl7 versions.
public type Pid13 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[];

# Union type for holding patient business phone number for all supported hl7 versions.
public type Pid14 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[];

# Union type for holding patient primary language for all supported hl7 versions.
public type Pid15 hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE;

# Union type for holding patient marital status for all supported hl7 versions.
public type Pid16 hl7v23:IS|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE;

# Union type for patient primary facility for all supported hl7 versions.
public type Pd13 hl7v23:XON[]|hl7v231:XON[]|hl7v24:XON[]|hl7v25:XON[]|hl7v251:XON[]|hl7v26:XON[]|hl7v27:XON[];

# Union type for patient primary care provider for all supported hl7 versions.
public type Pd14 hl7v23:XCN[]|hl7v231:XCN[]|hl7v24:XCN[]|hl7v25:XCN[]|hl7v251:XCN[]|hl7v26:XCN[]|hl7v27:ST;

# Union type for patient's extended person's name for all supported hl7 versions.  
public type Nk12 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for patient's extended person's address for all supported hl7 versions.
public type Nk14 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];

# Union type for patient's extended person's home phone number for all supported hl7 versions.
public type Nk15 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's business phone number for all supported hl7 versions.
public type Nk16 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's contact role for all supported hl7 versions.
public type Nk17 hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE|hl7v27:CWE;

# Union type for patient's extended person's start date for all supported hl7 versions.
public type Nk18 hl7v23:DT|hl7v231:DT|hl7v24:DT|hl7v25:DT|hl7v251:DT|hl7v26:DT|hl7v27:DT;

# Union type for patient's extended person's end date for all supported hl7 versions.
public type Nk19 hl7v23:DT|hl7v231:DT|hl7v24:DT|hl7v25:DT|hl7v251:DT|hl7v26:DT|hl7v27:DT;

# Union type for patient's extended person's organization name for all supported hl7 versions.
public type Nk113 hl7v23:XON[]|hl7v231:XON[]|hl7v24:XON[]|hl7v25:XON[]|hl7v251:XON[]|hl7v26:XON[]|hl7v27:XON[];

# Union type for patient's extended person's gender for all supported hl7 versions.
public type Nk115 hl7v23:IS|hl7v231:IS|hl7v24:IS|hl7v25:IS|hl7v251:IS|hl7v26:IS|hl7v27:CWE;

# Union type for patient's extended person's contact person name for all supported hl7 versions.
public type Nk130 hl7v23:XPN[]|hl7v231:XPN[]|hl7v24:XPN[]|hl7v25:XPN[]|hl7v251:XPN[]|hl7v26:XPN[]|hl7v27:XPN[]|hl7v28:XPN[];

# Union type for patient's extended person's contact person phone number for all supported hl7 versions.
public type Nk131 hl7v23:XTN[]|hl7v231:XTN[]|hl7v24:XTN[]|hl7v25:XTN[]|hl7v251:XTN[]|hl7v26:XTN[]|hl7v27:XTN[];

# Union type for patient's extended person's contact person address for all supported hl7 versions.
public type Nk132 hl7v23:XAD[]|hl7v231:XAD[]|hl7v24:XAD[]|hl7v25:XAD[]|hl7v251:XAD[]|hl7v26:XAD[]|hl7v27:XAD[]|hl7v28:XAD[];
