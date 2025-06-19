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
import ballerina/log;
import ballerinax/health.hl7v2;


# Returns instance of segment record given the segment name.
#
# + segmentName - HL7 message segment name
# + return - Record of segment instance
public isolated function getSegment(string segmentName) returns hl7v2:Segment? {
if segmentName == "APR" {
    APR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QPD" {
    QPD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "STF" {
    STF segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CM1" {
    CM1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "VAR" {
    VAR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CM0" {
    CM0 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CM2" {
    CM2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CDM" {
    CDM segmentInstance = {};
    return segmentInstance;
} else if segmentName == "DG1" {
    DG1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM1" {
    OM1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM3" {
    OM3 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NK1" {
    NK1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM2" {
    OM2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM5" {
    OM5 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM4" {
    OM4 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM7" {
    OM7 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OM6" {
    OM6 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ODT" {
    ODT segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AIG" {
    AIG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NSC" {
    NSC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ODS" {
    ODS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "EQL" {
    EQL segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LOC" {
    LOC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "FT1" {
    FT1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AIL" {
    AIL segmentInstance = {};
    return segmentInstance;
} else if segmentName == "EQP" {
    EQP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AIP" {
    AIP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "EQU" {
    EQU segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AIS" {
    AIS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IIM" {
    IIM segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QID" {
    QID segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NST" {
    NST segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CER" {
    CER segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IAM" {
    IAM segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NCK" {
    NCK segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BLC" {
    BLC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QAK" {
    QAK segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BLG" {
    BLG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "TXA" {
    TXA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NTE" {
    NTE segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RCP" {
    RCP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ARQ" {
    ARQ segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BTS" {
    BTS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QRD" {
    QRD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MRG" {
    MRG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ERR" {
    ERR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "FTS" {
    FTS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QRF" {
    QRF segmentInstance = {};
    return segmentInstance;
} else if segmentName == "UB2" {
    UB2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ERQ" {
    ERQ segmentInstance = {};
    return segmentInstance;
} else if segmentName == "UB1" {
    UB1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "URD" {
    URD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BTX" {
    BTX segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CNS" {
    CNS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "QRI" {
    QRI segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OVR" {
    OVR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ABS" {
    ABS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "VTQ" {
    VTQ segmentInstance = {};
    return segmentInstance;
} else if segmentName == "TQ2" {
    TQ2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RDF" {
    RDF segmentInstance = {};
    return segmentInstance;
} else if segmentName == "TQ1" {
    TQ1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "URS" {
    URS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MSA" {
    MSA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ISD" {
    ISD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NDS" {
    NDS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SFT" {
    SFT segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ACC" {
    ACC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CON" {
    CON segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MSH" {
    MSH segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RDT" {
    RDT segmentInstance = {};
    return segmentInstance;
} else if segmentName == "GOL" {
    GOL segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AL1" {
    AL1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ECD" {
    ECD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "GP2" {
    GP2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "GP1" {
    GP1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PID" {
    PID segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PR1" {
    PR1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RMI" {
    RMI segmentInstance = {};
    return segmentInstance;
} else if segmentName == "DB1" {
    DB1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ECR" {
    ECR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "DRG" {
    DRG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LAN" {
    LAN segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RF1" {
    RF1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PRA" {
    PRA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PRC" {
    PRC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ADD" {
    ADD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PRB" {
    PRB segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PRD" {
    PRD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LRL" {
    LRL segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SPM" {
    SPM segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SPR" {
    SPR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "DSC" {
    DSC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "EDU" {
    EDU segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AUT" {
    AUT segmentInstance = {};
    return segmentInstance;
} else if segmentName == "DSP" {
    DSP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PSH" {
    PSH segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IN2" {
    IN2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IN1" {
    IN1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LCC" {
    LCC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ROL" {
    ROL segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IN3" {
    IN3 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SID" {
    SID segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LCH" {
    LCH segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SAC" {
    SAC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "TCD" {
    TCD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "TCC" {
    TCC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXA" {
    RXA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "EVN" {
    EVN segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PD1" {
    PD1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXC" {
    RXC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PCR" {
    PCR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXE" {
    RXE segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RGS" {
    RGS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXD" {
    RXD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BPO" {
    BPO segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXG" {
    RXG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "AFF" {
    AFF segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ORC" {
    ORC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "ORG" {
    ORG segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PTH" {
    PTH segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXO" {
    RXO segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MFA" {
    MFA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BPX" {
    BPX segmentInstance = {};
    return segmentInstance;
} else if segmentName == "BHS" {
    BHS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PDA" {
    PDA segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MFE" {
    MFE segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RXR" {
    RXR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PDC" {
    PDC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "FHS" {
    FHS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "INV" {
    INV segmentInstance = {};
    return segmentInstance;
} else if segmentName == "MFI" {
    MFI segmentInstance = {};
    return segmentInstance;
} else if segmentName == "NPU" {
    NPU segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RQ1" {
    RQ1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "LDP" {
    LDP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OBR" {
    OBR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CSP" {
    CSP segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CSS" {
    CSS segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CSR" {
    CSR segmentInstance = {};
    return segmentInstance;
} else if segmentName == "OBX" {
    OBX segmentInstance = {};
    return segmentInstance;
} else if segmentName == "RQD" {
    RQD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "GT1" {
    GT1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "FAC" {
    FAC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PV1" {
    PV1 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PV2" {
    PV2 segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CTD" {
    CTD segmentInstance = {};
    return segmentInstance;
} else if segmentName == "CTI" {
    CTI segmentInstance = {};
    return segmentInstance;
} else if segmentName == "SCH" {
    SCH segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PEO" {
    PEO segmentInstance = {};
    return segmentInstance;
} else if segmentName == "IPC" {
    IPC segmentInstance = {};
    return segmentInstance;
} else if segmentName == "PES" {
    PES segmentInstance = {};
    return segmentInstance;
} else {
    return ();
}
}

# Returns instance of HL7 message given the message type.
#
# + messageName - Message type
# + return - Instance of HL7 message 
public isolated function getMessage(string messageName) returns hl7v2:Message? {
if messageName == "SQM_S25" {
    SQM_S25 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "DSR_Q03" {
    DSR_Q03 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "OMB_O27" {
    OMB_O27 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OMP_O09" {
    OMP_O09 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "DSR_Q01" {
    DSR_Q01 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "ADT_A05" {
    ADT_A05 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "ADT_A06" {
    ADT_A06 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "RRA_O18" {
    RRA_O18 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ADT_A09" {
    ADT_A09 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "PPR_PC1" {
    PPR_PC1 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "OSR_Q06" {
    OSR_Q06 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "QRY_A19" {
    QRY_A19 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "PPV_PCA" {
    PPV_PCA messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "ADT_A03" {
    ADT_A03 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "RQI_I01" {
    RQI_I01 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "DOC_T12" {
    DOC_T12 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "OMI_O23" {
    OMI_O23 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADT_A01" {
    ADT_A01 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "ADT_A02" {
    ADT_A02 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "MFK_M01" {
    MFK_M01 messageInstance = {msh:{}, msa:{}, mfi:{}};
    return messageInstance;
} else if messageName == "SIU_S12" {
    SIU_S12 messageInstance = {msh:{}, sch:{}};
    return messageInstance;
} else if messageName == "BRT_O32" {
    BRT_O32 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "RTB_Knn" {
    RTB_Knn messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, anyhl7segment:{}};
    return messageInstance;
} else if messageName == "QCN_J01" {
    QCN_J01 messageInstance = {msh:{}, qid:{}};
    return messageInstance;
} else if messageName == "RSP_K31" {
    RSP_K31 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "ADT_A18" {
    ADT_A18 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
    return messageInstance;
} else if messageName == "VXU_V04" {
    VXU_V04 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "ADT_A16" {
    ADT_A16 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "ADT_A17" {
    ADT_A17 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "RQP_I04" {
    RQP_I04 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "PPG_PCG" {
    PPG_PCG messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "QCK_Q02" {
    QCK_Q02 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "PTR_PCF" {
    PTR_PCF messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "ADT_A15" {
    ADT_A15 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "ADT_A12" {
    ADT_A12 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "VXQ_V01" {
    VXQ_V01 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "RSP_K23" {
    RSP_K23 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "RSP_K25" {
    RSP_K25 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "RSP_K21" {
    RSP_K21 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "ERP_R09" {
    ERP_R09 messageInstance = {msh:{}, msa:{}, qak:{}, erq:{}};
    return messageInstance;
} else if messageName == "ORN_O08" {
    ORN_O08 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "QRY" {
    QRY messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "QBP_Q15" {
    QBP_Q15 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "QBP_Q11" {
    QBP_Q11 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "QBP_Q13" {
    QBP_Q13 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "RRD_O14" {
    RRD_O14 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "TBR_R08" {
    TBR_R08 messageInstance = {msh:{}, msa:{}, qak:{}, rdf:{}};
    return messageInstance;
} else if messageName == "RCL_I06" {
    RCL_I06 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
    return messageInstance;
} else if messageName == "ACK" {
    ACK messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "VXX_V02" {
    VXX_V02 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "SRR_S01" {
    SRR_S01 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "RSP_K11" {
    RSP_K11 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "QRY_Q01" {
    QRY_Q01 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "QRY_Q02" {
    QRY_Q02 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "RDR_RDR" {
    RDR_RDR messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "QBP_Q21" {
    QBP_Q21 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "MFN_M07" {
    MFN_M07 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M08" {
    MFN_M08 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M05" {
    MFN_M05 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M06" {
    MFN_M06 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "NMD_N02" {
    NMD_N02 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "MFN_M09" {
    MFN_M09 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "RPL_I02" {
    RPL_I02 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ORR_O02" {
    ORR_O02 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "MFN_M03" {
    MFN_M03 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M04" {
    MFN_M04 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M01" {
    MFN_M01 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "CSU_C09" {
    CSU_C09 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "MFN_M02" {
    MFN_M02 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "ORU_R30" {
    ORU_R30 messageInstance = {msh:{}, pid:{}, orc:{}, obr:{}};
    return messageInstance;
} else if messageName == "RER_RER" {
    RER_RER messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "OSQ_Q06" {
    OSQ_Q06 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "ADT_A43" {
    ADT_A43 messageInstance = {msh:{}, evn:{}};
    return messageInstance;
} else if messageName == "RAS_O17" {
    RAS_O17 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RAR_RAR" {
    RAR_RAR messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ADT_A45" {
    ADT_A45 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "MDM_T01" {
    MDM_T01 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
    return messageInstance;
} else if messageName == "BTS_O31" {
    BTS_O31 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "MDM_T02" {
    MDM_T02 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
    return messageInstance;
} else if messageName == "ADT_A50" {
    ADT_A50 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
    return messageInstance;
} else if messageName == "OMD_O03" {
    OMD_O03 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OMS_O05" {
    OMS_O05 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ESU_U01" {
    ESU_U01 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "QRY_R02" {
    QRY_R02 messageInstance = {msh:{}, qrd:{}, qrf:{}};
    return messageInstance;
} else if messageName == "ADT_A54" {
    ADT_A54 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "ADT_A52" {
    ADT_A52 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "MFR_M04" {
    MFR_M04 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFR_M01" {
    MFR_M01 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFR_M07" {
    MFR_M07 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
    return messageInstance;
} else if messageName == "PMU_B01" {
    PMU_B01 messageInstance = {msh:{}, evn:{}, stf:{}};
    return messageInstance;
} else if messageName == "MFR_M05" {
    MFR_M05 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
    return messageInstance;
} else if messageName == "PMU_B04" {
    PMU_B04 messageInstance = {msh:{}, evn:{}, stf:{}};
    return messageInstance;
} else if messageName == "MFR_M06" {
    MFR_M06 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
    return messageInstance;
} else if messageName == "PMU_B03" {
    PMU_B03 messageInstance = {msh:{}, evn:{}, stf:{}};
    return messageInstance;
} else if messageName == "EAC_U07" {
    EAC_U07 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "RRE_O12" {
    RRE_O12 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "BAR_P12" {
    BAR_P12 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "RQQ_Q09" {
    RQQ_Q09 messageInstance = {msh:{}, erq:{}};
    return messageInstance;
} else if messageName == "BAR_P10" {
    BAR_P10 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, gp1:{}};
    return messageInstance;
} else if messageName == "ADT_A21" {
    ADT_A21 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "INR_U06" {
    INR_U06 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "QBP_Z73" {
    QBP_Z73 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "ADT_A20" {
    ADT_A20 messageInstance = {msh:{}, evn:{}, npu:{}};
    return messageInstance;
} else if messageName == "RTB_Z74" {
    RTB_Z74 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "ADT_A24" {
    ADT_A24 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "RQC_I05" {
    RQC_I05 messageInstance = {msh:{}, qrd:{}, pid:{}};
    return messageInstance;
} else if messageName == "MFN_M10" {
    MFN_M10 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M11" {
    MFN_M11 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M15" {
    MFN_M15 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M12" {
    MFN_M12 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "MFN_M13" {
    MFN_M13 messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "SSU_U03" {
    SSU_U03 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "OMN_O07" {
    OMN_O07 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "BAR_P02" {
    BAR_P02 messageInstance = {msh:{}, evn:{}};
    return messageInstance;
} else if messageName == "ORD_O04" {
    ORD_O04 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ORI_O24" {
    ORI_O24 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ADT_A38" {
    ADT_A38 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "BAR_P01" {
    BAR_P01 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "ADT_A39" {
    ADT_A39 messageInstance = {msh:{}, evn:{}};
    return messageInstance;
} else if messageName == "ORM_O01" {
    ORM_O01 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADT_A30" {
    ADT_A30 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}};
    return messageInstance;
} else if messageName == "PRR_PC5" {
    PRR_PC5 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "BAR_P06" {
    BAR_P06 messageInstance = {msh:{}, evn:{}};
    return messageInstance;
} else if messageName == "ADT_A37" {
    ADT_A37 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "BAR_P05" {
    BAR_P05 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "RDE_O11" {
    RDE_O11 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OUL_R24" {
    OUL_R24 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OUL_R23" {
    OUL_R23 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OUL_R22" {
    OUL_R22 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "OUL_R21" {
    OUL_R21 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ORL_O22" {
    ORL_O22 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "PPT_PCL" {
    PPT_PCL messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "RDY_K15" {
    RDY_K15 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "UDM_Q05" {
    UDM_Q05 messageInstance = {msh:{}, urd:{}};
    return messageInstance;
} else if messageName == "ORS_O06" {
    ORS_O06 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "EQQ_Q04" {
    EQQ_Q04 messageInstance = {msh:{}, eql:{}};
    return messageInstance;
} else if messageName == "RSP_Z90" {
    RSP_Z90 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
    return messageInstance;
} else if messageName == "ROR_ROR" {
    ROR_ROR messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "MFN_Znn" {
    MFN_Znn messageInstance = {msh:{}, mfi:{}};
    return messageInstance;
} else if messageName == "CRM_C01" {
    CRM_C01 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "SPQ_Q08" {
    SPQ_Q08 messageInstance = {msh:{}, spr:{}};
    return messageInstance;
} else if messageName == "OMG_O19" {
    OMG_O19 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ORL_O36" {
    ORL_O36 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "RRI_I12" {
    RRI_I12 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "ORL_O34" {
    ORL_O34 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "RSP_Z82" {
    RSP_Z82 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "PMU_B08" {
    PMU_B08 messageInstance = {msh:{}, evn:{}, stf:{}};
    return messageInstance;
} else if messageName == "PMU_B07" {
    PMU_B07 messageInstance = {msh:{}, evn:{}, stf:{}};
    return messageInstance;
} else if messageName == "ORU_R01" {
    ORU_R01 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "NMR_N01" {
    NMR_N01 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "EAR_U08" {
    EAR_U08 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "RSP_Z86" {
    RSP_Z86 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "RSP_Z88" {
    RSP_Z88 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
    return messageInstance;
} else if messageName == "ADT_A61" {
    ADT_A61 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
    return messageInstance;
} else if messageName == "SQR_S25" {
    SQR_S25 messageInstance = {msh:{}, msa:{}, qak:{}};
    return messageInstance;
} else if messageName == "ADT_A60" {
    ADT_A60 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "PPP_PCB" {
    PPP_PCB messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "RDS_O13" {
    RDS_O13 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADR_A19" {
    ADR_A19 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "ORF_R04" {
    ORF_R04 messageInstance = {msh:{}, msa:{}, qrd:{}};
    return messageInstance;
} else if messageName == "SRM_S01" {
    SRM_S01 messageInstance = {msh:{}, arq:{}};
    return messageInstance;
} else if messageName == "MFQ_M01" {
    MFQ_M01 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "VQQ_Q07" {
    VQQ_Q07 messageInstance = {msh:{}, vtq:{}};
    return messageInstance;
} else if messageName == "TCU_U10" {
    TCU_U10 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "RQA_I08" {
    RQA_I08 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "QVR_Q17" {
    QVR_Q17 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "OML_O33" {
    OML_O33 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RPA_I08" {
    RPA_I08 messageInstance = {msh:{}, msa:{}, pid:{}};
    return messageInstance;
} else if messageName == "ORB_O28" {
    ORB_O28 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "QSB_Q16" {
    QSB_Q16 messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else if messageName == "DFT_P11" {
    DFT_P11 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "SUR_P09" {
    SUR_P09 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RGR_RGR" {
    RGR_RGR messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "OML_O35" {
    OML_O35 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "PEX_P07" {
    PEX_P07 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "NMQ_N01" {
    NMQ_N01 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "INU_U05" {
    INU_U05 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "ORP_O10" {
    ORP_O10 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "SSR_U04" {
    SSR_U04 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "RRG_O16" {
    RRG_O16 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "BPS_O29" {
    BPS_O29 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "QBP_K13" {
    QBP_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "DFT_P03" {
    DFT_P03 messageInstance = {msh:{}, evn:{}, pid:{}};
    return messageInstance;
} else if messageName == "RCI_I05" {
    RCI_I05 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
    return messageInstance;
} else if messageName == "RTB_K13" {
    RTB_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "RPR_I03" {
    RPR_I03 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "RSP_Q11" {
    RSP_Q11 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
    return messageInstance;
} else if messageName == "VXR_V03" {
    VXR_V03 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
    return messageInstance;
} else if messageName == "REF_I12" {
    REF_I12 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "ORG_O20" {
    ORG_O20 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "ESR_U02" {
    ESR_U02 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "EAN_U09" {
    EAN_U09 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "QRY_PC4" {
    QRY_PC4 messageInstance = {msh:{}, qrd:{}};
    return messageInstance;
} else if messageName == "RPI_I01" {
    RPI_I01 messageInstance = {msh:{}, msa:{}, pid:{}};
    return messageInstance;
} else if messageName == "EDR_R07" {
    EDR_R07 messageInstance = {msh:{}, msa:{}, qak:{}};
    return messageInstance;
} else if messageName == "RPI_I04" {
    RPI_I04 messageInstance = {msh:{}, msa:{}, pid:{}};
    return messageInstance;
} else if messageName == "PGL_PC6" {
    PGL_PC6 messageInstance = {msh:{}, pid:{}};
    return messageInstance;
} else if messageName == "BRP_O30" {
    BRP_O30 messageInstance = {msh:{}, msa:{}};
    return messageInstance;
} else if messageName == "OML_O21" {
    OML_O21 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "LSU_U12" {
    LSU_U12 messageInstance = {msh:{}, equ:{}};
    return messageInstance;
} else if messageName == "RGV_O15" {
    RGV_O15 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "QBP_Qnn" {
    QBP_Qnn messageInstance = {msh:{}, qpd:{}, rcp:{}};
    return messageInstance;
} else {
    return ();
}
}

isolated function getMessagePart2(string messageName) returns hl7v2:Message? {
if messageName == "CSU_C12" {
    CSU_C12 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "QBP_Z79" {
    QBP_Z79 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A07" {
    ADT_A07 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "CRM_C08" {
    CRM_C08 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RDE_O25" {
    RDE_O25 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADT_A46" {
    ADT_A46 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "PPG_PCJ" {
    PPG_PCJ messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A11" {
    ADT_A11 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A31" {
    ADT_A31 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A27" {
    ADT_A27 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ORU_R32" {
    ORU_R32 messageInstance = {msh:{},orc: {}, pid: {}, obr: {}};
    return messageInstance;
} else if messageName == "QBP_Z75" {
    QBP_Z75 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "CRM_C04" {
    CRM_C04 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "SIU_S24" {
    SIU_S24 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "QSB_Z83" {
    QSB_Z83 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "RPA_I11" {
    RPA_I11 messageInstance = {msh:{},pid: {}, msa: {}};
    return messageInstance;
} else if messageName == "RPA_I10" {
    RPA_I10 messageInstance = {msh:{},pid: {}, msa: {}};
    return messageInstance;
} else if messageName == "PPP_PCC" {
    PPP_PCC messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "CRM_C05" {
    CRM_C05 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADT_A26" {
    ADT_A26 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "PGL_PC8" {
    PGL_PC8 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A10" {
    ADT_A10 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "QBP_Z81" {
    QBP_Z81 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A47" {
    ADT_A47 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A51" {
    ADT_A51 messageInstance = {msh:{},mrg: {}, pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "QBP_Z97" {
    QBP_Z97 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "RRE_O26" {
    RRE_O26 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "LSR_U13" {
    LSR_U13 messageInstance = {msh:{},equ: {}};
    return messageInstance;
} else if messageName == "SIU_S13" {
    SIU_S13 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "SIU_S18" {
    SIU_S18 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "SRM_S10" {
    SRM_S10 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "SRR_S07" {
    SRR_S07 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SRR_S11" {
    SRR_S11 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SRM_S06" {
    SRM_S06 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "MDM_T10" {
    MDM_T10 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "CRM_C02" {
    CRM_C02 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "SIU_S22" {
    SIU_S22 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "PPP_PCD" {
    PPP_PCD messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "MDM_T06" {
    MDM_T06 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "RTB_Z78" {
    RTB_Z78 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "SIU_S14" {
    SIU_S14 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "ORU_W01" {
    ORU_W01 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RQI_I02" {
    RQI_I02 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "RQA_I11" {
    RQA_I11 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A40" {
    ADT_A40 messageInstance = {msh:{},evn: {}};
    return messageInstance;
} else if messageName == "QBP_Z87" {
    QBP_Z87 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A41" {
    ADT_A41 messageInstance = {msh:{},evn: {}};
    return messageInstance;
} else if messageName == "RQI_I03" {
    RQI_I03 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "RQA_I10" {
    RQA_I10 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "QBP_Z91" {
    QBP_Z91 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "RDY_Z80" {
    RDY_Z80 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "SIU_S15" {
    SIU_S15 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "QSX_J02" {
    QSX_J02 messageInstance = {msh:{},qid: {}};
    return messageInstance;
} else if messageName == "RTB_Z96" {
    RTB_Z96 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "MDM_T07" {
    MDM_T07 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "CRM_C03" {
    CRM_C03 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "SIU_S23" {
    SIU_S23 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "PEX_P08" {
    PEX_P08 messageInstance = {msh:{},pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "MDM_T11" {
    MDM_T11 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "SRR_S10" {
    SRR_S10 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SRM_S07" {
    SRM_S07 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "QBP_Q31" {
    QBP_Q31 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "PMU_B06" {
    PMU_B06 messageInstance = {msh:{},stf: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A36" {
    ADT_A36 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRM_S11" {
    SRM_S11 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "SRR_S06" {
    SRR_S06 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SIU_S19" {
    SIU_S19 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "MDM_T04" {
    MDM_T04 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "RQA_I09" {
    RQA_I09 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "SIU_S20" {
    SIU_S20 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "PMU_B05" {
    PMU_B05 messageInstance = {msh:{},stf: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRM_S04" {
    SRM_S04 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "ADT_A23" {
    ADT_A23 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A35" {
    ADT_A35 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRR_S05" {
    SRR_S05 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "QBP_Q24" {
    QBP_Q24 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "RTB_Z76" {
    RTB_Z76 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "ADT_A62" {
    ADT_A62 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "MDM_T08" {
    MDM_T08 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "RRI_I14" {
    RRI_I14 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A42" {
    ADT_A42 messageInstance = {msh:{},evn: {}};
    return messageInstance;
} else if messageName == "SRM_S08" {
    SRM_S08 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "SRR_S09" {
    SRR_S09 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SIU_S16" {
    SIU_S16 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "RTB_Z94" {
    RTB_Z94 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "SIU_S17" {
    SIU_S17 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "RSP_K22" {
    RSP_K22 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "SRR_S08" {
    SRR_S08 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "SRM_S09" {
    SRM_S09 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "QBP_Z93" {
    QBP_Z93 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A55" {
    ADT_A55 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "MFK_M02" {
    MFK_M02 messageInstance = {msh:{},mfi: {}, msa: {}};
    return messageInstance;
} else if messageName == "MDM_T09" {
    MDM_T09 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "RRI_I15" {
    RRI_I15 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "QBP_Z85" {
    QBP_Z85 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A14" {
    ADT_A14 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A34" {
    ADT_A34 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRR_S04" {
    SRR_S04 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "QBP_Q25" {
    QBP_Q25 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "SRM_S05" {
    SRM_S05 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "ADT_A22" {
    ADT_A22 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "RDY_Z98" {
    RDY_Z98 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "REF_I13" {
    REF_I13 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "SIU_S21" {
    SIU_S21 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "MDM_T05" {
    MDM_T05 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "QBP_Z89" {
    QBP_Z89 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A13" {
    ADT_A13 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "PPG_PCH" {
    PPG_PCH messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A44" {
    ADT_A44 messageInstance = {msh:{},evn: {}};
    return messageInstance;
} else if messageName == "RPA_I09" {
    RPA_I09 messageInstance = {msh:{},pid: {}, msa: {}};
    return messageInstance;
} else if messageName == "PGL_PC7" {
    PGL_PC7 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "ADT_A29" {
    ADT_A29 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "PIN_I07" {
    PIN_I07 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "TCR_U11" {
    TCR_U11 messageInstance = {msh:{},equ: {}};
    return messageInstance;
} else if messageName == "CSU_C10" {
    CSU_C10 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "PPR_PC2" {
    PPR_PC2 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "RQC_I06" {
    RQC_I06 messageInstance = {msh:{},qrd: {}, pid: {}};
    return messageInstance;
} else if messageName == "ADT_A48" {
    ADT_A48 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "RSP_Z84" {
    RSP_Z84 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "SIU_S26" {
    SIU_S26 messageInstance = {msh:{},sch: {}};
    return messageInstance;
} else if messageName == "CRM_C06" {
    CRM_C06 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "REF_I14" {
    REF_I14 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "QBP_Z77" {
    QBP_Z77 messageInstance = {msh:{},qpd: {}, pid: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A25" {
    ADT_A25 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRM_S02" {
    SRM_S02 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "QBP_Q22" {
    QBP_Q22 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A33" {
    ADT_A33 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRR_S03" {
    SRR_S03 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "QBP_Q23" {
    QBP_Q23 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A32" {
    ADT_A32 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRR_S02" {
    SRR_S02 messageInstance = {msh:{},msa: {}};
    return messageInstance;
} else if messageName == "ARD_A19" {
    ARD_A19 messageInstance = {msh:{},qrd: {}, msa: {}};
    return messageInstance;
} else if messageName == "ORU_R31" {
    ORU_R31 messageInstance = {msh:{},orc: {}, pid: {}, obr: {}};
    return messageInstance;
} else if messageName == "PMU_B02" {
    PMU_B02 messageInstance = {msh:{},stf: {}, evn: {}};
    return messageInstance;
} else if messageName == "SRM_S03" {
    SRM_S03 messageInstance = {msh:{},arq: {}};
    return messageInstance;
} else if messageName == "ORF_W02" {
    ORF_W02 messageInstance = {msh:{},qrd: {}, msa: {}};
    return messageInstance;
} else if messageName == "ADT_A08" {
    ADT_A08 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "REF_I15" {
    REF_I15 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "QBP_Z99" {
    QBP_Z99 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "CRM_C07" {
    CRM_C07 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "ADT_A49" {
    ADT_A49 messageInstance = {msh:{},mrg: {}, pid: {}, evn: {}};
    return messageInstance;
} else if messageName == "MDM_T03" {
    MDM_T03 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}, txa: {}};
    return messageInstance;
} else if messageName == "PPR_PC3" {
    PPR_PC3 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else if messageName == "RTB_Z92" {
    RTB_Z92 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "CSU_C11" {
    CSU_C11 messageInstance = {msh:{}};
    return messageInstance;
} else if messageName == "RSP_K24" {
    RSP_K24 messageInstance = {msh:{},qpd: {}, msa: {}, qak: {}};
    return messageInstance;
} else if messageName == "ADT_A28" {
    ADT_A28 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "QBP_Z95" {
    QBP_Z95 messageInstance = {msh:{},qpd: {}, rcp: {}};
    return messageInstance;
} else if messageName == "ADT_A04" {
    ADT_A04 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "ADT_A53" {
    ADT_A53 messageInstance = {msh:{},pid: {}, pv1: {}, evn: {}};
    return messageInstance;
} else if messageName == "MFK_M04" {
    MFK_M04 messageInstance = {msh:{},mfi: {}, msa: {}};
    return messageInstance;
} else if messageName == "RRI_I13" {
    RRI_I13 messageInstance = {msh:{},pid: {}};
    return messageInstance;
} else {
    return ();
}
}

# Returns instance of HL7 segment component.
#
# + segmentComponentName - HL7 Segment component name
# + return - Instance of HL7 segment component
public isolated function getSegmentComponent(string segmentComponentName) returns hl7v2:SegmentComponent? {
if segmentComponentName == "RPR_I03_PROVIDER" {
    RPR_I03_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A06_PROCEDURE" {
    ADT_A06_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_TIIMING" {
    OML_O21_TIIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_QUERY_RESPONSE" {
    RSP_Z88_QUERY_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_ORDER_OBSERVATION" {
    PGL_PC6_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_ORDER_OBSERVATION" {
    PTR_PCF_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M02_MF_STAFF" {
    MFN_M02_MF_STAFF messageInstance = {stf:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_OBSERVATION" {
    OML_O33_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PATIENT_VISIT" {
    PGL_PC6_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R22_SPECIMEN" {
    OUL_R22_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P02_PATIENT" {
    BAR_P02_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_TIMING_ENCODED" {
    RSP_Z88_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORF_R04_PATIENT" {
    ORF_R04_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_TIMING_ENCODED" {
    RDE_O11_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_TIMING_DIET" {
    ORD_O04_TIMING_DIET messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_PATIENT" {
    OMP_O09_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_PROCEDURE" {
    RRI_I12_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "OMB_O27_PATIENT_VISIT" {
    OMB_O27_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OSR_Q06_RESPONSE" {
    OSR_Q06_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "SQM_S25_PERSONNEL_RESOURCE" {
    SQM_S25_PERSONNEL_RESOURCE messageInstance = {aip:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_INSURANCE" {
    OMS_O05_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_OBSERVATION_REQUEST" {
    ORL_O34_OBSERVATION_REQUEST messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_VISIT" {
    OUL_R24_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_AUTHORIZATION_CONTACT" {
    REF_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_PATIENT_VISIT" {
    PRR_PC5_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_VISIT" {
    PEX_P07_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORF_R04_TIMING_QTY" {
    ORF_R04_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A05_INSURANCE" {
    ADT_A05_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_PATIENT" {
    RSP_Z90_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_OBSERVATION" {
    RAS_O17_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M05_MF_LOCATION" {
    MFN_M05_MF_LOCATION messageInstance = {loc:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ORDER" {
    RAS_O17_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_COMPONENT" {
    RSP_Z88_COMPONENT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_ORDER_OBSERVATION" {
    PPT_PCL_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ADR_A19_QUERY_RESPONSE" {
    ADR_A19_QUERY_RESPONSE messageInstance = {pid:{}, pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_OBSERVATION_REQUEST" {
    ORL_O36_OBSERVATION_REQUEST messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PROBLEM" {
    PTR_PCF_PROBLEM messageInstance = {prb:{}};
    return messageInstance;
} else if segmentComponentName == "OMB_O27_PATIENT" {
    OMB_O27_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PROBLEM_OBSERVATION" {
    PPT_PCL_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_PATIENT_VISIT" {
    PPR_PC1_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_CONTAINER" {
    OUL_R23_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PATIENT" {
    PPT_PCL_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T01_COMMON_ORDER" {
    MDM_T01_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_PATIENT" {
    PPV_PCA_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_TREATMENT" {
    RSP_Z82_TREATMENT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_ORDER" {
    PPR_PC1_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_TIMING" {
    RAS_O17_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "BPS_O29_PRODUCT" {
    BPS_O29_PRODUCT messageInstance = {bpx:{}};
    return messageInstance;
} else if segmentComponentName == "RRG_O16_TIMING" {
    RRG_O16_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_ORDER_DETAIL" {
    PGL_PC6_ORDER_DETAIL messageInstance = {pgl_pc6_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_PATIENT" {
    ORG_O20_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_INSURANCE" {
    ORM_O01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_TIMING_ENCODED" {
    RDS_O13_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_CONTAINER" {
    OML_O21_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "NMD_N02_CLOCK" {
    NMD_N02_CLOCK messageInstance = {nck:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I01_INSURANCE" {
    RPI_I01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "ORI_O24_RESPONSE" {
    ORI_O24_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PATHWAY_ROLE" {
    PPG_PCG_PATHWAY_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M07_MF_QUERY" {
    MFR_M07_MF_QUERY messageInstance = {cm0:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_GOAL_OBSERVATION" {
    PPV_PCA_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_ENCODING" {
    RGV_O15_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_GOAL" {
    PTR_PCF_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_TIMING" {
    OMN_O07_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_OBSERVATION" {
    RPA_I08_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_SPECIMEN" {
    OML_O33_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_COMPONENT" {
    OMP_O09_COMPONENT messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_ORDER" {
    OML_O21_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P05_VISIT" {
    BAR_P05_VISIT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ADT_A01_INSURANCE" {
    ADT_A01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_QUERY_RESPONSE" {
    RSP_Z86_QUERY_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_TIMING_PRIOR" {
    OMG_O19_TIMING_PRIOR messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_PROBLEM_ROLE" {
    PPR_PC1_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_DEFINITION" {
    RDR_RDR_DEFINITION messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_ORDER_TRAY" {
    ORD_O04_ORDER_TRAY messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "SSR_U04_SPECIMEN_CONTAINER" {
    SSR_U04_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_PATIENT" {
    OML_O21_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_ORDER_DETAIL" {
    PPP_PCB_ORDER_DETAIL messageInstance = {ppp_pcb_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_ASSOCIATED_RX_ORDER" {
    PEX_P07_ASSOCIATED_RX_ORDER messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "RQI_I01_GUARANTOR_INSURANCE" {
    RQI_I01_GUARANTOR_INSURANCE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_FINANCIAL_ORDER" {
    DFT_P11_FINANCIAL_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_TIMING_QUANTITY" {
    DFT_P03_TIMING_QUANTITY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_CHOICE" {
    PPR_PC1_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_VISIT" {
    RQA_I08_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_PATIENT" {
    ORD_O04_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_GENERAL_RESOURCE" {
    SRM_S01_GENERAL_RESOURCE messageInstance = {aig:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_PATIENT" {
    ORM_O01_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "EAC_U07_COMMAND" {
    EAC_U07_COMMAND messageInstance = {ecd:{}};
    return messageInstance;
} else if segmentComponentName == "RRE_O12_TIMING_ENCODED" {
    RRE_O12_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RER_RER_DEFINITION" {
    RER_RER_DEFINITION messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P10_PROCEDURE" {
    BAR_P10_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_TIMING" {
    RRD_O14_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_INSURANCE" {
    RPA_I08_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_PROVIDER" {
    RPA_I08_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Q11_QUERY_RESULT_CLUSTER" {
    RSP_Q11_QUERY_RESULT_CLUSTER messageInstance = {loc:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "ORF_R04_QUERY_RESPONSE" {
    ORF_R04_QUERY_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_ORDER_DETAIL" {
    RDE_O11_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_PATIENT_PRIOR" {
    OMG_O19_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT" {
    NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "BPS_O29_ORDER" {
    BPS_O29_ORDER messageInstance = {bpo:{}, orc:{}};
    return messageInstance;
} else if segmentComponentName == "SIU_S12_RESOURCES" {
    SIU_S12_RESOURCES messageInstance = {rgs:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_OBSERVATION" {
    OMG_O19_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_INSURANCE" {
    OMN_O07_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Q11_MF_LOC_DEPT" {
    RSP_Q11_MF_LOC_DEPT messageInstance = {ldp:{}};
    return messageInstance;
} else if segmentComponentName == "CSU_C09_VISIT" {
    CSU_C09_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_PROCEDURE" {
    REF_I12_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_PROBLEM_ROLE" {
    PRR_PC5_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "SUR_P09_FACILITY_DETAIL" {
    SUR_P09_FACILITY_DETAIL messageInstance = {fac:{}, pdc:{}, nte:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_PATIENT" {
    RGV_O15_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_VISIT" {
    OUL_R21_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_OBSERVATION" {
    RGV_O15_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_OBSERVATION" {
    OUL_R21_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_RESPONSE" {
    RRD_O14_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_INSURANCE" {
    OML_O35_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_PRIOR_RESULT" {
    OML_O21_PRIOR_RESULT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PATHWAY" {
    PPP_PCB_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "ORR_O02_RESPONSE" {
    ORR_O02_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_ORDER" {
    ORL_O36_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_ORDER_DETAIL" {
    RSP_K31_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_ORDER_OBSERVATION" {
    OUL_R21_ORDER_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_FINANCIAL_OBSERVATION" {
    DFT_P11_FINANCIAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_SPECIMEN" {
    OUL_R23_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_OBSERVATION_PRIOR" {
    OML_O35_OBSERVATION_PRIOR messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_ORDER" {
    RRA_O18_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_GOAL" {
    PPP_PCB_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PROBLEM_OBSERVATION" {
    PPG_PCG_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K23_QUERY_RESPONSE" {
    RSP_K23_QUERY_RESPONSE messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_OBSERVATION" {
    DFT_P11_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_ORDER" {
    RGV_O15_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_PATIENT" {
    RDS_O13_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_ORDER" {
    PTR_PCF_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_OBSERVATION" {
    VXR_V03_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P01_VISIT" {
    BAR_P01_VISIT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PATIENT_VISIT" {
    PPP_PCB_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RGR_RGR_ENCODING" {
    RGR_RGR_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_INSURANCE" {
    DFT_P11_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_OBSERVATION_REQUEST" {
    ORL_O22_OBSERVATION_REQUEST messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_RX_ADMINISTRATION" {
    PEX_P07_RX_ADMINISTRATION messageInstance = {rxa:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_OBSERVATION" {
    RDS_O13_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_ORDER_DIET" {
    ORD_O04_ORDER_DIET messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M09_MF_TEST_CATEGORICAL" {
    MFN_M09_MF_TEST_CATEGORICAL messageInstance = {om1:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_PATIENT_VISIT" {
    OMS_O05_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "SRR_S01_SERVICE" {
    SRR_S01_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_OBSERVATION" {
    RSP_Z82_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O33_TIMING_PRIOR" {
    OML_O33_TIMING_PRIOR messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_PROVIDER" {
    RQA_I08_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_PATIENT_VISIT" {
    REF_I12_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RRG_O16_GIVE" {
    RRG_O16_GIVE messageInstance = {rxg:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_OBSERVATION" {
    RDE_O11_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_VISIT" {
    RSP_Z82_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_TIMING" {
    RGV_O15_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "SQM_S25_LOCATION_RESOURCE" {
    SQM_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_GOAL_OBSERVATION" {
    PPG_PCG_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_ORDER_PRIOR" {
    OMG_O19_ORDER_PRIOR messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_COMMON_ORDER" {
    DFT_P11_COMMON_ORDER messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O21_PATIENT_VISIT" {
    OML_O21_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "EAC_U07_SPECIMEN_CONTAINER" {
    EAC_U07_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_GOAL_ROLE" {
    PPR_PC1_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_PATIENT" {
    OUL_R23_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_PROBLEM" {
    PPR_PC1_PROBLEM messageInstance = {prb:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R22_VISIT" {
    OUL_R22_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_RESPONSE" {
    ORL_O34_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_RESPONSE" {
    ORL_O36_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_VISIT" {
    OUL_R23_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_PATIENT" {
    ORL_O36_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_CHOICE" {
    PRR_PC5_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RGR_RGR_PATIENT" {
    RGR_RGR_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_FINANCIAL_PROCEDURE" {
    DFT_P11_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_SPECIMEN" {
    ORL_O36_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M01_MF" {
    MFN_M01_MF messageInstance = {mfe:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_PATIENT" {
    RRA_O18_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_PATIENT" {
    ORL_O34_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else {
    return ();
}
}

isolated function getSegmentComponentPart2(string segmentComponentName) returns hl7v2:SegmentComponent? {
if segmentComponentName == "RRI_I12_PATIENT_VISIT" {
    RRI_I12_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_ORDER" {
    PPT_PCL_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_PERSONNEL_RESOURCE" {
    SRM_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_AUTCTD_SUPPGRP2" {
    RQA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_GIVE" {
    RSP_Z86_GIVE messageInstance = {rxg:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_GOAL_ROLE" {
    PPG_PCG_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_ORDER_DETAIL" {
    ORM_O01_ORDER_DETAIL messageInstance = {orm_o01_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "MFN_M11_MF_TEST_CALCULATED" {
    MFN_M11_MF_TEST_CALCULATED messageInstance = {om1:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_STUDY" {
    PEX_P07_STUDY messageInstance = {csr:{}};
    return messageInstance;
} else if segmentComponentName == "BTS_O31_ORDER" {
    BTS_O31_ORDER messageInstance = {bpo:{}, orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_PROBLEM_ROLE" {
    PPV_PCA_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_GOAL" {
    PGL_PC6_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_GOAL_OBSERVATION" {
    PPR_PC1_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M07_MF_CLIN_STUDY_SCHED" {
    MFN_M07_MF_CLIN_STUDY_SCHED messageInstance = {cm0:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_ENCODING" {
    RDS_O13_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "SRR_S01_PERSONNEL_RESOURCE" {
    SRR_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_PATIENT_VISIT" {
    ORM_O01_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ROR_ROR_DEFINITION" {
    ROR_ROR_DEFINITION messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "RRG_O16_TIMING_GIVE" {
    RRG_O16_TIMING_GIVE messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PROBLEM_ROLE" {
    PPT_PCL_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_RESPONSE" {
    ORD_O04_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_GOAL_OBSERVATION" {
    PRR_PC5_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R22_TIMING_QTY" {
    OUL_R22_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_PROCEDURE" {
    RQA_I08_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_PATIENT" {
    RDE_O11_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A05_PROCEDURE" {
    ADT_A05_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "TCU_U10_TEST_CONFIGURATION" {
    TCU_U10_TEST_CONFIGURATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_RESPONSE" {
    ORL_O22_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_PATIENT_VISIT" {
    VXR_V03_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_PATIENT" {
    SRM_S01_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BRT_O32_RESPONSE" {
    BRT_O32_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_TIMING_ENCODED" {
    RSP_Z86_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ROR_ROR_PATIENT" {
    ROR_ROR_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_PATIENT" {
    OML_O33_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_NK1_TIMING_QTY" {
    PEX_P07_NK1_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_ORDER_DETAIL" {
    RDS_O13_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_COMPONENTS" {
    RGV_O15_COMPONENTS messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_PROCEDURE" {
    RPA_I08_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_COMMON_ORDER" {
    RSP_Z82_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_QUERY_RESPONSE" {
    RSP_Z82_QUERY_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_AUTHORIZATION" {
    RQA_I08_AUTHORIZATION messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_ORDER_OBSERVATION" {
    PPV_PCA_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_SERVICE" {
    SQR_S25_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PROBLEM" {
    PPG_PCG_PROBLEM messageInstance = {prb:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_OBSERVATION" {
    RSP_Z88_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PRIOR_RESULT" {
    OML_O35_PRIOR_RESULT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ADT_A06_INSURANCE" {
    ADT_A06_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_TIMING_PRIOR" {
    OML_O21_TIMING_PRIOR messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RAR_RAR_ENCODING" {
    RAR_RAR_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "OMI_O23_PATIENT" {
    OMI_O23_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORS_O06_TIMING" {
    ORS_O06_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RCI_I05_OBSERVATION" {
    RCI_I05_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_RESULTS_NOTES" {
    REF_I12_RESULTS_NOTES messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_PROVIDER_CONTACT" {
    REF_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_OBSERVATION_PRIOR" {
    OML_O21_OBSERVATION_PRIOR messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_VISIT" {
    RSP_Z88_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORS_O06_ORDER" {
    ORS_O06_ORDER messageInstance = {orc:{}, rqd:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_LOCATION_RESOURCE" {
    SRM_S01_LOCATION_RESOURCE messageInstance = {ail:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_PROVIDER_CONTACT" {
    RRI_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M03_MF_TEST" {
    MFN_M03_MF_TEST messageInstance = {om1:{}, anyhl7segment:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_CONTAINER" {
    OMG_O19_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_GOAL_ROLE" {
    PRR_PC5_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_PATIENT" {
    PRR_PC5_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_INSURANCE" {
    RDE_O11_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_OBSERVATION" {
    DFT_P03_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_SPECIMEN" {
    OMG_O19_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "NMD_N02_CLOCK_AND_STATS_WITH_NOTES" {
    NMD_N02_CLOCK_AND_STATS_WITH_NOTES messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PATHWAY" {
    PGL_PC6_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "ORI_O24_PATIENT" {
    ORI_O24_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORN_O08_TIMING" {
    ORN_O08_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_PATIENT" {
    OMG_O19_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_INSURANCE" {
    REF_I12_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RGR_RGR_ORDER" {
    RGR_RGR_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_EXPERIENCE" {
    PEX_P07_EXPERIENCE messageInstance = {pes:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_AUTCTD_SUPPGRP2" {
    RRI_I12_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "ORB_O28_ORDER" {
    ORB_O28_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_TIMING_QTY" {
    OUL_R23_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_GOAL_ROLE" {
    PPP_PCB_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_RX_ORDER" {
    PEX_P07_RX_ORDER messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_ORDER" {
    RSP_K31_ORDER messageInstance = {orc:{}, rxd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_PRIOR_RESULT" {
    OML_O33_PRIOR_RESULT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_FINANCIAL_COMMON_ORDER" {
    DFT_P03_FINANCIAL_COMMON_ORDER messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "REF_I12_AUTCTD_SUPPGRP2" {
    REF_I12_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_OBSERVATION" {
    OML_O35_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RQC_I05_PROVIDER" {
    RQC_I05_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "RQP_I04_PROVIDER" {
    RQP_I04_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "RCI_I05_PROVIDER" {
    RCI_I05_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M06_MF_PHASE_SCHED_DETAIL" {
    MFN_M06_MF_PHASE_SCHED_DETAIL messageInstance = {cm1:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PATHWAY" {
    PTR_PCF_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_PATIENT_VISIT" {
    OMD_O03_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_ORDER_OBSERVATION" {
    PPP_PCB_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_PATIENT" {
    OMN_O07_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_PATIENT_PRIOR" {
    OML_O33_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PATHWAY_ROLE" {
    PPP_PCB_PATHWAY_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M04_MF_QUERY" {
    MFR_M04_MF_QUERY messageInstance = {mfe:{}, cdm:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_COMMON_ORDER" {
    RSP_Z86_COMMON_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "ORN_O08_RESPONSE" {
    ORN_O08_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_FINANCIAL_ORDER" {
    DFT_P03_FINANCIAL_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_ORDER_OBSERVATION" {
    PPG_PCG_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_PATIENT" {
    OUL_R24_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "SIU_S12_LOCATION_RESOURCE" {
    SIU_S12_LOCATION_RESOURCE messageInstance = {ail:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_ORDER" {
    PPP_PCB_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "QBP_K13_ROW_DEFINITION" {
    QBP_K13_ROW_DEFINITION messageInstance = {rdf:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R01_SPECIMEN" {
    ORU_R01_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "RRE_O12_RESPONSE" {
    RRE_O12_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_INSURANCE" {
    OMP_O09_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P01_PROCEDURE" {
    BAR_P01_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M04_MF_CDM" {
    MFN_M04_MF_CDM messageInstance = {mfe:{}, cdm:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_Znn_MF_SITE_DEFINED" {
    MFN_Znn_MF_SITE_DEFINED messageInstance = {anyhl7segment:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_ORDER_DETAIL" {
    PPG_PCG_ORDER_DETAIL messageInstance = {ppg_pcg_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "QVR_Q17_QBP" {
    QVR_Q17_QBP messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "SUR_P09_FACILITY" {
    SUR_P09_FACILITY messageInstance = {psh:{}, fac:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_PATIENT_VISIT" {
    RSP_K31_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORP_O10_TIMING" {
    ORP_O10_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_OBSERVATION_REQUEST" {
    OML_O21_OBSERVATION_REQUEST messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M08_MF_TEST_NUMERIC" {
    MFN_M08_MF_TEST_NUMERIC messageInstance = {om1:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P06_PATIENT" {
    BAR_P06_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_PATIENT" {
    OUL_R21_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M06_MF_QUERY" {
    MFR_M06_MF_QUERY messageInstance = {cm0:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "CSU_C09_PATIENT" {
    CSU_C09_PATIENT messageInstance = {csr:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_TIMING_DIET" {
    OMD_O03_TIMING_DIET messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_TIMING_ENCODED" {
    RAS_O17_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_ORDER_DETAIL" {
    RGV_O15_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_PATIENT" {
    RRD_O14_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_ORDER_DETAIL" {
    RSP_Z88_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "CSU_C09_STUDY_OBSERVATION" {
    CSU_C09_STUDY_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_QUERY_RESPONSE" {
    RSP_Z90_QUERY_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_PATIENT" {
    RAS_O17_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PROBLEM_OBSERVATION" {
    PTR_PCF_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_TIMING" {
    RDS_O13_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PATHWAY_ROLE" {
    PTR_PCF_PATHWAY_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_PATIENT" {
    RDR_RDR_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PMU_B07_CERTIFICATE" {
    PMU_B07_CERTIFICATE messageInstance = {cer:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K25_STAFF" {
    RSP_K25_STAFF messageInstance = {stf:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_TIMING_ENCODED" {
    RSP_K31_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_TIMING" {
    RSP_Z82_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_TIMING_QTY" {
    PEX_P07_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_GOAL_OBSERVATION" {
    PTR_PCF_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_GOAL" {
    PRR_PC5_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_TIMING_ENCODED" {
    RSP_Z82_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_PEX_CAUSE" {
    PEX_P07_PEX_CAUSE messageInstance = {pcr:{}};
    return messageInstance;
} else if segmentComponentName == "CRM_C01_PATIENT" {
    CRM_C01_PATIENT messageInstance = {csr:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_AUTHORIZATION_2" {
    RPA_I08_AUTHORIZATION_2 messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_GOAL" {
    PPV_PCA_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K21_QUERY_RESPONSE" {
    RSP_K21_QUERY_RESPONSE messageInstance = {qri:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_PATIENT_VISIT" {
    RGV_O15_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "SIU_S12_PATIENT" {
    SIU_S12_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_AUTHORIZATION_1" {
    RPA_I08_AUTHORIZATION_1 messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_FINANCIAL_TIMING_QUANTITY" {
    DFT_P11_FINANCIAL_TIMING_QUANTITY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P11_FINANCIAL" {
    DFT_P11_FINANCIAL messageInstance = {ft1:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_ORDER" {
    DFT_P03_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_COMPONENT" {
    RDS_O13_COMPONENT messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "RER_RER_PATIENT" {
    RER_RER_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_TIMING" {
    ORL_O34_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T02_COMMON_ORDER" {
    MDM_T02_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_INSURANCE" {
    OML_O33_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M15_MF_INV_ITEM" {
    MFN_M15_MF_INV_ITEM messageInstance = {iim:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_TIMING" {
    RRA_O18_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PROBLEM" {
    PGL_PC6_PROBLEM messageInstance = {prb:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A16_PROCEDURE" {
    ADT_A16_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M05_MF_QUERY" {
    MFR_M05_MF_QUERY messageInstance = {loc:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "RQI_I01_PROVIDER" {
    RQI_I01_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_RESULTS" {
    RQA_I08_RESULTS messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_ORDER_DETAIL_SUPPLEMENT" {
    RGV_O15_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "SSU_U03_SPECIMEN_CONTAINER" {
    SSU_U03_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "NMQ_N01_QRY_WITH_DETAIL" {
    NMQ_N01_QRY_WITH_DETAIL messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_ORDER" {
    ORG_O20_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_PATIENT" {
    SQR_S25_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "VXU_V04_PATIENT" {
    VXU_V04_PATIENT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_ORDER" {
    RDS_O13_ORDER messageInstance = {orc:{}, rxd:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_ASSOCIATED_RX_ADMIN" {
    PEX_P07_ASSOCIATED_RX_ADMIN messageInstance = {rxa:{}};
    return messageInstance;
} else {
    return ();
}
}

isolated function getSegmentComponentPart3(string segmentComponentName) returns hl7v2:SegmentComponent? {
if segmentComponentName == "RSP_Z88_TIMING" {
    RSP_Z88_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORB_O28_TIMING" {
    ORB_O28_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M09_MF_TEST_CAT_DETAIL" {
    MFN_M09_MF_TEST_CAT_DETAIL messageInstance = {om3:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A43_PATIENT" {
    ADT_A43_PATIENT messageInstance = {mrg:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_VISIT" {
    ORU_R30_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RQI_I01_INSURANCE" {
    RQI_I01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "VXU_V04_OBSERVATION" {
    VXU_V04_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_PATIENT" {
    RSP_Z82_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_ORDER" {
    OUL_R23_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "BTS_O31_PATIENT" {
    BTS_O31_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T01_TIMING" {
    MDM_T01_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_PATIENT" {
    RSP_K31_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I04_GUARANTOR_INSURANCE" {
    RPI_I04_GUARANTOR_INSURANCE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "MFN_M11_MF_TEST_CALC_DETAIL" {
    MFN_M11_MF_TEST_CALC_DETAIL messageInstance = {om2:{}, om6:{}};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_TIMING" {
    VXR_V03_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "BRP_O30_ORDER" {
    BRP_O30_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "NMD_N02_APP_STATUS" {
    NMD_N02_APP_STATUS messageInstance = {nsc:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_CHOICE" {
    PPP_PCB_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_ORDER" {
    OUL_R24_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_INSURANCE" {
    VXR_V03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_PATIENT_VISIT" {
    OMP_O09_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_TIMING" {
    ORL_O36_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORP_O10_ORDER_DETAIL" {
    ORP_O10_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_PATIENT" {
    OMD_O03_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_TIMING_TRAY" {
    ORD_O04_TIMING_TRAY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_OBSERVATION" {
    RQA_I08_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OMB_O27_TIMING" {
    OMB_O27_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_ORDER" {
    OMN_O07_ORDER messageInstance = {orc:{}, rqd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_PRIOR" {
    OML_O35_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PATHWAY" {
    PPG_PCG_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "ORF_R04_ORDER" {
    ORF_R04_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL" {
    PPT_PCL_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M06_MF_CLIN_STUDY" {
    MFN_M06_MF_CLIN_STUDY messageInstance = {cm0:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "EAR_U08_SPECIMEN_CONTAINER" {
    EAR_U08_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "DOC_T12_RESULT" {
    DOC_T12_RESULT messageInstance = {pid:{}, pv1:{}, txa:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_PATIENT" {
    RSP_Z86_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "SIU_S12_SERVICE" {
    SIU_S12_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A39_PATIENT" {
    ADT_A39_PATIENT messageInstance = {mrg:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_OBSERVATION" {
    OMS_O05_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_RESPONSE" {
    RRA_O18_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_SPECIMEN" {
    OML_O35_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_SERVICE" {
    SRM_S01_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_TIMING" {
    RSP_Z86_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "SSU_U03_SPECIMEN" {
    SSU_U03_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_GENERAL_RESOURCE" {
    SQR_S25_GENERAL_RESOURCE messageInstance = {aig:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PROBLEM_OBSERVATION" {
    PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ORDER_DETAIL_SUPPLEMENT" {
    RAS_O17_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ADT_A03_INSURANCE" {
    ADT_A03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_TIMING" {
    OMP_O09_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_DISPENSE" {
    RRD_O14_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_OBSERVATION" {
    RSP_Z86_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_PATIENT" {
    ORL_O22_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P01_INSURANCE" {
    BAR_P01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_TIMING" {
    OMS_O05_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL_ROLE" {
    PPT_PCL_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_VISIT" {
    RPA_I08_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_ORDER_PRIOR" {
    OML_O21_ORDER_PRIOR messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_VISIT_PRIOR" {
    OML_O35_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_COMMON_ORDER" {
    DFT_P03_COMMON_ORDER messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_GOAL_OBSERVATION" {
    PPP_PCB_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_AUTHORIZATION_CONTACT" {
    RRI_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "ORI_O24_ORDER" {
    ORI_O24_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PROBLEM_ROLE" {
    PPP_PCB_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_SPECIMEN" {
    ORL_O22_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_TIMING_QTY" {
    ORU_R30_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_PROBLEM_OBSERVATION" {
    PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_TIMING_TRAY" {
    OMD_O03_TIMING_TRAY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "EAN_U09_NOTIFICATION" {
    EAN_U09_NOTIFICATION messageInstance = {nds:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_COMPONENTS" {
    RAS_O17_COMPONENTS messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "RTB_K13_ROW_DEFINITION" {
    RTB_K13_ROW_DEFINITION messageInstance = {rdf:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A45_MERGE_INFO" {
    ADT_A45_MERGE_INFO messageInstance = {mrg:{}, pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_PATIENT_PRIOR" {
    OML_O21_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_COMPONENT" {
    RDE_O11_COMPONENT messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_ORDER_DETAIL" {
    PTR_PCF_ORDER_DETAIL messageInstance = {ptr_pcf_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_PATIENT_VISIT_PRIOR" {
    OMG_O19_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_ENCODING" {
    RSP_K31_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_ASSOCIATED_PERSON" {
    PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_ORDER" {
    RRD_O14_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K11_ROW_DEFINITION" {
    RSP_K11_ROW_DEFINITION messageInstance = {rdf:{}};
    return messageInstance;
} else if segmentComponentName == "ORS_O06_RESPONSE" {
    ORS_O06_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_ORDER" {
    RDR_RDR_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_GOAL" {
    PPR_PC1_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M01_MF_QUERY" {
    MFR_M01_MF_QUERY messageInstance = {mfe:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_ORDER_TRAY" {
    OMD_O03_ORDER_TRAY messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PROBLEM_OBSERVATION" {
    PPP_PCB_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORB_O28_PATIENT" {
    ORB_O28_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_ORDER" {
    RDE_O11_ORDER messageInstance = {orc:{}, rxe:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT" {
    OML_O35_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BPS_O29_PATIENT" {
    BPS_O29_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I01_GUARANTOR_INSURANCE" {
    RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_DISPENSE" {
    RDR_RDR_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_RESOURCES" {
    SRM_S01_RESOURCES messageInstance = {rgs:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL_OBSERVATION" {
    PPT_PCL_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PATIENT" {
    PTR_PCF_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_RESULT" {
    OUL_R23_RESULT messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_OBRanyHL7Segment_SUPPGRP" {
    PPV_PCA_OBRanyHL7Segment_SUPPGRP messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_PROBLEM_OBSERVATION" {
    PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_LOCATION_RESOURCE" {
    SQR_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_TIMING" {
    RSP_Z90_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ROR_ROR_ORDER" {
    ROR_ROR_ORDER messageInstance = {orc:{}, rxo:{}};
    return messageInstance;
} else if segmentComponentName == "NMQ_N01_CLOCK_AND_STATISTICS" {
    NMQ_N01_CLOCK_AND_STATISTICS messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OSR_Q06_PATIENT" {
    OSR_Q06_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "CSU_C09_TIMING_QTY" {
    CSU_C09_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_ORDER" {
    PPV_PCA_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I04_PROVIDER" {
    RPI_I04_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R22_RESULT" {
    OUL_R22_RESULT messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_SPECIMEN" {
    ORG_O20_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_RESPONSE" {
    RSP_K31_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_ORDER_DETAIL" {
    PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_GOAL_ROLE" {
    PGL_PC6_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PATIENT_VISIT" {
    PPG_PCG_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_OBSERVATION" {
    OMN_O07_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_ORDER" {
    ORL_O34_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_VISIT" {
    OML_O35_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P12_PROCEDURE" {
    BAR_P12_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RRG_O16_PATIENT" {
    RRG_O16_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RAR_RAR_ORDER" {
    RAR_RAR_ORDER messageInstance = {orc:{}, rxr:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_CONTAINER" {
    OUL_R21_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_OBSERVATION" {
    ORU_R30_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ADR_A19_PROCEDURE" {
    ADR_A19_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P05_INSURANCE" {
    BAR_P05_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M05_MF_LOC_DEPT" {
    MFN_M05_MF_LOC_DEPT messageInstance = {ldp:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_ORDER_OBSERVATION" {
    PPR_PC1_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RCL_I06_PROVIDER" {
    RCL_I06_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_PATIENT_VISIT_PRIOR" {
    OML_O33_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_GOAL" {
    PPG_PCG_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "OMI_O23_ORDER" {
    OMI_O23_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PROBLEM_ROLE" {
    PGL_PC6_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_ORDER" {
    ORM_O01_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "BRP_O30_TIMING" {
    BRP_O30_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_OBSERVATION" {
    REF_I12_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_TIMING_ENCODED" {
    RGV_O15_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_SPECIMEN" {
    ORL_O34_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T02_OBSERVATION" {
    MDM_T02_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_INSURANCE" {
    OML_O21_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ENCODING" {
    RAS_O17_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "OSR_Q06_ORDER" {
    OSR_Q06_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_COMMON_ORDER" {
    RSP_Z88_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_OBSERVATION" {
    ORM_O01_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_ORDER_DIET" {
    OMD_O03_ORDER_DIET messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "SRR_S01_RESOURCES" {
    SRR_S01_RESOURCES messageInstance = {rgs:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PATHWAY" {
    PPT_PCL_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ADMINISTRATION" {
    RAS_O17_ADMINISTRATION messageInstance = {rxr:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R01_PATIENT" {
    ORU_R01_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_ORDER" {
    OMP_O09_ORDER messageInstance = {orc:{}, rxo:{}};
    return messageInstance;
} else if segmentComponentName == "RAR_RAR_DEFINITION" {
    RAR_RAR_DEFINITION messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_ENCODED_ORDER" {
    RSP_Z86_ENCODED_ORDER messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_OBSERVATION" {
    RRI_I12_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P05_PROCEDURE" {
    BAR_P05_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_ADMINISTRATION" {
    RRA_O18_ADMINISTRATION messageInstance = {rxr:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_CHOICE" {
    PPG_PCG_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_CHOICE" {
    PGL_PC6_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_ORDER_DETAIL" {
    PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "ORP_O10_PATIENT" {
    ORP_O10_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BTS_O31_TIMING" {
    BTS_O31_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_PATIENT_VISIT" {
    RDE_O11_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R01_PATIENT_RESULT" {
    ORU_R01_PATIENT_RESULT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_COMPONENTS" {
    RSP_K31_COMPONENTS messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_TIIMING" {
    OML_O35_TIIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_RESULTS_NOTES" {
    RRI_I12_RESULTS_NOTES messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_SCHEDULE" {
    SQR_S25_SCHEDULE messageInstance = {sch:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_PATIENT_VISIT" {
    RDS_O13_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_DISPENSE" {
    RSP_Z86_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_TIMING" {
    ORG_O20_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_VISIT" {
    RSP_Z90_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_CHOICE" {
    PPT_PCL_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_SPECIMEN_CONTAINER" {
    OML_O35_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_SPECIMEN" {
    OUL_R24_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "VXX_V02_PATIENT" {
    VXX_V02_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PATHWAY_ROLE" {
    PPT_PCL_PATHWAY_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_INSURANCE" {
    OMD_O03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else {
    return ();
}
}

isolated function getSegmentComponentPart4(string segmentComponentName) returns hl7v2:SegmentComponent? {
if segmentComponentName == "RSP_Z88_TIMING" {
    RSP_Z88_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORB_O28_TIMING" {
    ORB_O28_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M09_MF_TEST_CAT_DETAIL" {
    MFN_M09_MF_TEST_CAT_DETAIL messageInstance = {om3:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A43_PATIENT" {
    ADT_A43_PATIENT messageInstance = {mrg:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_VISIT" {
    ORU_R30_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RQI_I01_INSURANCE" {
    RQI_I01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "VXU_V04_OBSERVATION" {
    VXU_V04_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z82_PATIENT" {
    RSP_Z82_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_ORDER" {
    OUL_R23_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "BTS_O31_PATIENT" {
    BTS_O31_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T01_TIMING" {
    MDM_T01_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_PATIENT" {
    RSP_K31_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I04_GUARANTOR_INSURANCE" {
    RPI_I04_GUARANTOR_INSURANCE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "MFN_M11_MF_TEST_CALC_DETAIL" {
    MFN_M11_MF_TEST_CALC_DETAIL messageInstance = {om2:{}, om6:{}};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_TIMING" {
    VXR_V03_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "BRP_O30_ORDER" {
    BRP_O30_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "NMD_N02_APP_STATUS" {
    NMD_N02_APP_STATUS messageInstance = {nsc:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_CHOICE" {
    PPP_PCB_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_ORDER" {
    OUL_R24_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "VXR_V03_INSURANCE" {
    VXR_V03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_PATIENT_VISIT" {
    OMP_O09_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O36_TIMING" {
    ORL_O36_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORP_O10_ORDER_DETAIL" {
    ORP_O10_ORDER_DETAIL messageInstance = {rxo:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_PATIENT" {
    OMD_O03_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "ORD_O04_TIMING_TRAY" {
    ORD_O04_TIMING_TRAY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RQA_I08_OBSERVATION" {
    RQA_I08_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OMB_O27_TIMING" {
    OMB_O27_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_ORDER" {
    OMN_O07_ORDER messageInstance = {orc:{}, rqd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_PRIOR" {
    OML_O35_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PATHWAY" {
    PPG_PCG_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "ORF_R04_ORDER" {
    ORF_R04_ORDER messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL" {
    PPT_PCL_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M06_MF_CLIN_STUDY" {
    MFN_M06_MF_CLIN_STUDY messageInstance = {cm0:{}, mfe:{}};
    return messageInstance;
} else if segmentComponentName == "EAR_U08_SPECIMEN_CONTAINER" {
    EAR_U08_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "DOC_T12_RESULT" {
    DOC_T12_RESULT messageInstance = {pid:{}, pv1:{}, txa:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_PATIENT" {
    RSP_Z86_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "SIU_S12_SERVICE" {
    SIU_S12_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A39_PATIENT" {
    ADT_A39_PATIENT messageInstance = {mrg:{}, pid:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_OBSERVATION" {
    OMS_O05_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_RESPONSE" {
    RRA_O18_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_SPECIMEN" {
    OML_O35_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_SERVICE" {
    SRM_S01_SERVICE messageInstance = {ais:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_TIMING" {
    RSP_Z86_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "SSU_U03_SPECIMEN" {
    SSU_U03_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_GENERAL_RESOURCE" {
    SQR_S25_GENERAL_RESOURCE messageInstance = {aig:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PROBLEM_OBSERVATION" {
    PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ORDER_DETAIL_SUPPLEMENT" {
    RAS_O17_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ADT_A03_INSURANCE" {
    ADT_A03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_TIMING" {
    OMP_O09_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_DISPENSE" {
    RRD_O14_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_OBSERVATION" {
    RSP_Z86_OBSERVATION messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_PATIENT" {
    ORL_O22_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P01_INSURANCE" {
    BAR_P01_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "OMS_O05_TIMING" {
    OMS_O05_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL_ROLE" {
    PPT_PCL_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "RPA_I08_VISIT" {
    RPA_I08_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_ORDER_PRIOR" {
    OML_O21_ORDER_PRIOR messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_VISIT_PRIOR" {
    OML_O35_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "DFT_P03_COMMON_ORDER" {
    DFT_P03_COMMON_ORDER messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_GOAL_OBSERVATION" {
    PPP_PCB_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_AUTHORIZATION_CONTACT" {
    RRI_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
    return messageInstance;
} else if segmentComponentName == "ORI_O24_ORDER" {
    ORI_O24_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PROBLEM_ROLE" {
    PPP_PCB_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O22_SPECIMEN" {
    ORL_O22_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_TIMING_QTY" {
    ORU_R30_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_PROBLEM_OBSERVATION" {
    PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_TIMING_TRAY" {
    OMD_O03_TIMING_TRAY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "EAN_U09_NOTIFICATION" {
    EAN_U09_NOTIFICATION messageInstance = {nds:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_COMPONENTS" {
    RAS_O17_COMPONENTS messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "RTB_K13_ROW_DEFINITION" {
    RTB_K13_ROW_DEFINITION messageInstance = {rdf:{}};
    return messageInstance;
} else if segmentComponentName == "ADT_A45_MERGE_INFO" {
    ADT_A45_MERGE_INFO messageInstance = {mrg:{}, pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_PATIENT_PRIOR" {
    OML_O21_PATIENT_PRIOR messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_COMPONENT" {
    RDE_O11_COMPONENT messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_ORDER_DETAIL" {
    PTR_PCF_ORDER_DETAIL messageInstance = {ptr_pcf_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "OMG_O19_PATIENT_VISIT_PRIOR" {
    OMG_O19_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_ENCODING" {
    RSP_K31_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "PEX_P07_ASSOCIATED_PERSON" {
    PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1:{}};
    return messageInstance;
} else if segmentComponentName == "RRD_O14_ORDER" {
    RRD_O14_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K11_ROW_DEFINITION" {
    RSP_K11_ROW_DEFINITION messageInstance = {rdf:{}};
    return messageInstance;
} else if segmentComponentName == "ORS_O06_RESPONSE" {
    ORS_O06_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_ORDER" {
    RDR_RDR_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_GOAL" {
    PPR_PC1_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "MFR_M01_MF_QUERY" {
    MFR_M01_MF_QUERY messageInstance = {mfe:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_ORDER_TRAY" {
    OMD_O03_ORDER_TRAY messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "PPP_PCB_PROBLEM_OBSERVATION" {
    PPP_PCB_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORB_O28_PATIENT" {
    ORB_O28_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_ORDER" {
    RDE_O11_ORDER messageInstance = {orc:{}, rxe:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT" {
    OML_O35_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BPS_O29_PATIENT" {
    BPS_O29_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I01_GUARANTOR_INSURANCE" {
    RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RDR_RDR_DISPENSE" {
    RDR_RDR_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "SRM_S01_RESOURCES" {
    SRM_S01_RESOURCES messageInstance = {rgs:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_GOAL_OBSERVATION" {
    PPT_PCL_GOAL_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PTR_PCF_PATIENT" {
    PTR_PCF_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R23_RESULT" {
    OUL_R23_RESULT messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_OBRanyHL7Segment_SUPPGRP" {
    PPV_PCA_OBRanyHL7Segment_SUPPGRP messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_PROBLEM_OBSERVATION" {
    PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_LOCATION_RESOURCE" {
    SQR_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_TIMING" {
    RSP_Z90_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ROR_ROR_ORDER" {
    ROR_ROR_ORDER messageInstance = {orc:{}, rxo:{}};
    return messageInstance;
} else if segmentComponentName == "NMQ_N01_CLOCK_AND_STATISTICS" {
    NMQ_N01_CLOCK_AND_STATISTICS messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OSR_Q06_PATIENT" {
    OSR_Q06_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "CSU_C09_TIMING_QTY" {
    CSU_C09_TIMING_QTY messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "PPV_PCA_ORDER" {
    PPV_PCA_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RPI_I04_PROVIDER" {
    RPI_I04_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R22_RESULT" {
    OUL_R22_RESULT messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_SPECIMEN" {
    ORG_O20_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_RESPONSE" {
    RSP_K31_RESPONSE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PRR_PC5_ORDER_DETAIL" {
    PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_GOAL_ROLE" {
    PGL_PC6_GOAL_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_PATIENT_VISIT" {
    PPG_PCG_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "OMN_O07_OBSERVATION" {
    OMN_O07_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_ORDER" {
    ORL_O34_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_PATIENT_VISIT" {
    OML_O35_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P12_PROCEDURE" {
    BAR_P12_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RRG_O16_PATIENT" {
    RRG_O16_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "RAR_RAR_ORDER" {
    RAR_RAR_ORDER messageInstance = {orc:{}, rxr:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R21_CONTAINER" {
    OUL_R21_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R30_OBSERVATION" {
    ORU_R30_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "ADR_A19_PROCEDURE" {
    ADR_A19_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P05_INSURANCE" {
    BAR_P05_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "MFN_M05_MF_LOC_DEPT" {
    MFN_M05_MF_LOC_DEPT messageInstance = {ldp:{}};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_ORDER_OBSERVATION" {
    PPR_PC1_ORDER_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "RCL_I06_PROVIDER" {
    RCL_I06_PROVIDER messageInstance = {prd:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O33_PATIENT_VISIT_PRIOR" {
    OML_O33_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_GOAL" {
    PPG_PCG_GOAL messageInstance = {gol:{}};
    return messageInstance;
} else if segmentComponentName == "OMI_O23_ORDER" {
    OMI_O23_ORDER messageInstance = {orc:{}, obr:{}};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_PROBLEM_ROLE" {
    PGL_PC6_PROBLEM_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_ORDER" {
    ORM_O01_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "BRP_O30_TIMING" {
    BRP_O30_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "REF_I12_OBSERVATION" {
    REF_I12_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "RGV_O15_TIMING_ENCODED" {
    RGV_O15_TIMING_ENCODED messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "ORL_O34_SPECIMEN" {
    ORL_O34_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "MDM_T02_OBSERVATION" {
    MDM_T02_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O21_INSURANCE" {
    OML_O21_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ENCODING" {
    RAS_O17_ENCODING messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "OSR_Q06_ORDER" {
    OSR_Q06_ORDER messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z88_COMMON_ORDER" {
    RSP_Z88_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
    return messageInstance;
} else if segmentComponentName == "ORM_O01_OBSERVATION" {
    ORM_O01_OBSERVATION messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_ORDER_DIET" {
    OMD_O03_ORDER_DIET messageInstance = {orc:{}};
    return messageInstance;
} else if segmentComponentName == "SRR_S01_RESOURCES" {
    SRR_S01_RESOURCES messageInstance = {rgs:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PATHWAY" {
    PPT_PCL_PATHWAY messageInstance = {pth:{}};
    return messageInstance;
} else if segmentComponentName == "RAS_O17_ADMINISTRATION" {
    RAS_O17_ADMINISTRATION messageInstance = {rxr:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R01_PATIENT" {
    ORU_R01_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "OMP_O09_ORDER" {
    OMP_O09_ORDER messageInstance = {orc:{}, rxo:{}};
    return messageInstance;
} else if segmentComponentName == "RAR_RAR_DEFINITION" {
    RAR_RAR_DEFINITION messageInstance = {qrd:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_ENCODED_ORDER" {
    RSP_Z86_ENCODED_ORDER messageInstance = {rxe:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_OBSERVATION" {
    RRI_I12_OBSERVATION messageInstance = {obr:{}};
    return messageInstance;
} else if segmentComponentName == "BAR_P05_PROCEDURE" {
    BAR_P05_PROCEDURE messageInstance = {pr1:{}};
    return messageInstance;
} else if segmentComponentName == "RRA_O18_ADMINISTRATION" {
    RRA_O18_ADMINISTRATION messageInstance = {rxr:{}};
    return messageInstance;
} else if segmentComponentName == "PPG_PCG_CHOICE" {
    PPG_PCG_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PGL_PC6_CHOICE" {
    PGL_PC6_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "PPR_PC1_ORDER_DETAIL" {
    PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_order_detail_segment: {}};
    return messageInstance;
} else if segmentComponentName == "ORP_O10_PATIENT" {
    ORP_O10_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "BTS_O31_TIMING" {
    BTS_O31_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RDE_O11_PATIENT_VISIT" {
    RDE_O11_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "ORU_R01_PATIENT_RESULT" {
    ORU_R01_PATIENT_RESULT messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "RSP_K31_COMPONENTS" {
    RSP_K31_COMPONENTS messageInstance = {rxc:{}};
    return messageInstance;
} else if segmentComponentName == "OML_O35_TIIMING" {
    OML_O35_TIIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RRI_I12_RESULTS_NOTES" {
    RRI_I12_RESULTS_NOTES messageInstance = {obx:{}};
    return messageInstance;
} else if segmentComponentName == "SQR_S25_SCHEDULE" {
    SQR_S25_SCHEDULE messageInstance = {sch:{}};
    return messageInstance;
} else if segmentComponentName == "RDS_O13_PATIENT_VISIT" {
    RDS_O13_PATIENT_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z86_DISPENSE" {
    RSP_Z86_DISPENSE messageInstance = {rxd:{}};
    return messageInstance;
} else if segmentComponentName == "ORG_O20_TIMING" {
    ORG_O20_TIMING messageInstance = {tq1:{}};
    return messageInstance;
} else if segmentComponentName == "RSP_Z90_VISIT" {
    RSP_Z90_VISIT messageInstance = {pv1:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_CHOICE" {
    PPT_PCL_CHOICE messageInstance = {};
    return messageInstance;
} else if segmentComponentName == "OML_O35_SPECIMEN_CONTAINER" {
    OML_O35_SPECIMEN_CONTAINER messageInstance = {sac:{}};
    return messageInstance;
} else if segmentComponentName == "OUL_R24_SPECIMEN" {
    OUL_R24_SPECIMEN messageInstance = {spm:{}};
    return messageInstance;
} else if segmentComponentName == "VXX_V02_PATIENT" {
    VXX_V02_PATIENT messageInstance = {pid:{}};
    return messageInstance;
} else if segmentComponentName == "PPT_PCL_PATHWAY_ROLE" {
    PPT_PCL_PATHWAY_ROLE messageInstance = {rol:{}};
    return messageInstance;
} else if segmentComponentName == "OMD_O03_INSURANCE" {
    OMD_O03_INSURANCE messageInstance = {in1:{}};
    return messageInstance;
} else {
    return ();
}
}

isolated function getSegmentComponentPart5(string segmentComponentName) returns hl7v2:SegmentComponent? {
if segmentComponentName == "CSU_C12_PATIENT" {
    CSU_C12_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A07_PROCEDURE" {
    ADT_A07_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A07_INSURANCE" {
    ADT_A07_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C08_PATIENT" {
    CRM_C08_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "RDE_O25_PATIENT" {
    RDE_O25_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "RDE_O25_ORDER" {
    RDE_O25_ORDER segmentInstance = {orc: {}, rxe: {}};
    return segmentInstance;
} else if segmentComponentName == "PPG_PCJ_PATIENT_VISIT" {
    PPG_PCJ_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPG_PCJ_PATHWAY" {
    PPG_PCJ_PATHWAY segmentInstance = {pth: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A31_PROCEDURE" {
    ADT_A31_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A31_INSURANCE" {
    ADT_A31_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R32_VISIT" {
    ORU_R32_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R32_OBSERVATION" {
    ORU_R32_OBSERVATION segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R32_TIMING_QTY" {
    ORU_R32_TIMING_QTY segmentInstance = {tq1: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C04_PATIENT" {
    CRM_C04_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S24_PATIENT" {
    SIU_S24_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S24_RESOURCES" {
    SIU_S24_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_AUTHORIZATION" {
    RPA_I11_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_PROVIDER" {
    RPA_I11_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_INSURANCE" {
    RPA_I11_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_PROCEDURE" {
    RPA_I11_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_OBSERVATION" {
    RPA_I11_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I11_VISIT" {
    RPA_I11_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_AUTHORIZATION" {
    RPA_I10_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_PROVIDER" {
    RPA_I10_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_INSURANCE" {
    RPA_I10_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_PROCEDURE" {
    RPA_I10_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_OBSERVATION" {
    RPA_I10_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I10_VISIT" {
    RPA_I10_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPP_PCC_PATIENT_VISIT" {
    PPP_PCC_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPP_PCC_PATHWAY" {
    PPP_PCC_PATHWAY segmentInstance = {pth: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C05_PATIENT" {
    CRM_C05_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "PGL_PC8_PATIENT_VISIT" {
    PGL_PC8_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PGL_PC8_GOAL" {
    PGL_PC8_GOAL segmentInstance = {gol: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S13_PATIENT" {
    SIU_S13_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S13_RESOURCES" {
    SIU_S13_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S18_PATIENT" {
    SIU_S18_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S18_RESOURCES" {
    SIU_S18_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S10_PATIENT" {
    SRM_S10_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S10_RESOURCES" {
    SRM_S10_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S07_SCHEDULE" {
    SRR_S07_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S11_SCHEDULE" {
    SRR_S11_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S06_PATIENT" {
    SRM_S06_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S06_RESOURCES" {
    SRM_S06_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T10_COMMON_ORDER" {
    MDM_T10_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T10_OBXNTE" {
    MDM_T10_OBXNTE segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C02_PATIENT" {
    CRM_C02_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S22_PATIENT" {
    SIU_S22_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S22_RESOURCES" {
    SIU_S22_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "PPP_PCD_PATIENT_VISIT" {
    PPP_PCD_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPP_PCD_PATHWAY" {
    PPP_PCD_PATHWAY segmentInstance = {pth: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T06_COMMON_ORDER" {
    MDM_T06_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T06_OBXNTE" {
    MDM_T06_OBXNTE segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "RTB_Z78_ROW_DEFINITION" {
    RTB_Z78_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S14_PATIENT" {
    SIU_S14_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S14_RESOURCES" {
    SIU_S14_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "RQI_I02_PROVIDER" {
    RQI_I02_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RQI_I02_GUARANTOR_INSURANCE" {
    RQI_I02_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_AUTHORIZATION" {
    RQA_I11_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_PROVIDER" {
    RQA_I11_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_GUARANTOR_INSURANCE" {
    RQA_I11_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_PROCEDURE" {
    RQA_I11_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_OBSERVATION" {
    RQA_I11_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I11_VISIT" {
    RQA_I11_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A40_PATIENT_ID" {
    ADT_A40_PATIENT_ID segmentInstance = {pid: {}, mrg: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A41_PATIENT_ID" {
    ADT_A41_PATIENT_ID segmentInstance = {pid: {}, mrg: {}};
    return segmentInstance;
} else if segmentComponentName == "RQI_I03_PROVIDER" {
    RQI_I03_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RQI_I03_GUARANTOR_INSURANCE" {
    RQI_I03_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_AUTHORIZATION" {
    RQA_I10_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_PROVIDER" {
    RQA_I10_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_GUARANTOR_INSURANCE" {
    RQA_I10_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_PROCEDURE" {
    RQA_I10_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_OBSERVATION" {
    RQA_I10_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I10_VISIT" {
    RQA_I10_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S15_PATIENT" {
    SIU_S15_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S15_RESOURCES" {
    SIU_S15_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "RTB_Z96_ROW_DEFINITION" {
    RTB_Z96_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T07_COMMON_ORDER" {
    MDM_T07_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C03_PATIENT" {
    CRM_C03_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S23_PATIENT" {
    SIU_S23_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S23_RESOURCES" {
    SIU_S23_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "PEX_P08_VISIT" {
    PEX_P08_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PEX_P08_EXPERIENCE" {
    PEX_P08_EXPERIENCE segmentInstance = {pes: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T11_COMMON_ORDER" {
    MDM_T11_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S10_SCHEDULE" {
    SRR_S10_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S07_PATIENT" {
    SRM_S07_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S07_RESOURCES" {
    SRM_S07_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S11_PATIENT" {
    SRM_S11_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S11_RESOURCES" {
    SRM_S11_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S06_SCHEDULE" {
    SRR_S06_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S19_PATIENT" {
    SIU_S19_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S19_RESOURCES" {
    SIU_S19_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T04_COMMON_ORDER" {
    MDM_T04_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T04_OBXNTE" {
    MDM_T04_OBXNTE segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_AUTHORIZATION" {
    RQA_I09_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_PROVIDER" {
    RQA_I09_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_GUARANTOR_INSURANCE" {
    RQA_I09_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_PROCEDURE" {
    RQA_I09_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_OBSERVATION" {
    RQA_I09_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RQA_I09_VISIT" {
    RQA_I09_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S20_PATIENT" {
    SIU_S20_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S20_RESOURCES" {
    SIU_S20_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S04_PATIENT" {
    SRM_S04_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S04_RESOURCES" {
    SRM_S04_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S05_SCHEDULE" {
    SRR_S05_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "RTB_Z76_ROW_DEFINITION" {
    RTB_Z76_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T08_COMMON_ORDER" {
    MDM_T08_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T08_OBXNTE" {
    MDM_T08_OBXNTE segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I14_AUTHORIZATION_CONTACT" {
    RRI_I14_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I14_PROVIDER_CONTACT" {
    RRI_I14_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I14_PROCEDURE" {
    RRI_I14_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I14_OBSERVATION" {
    RRI_I14_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I14_PATIENT_VISIT" {
    RRI_I14_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A42_PATIENT_ID" {
    ADT_A42_PATIENT_ID segmentInstance = {pid: {}, mrg: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S08_PATIENT" {
    SRM_S08_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S08_RESOURCES" {
    SRM_S08_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S09_SCHEDULE" {
    SRR_S09_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S16_PATIENT" {
    SIU_S16_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S16_RESOURCES" {
    SIU_S16_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "RTB_Z94_ROW_DEFINITION" {
    RTB_Z94_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S17_PATIENT" {
    SIU_S17_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S17_RESOURCES" {
    SIU_S17_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "RSP_K22_QUERY_RESPONSE" {
    RSP_K22_QUERY_RESPONSE segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S08_SCHEDULE" {
    SRR_S08_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S09_PATIENT" {
    SRM_S09_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S09_RESOURCES" {
    SRM_S09_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "MFK_M02_MF_STAFF" {
    MFK_M02_MF_STAFF segmentInstance = {mfe: {}, stf: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T09_COMMON_ORDER" {
    MDM_T09_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I15_AUTHORIZATION_CONTACT" {
    RRI_I15_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I15_PROVIDER_CONTACT" {
    RRI_I15_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I15_PROCEDURE" {
    RRI_I15_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I15_OBSERVATION" {
    RRI_I15_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I15_PATIENT_VISIT" {
    RRI_I15_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A14_PROCEDURE" {
    ADT_A14_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A14_INSURANCE" {
    ADT_A14_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S04_SCHEDULE" {
    SRR_S04_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S05_PATIENT" {
    SRM_S05_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S05_RESOURCES" {
    SRM_S05_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_AUTHORIZATION_CONTACT" {
    REF_I13_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_PROVIDER_CONTACT" {
    REF_I13_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_INSURANCE" {
    REF_I13_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_PROCEDURE" {
    REF_I13_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_OBSERVATION" {
    REF_I13_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I13_PATIENT_VISIT" {
    REF_I13_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S21_PATIENT" {
    SIU_S21_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S21_RESOURCES" {
    SIU_S21_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T05_COMMON_ORDER" {
    MDM_T05_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A13_PROCEDURE" {
    ADT_A13_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A13_INSURANCE" {
    ADT_A13_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPG_PCH_PATIENT_VISIT" {
    PPG_PCH_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPG_PCH_PATHWAY" {
    PPG_PCH_PATHWAY segmentInstance = {pth: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A44_PATIENT_ID" {
    ADT_A44_PATIENT_ID segmentInstance = {pid: {}, mrg: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_AUTHORIZATION" {
    RPA_I09_AUTHORIZATION segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_PROVIDER" {
    RPA_I09_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_INSURANCE" {
    RPA_I09_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_PROCEDURE" {
    RPA_I09_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_OBSERVATION" {
    RPA_I09_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RPA_I09_VISIT" {
    RPA_I09_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PGL_PC7_PATIENT_VISIT" {
    PGL_PC7_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PGL_PC7_GOAL" {
    PGL_PC7_GOAL segmentInstance = {gol: {}};
    return segmentInstance;
} else if segmentComponentName == "PIN_I07_PROVIDER" {
    PIN_I07_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "PIN_I07_GUARANTOR_INSURANCE" {
    PIN_I07_GUARANTOR_INSURANCE segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "TCR_U11_TEST_CONFIGURATION" {
    TCR_U11_TEST_CONFIGURATION segmentInstance = {};
    return segmentInstance;
} else if segmentComponentName == "CSU_C10_PATIENT" {
    CSU_C10_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "PPR_PC2_PATIENT_VISIT" {
    PPR_PC2_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPR_PC2_PROBLEM" {
    PPR_PC2_PROBLEM segmentInstance = {prb: {}};
    return segmentInstance;
} else if segmentComponentName == "RQC_I06_PROVIDER" {
    RQC_I06_PROVIDER segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RSP_Z84_ROW_DEFINITION" {
    RSP_Z84_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S26_PATIENT" {
    SIU_S26_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SIU_S26_RESOURCES" {
    SIU_S26_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C06_PATIENT" {
    CRM_C06_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_AUTHORIZATION_CONTACT" {
    REF_I14_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_PROVIDER_CONTACT" {
    REF_I14_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_INSURANCE" {
    REF_I14_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_PROCEDURE" {
    REF_I14_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_OBSERVATION" {
    REF_I14_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I14_PATIENT_VISIT" {
    REF_I14_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S02_PATIENT" {
    SRM_S02_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S02_RESOURCES" {
    SRM_S02_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S03_SCHEDULE" {
    SRR_S03_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "SRR_S02_SCHEDULE" {
    SRR_S02_SCHEDULE segmentInstance = {sch: {}};
    return segmentInstance;
} else if segmentComponentName == "ARD_A19_QUERY_RESPONSE" {
    ARD_A19_QUERY_RESPONSE segmentInstance = {pid: {}, pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R31_VISIT" {
    ORU_R31_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R31_OBSERVATION" {
    ORU_R31_OBSERVATION segmentInstance = {obx: {}};
    return segmentInstance;
} else if segmentComponentName == "ORU_R31_TIMING_QTY" {
    ORU_R31_TIMING_QTY segmentInstance = {tq1: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S03_PATIENT" {
    SRM_S03_PATIENT segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "SRM_S03_RESOURCES" {
    SRM_S03_RESOURCES segmentInstance = {rgs: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A08_PROCEDURE" {
    ADT_A08_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A08_INSURANCE" {
    ADT_A08_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_AUTHORIZATION_CONTACT" {
    REF_I15_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_PROVIDER_CONTACT" {
    REF_I15_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_INSURANCE" {
    REF_I15_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_PROCEDURE" {
    REF_I15_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_OBSERVATION" {
    REF_I15_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "REF_I15_PATIENT_VISIT" {
    REF_I15_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "CRM_C07_PATIENT" {
    CRM_C07_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "MDM_T03_COMMON_ORDER" {
    MDM_T03_COMMON_ORDER segmentInstance = {orc: {}, obr: {}};
    return segmentInstance;
} else if segmentComponentName == "PPR_PC3_PATIENT_VISIT" {
    PPR_PC3_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else if segmentComponentName == "PPR_PC3_PROBLEM" {
    PPR_PC3_PROBLEM segmentInstance = {prb: {}};
    return segmentInstance;
} else if segmentComponentName == "RTB_Z92_ROW_DEFINITION" {
    RTB_Z92_ROW_DEFINITION segmentInstance = {rdf: {}};
    return segmentInstance;
} else if segmentComponentName == "CSU_C11_PATIENT" {
    CSU_C11_PATIENT segmentInstance = {pid: {}, csr: {}};
    return segmentInstance;
} else if segmentComponentName == "RSP_K24_QUERY_RESPONSE" {
    RSP_K24_QUERY_RESPONSE segmentInstance = {pid: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A28_PROCEDURE" {
    ADT_A28_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A28_INSURANCE" {
    ADT_A28_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A04_PROCEDURE" {
    ADT_A04_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "ADT_A04_INSURANCE" {
    ADT_A04_INSURANCE segmentInstance = {in1: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I13_AUTHORIZATION_CONTACT" {
    RRI_I13_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I13_PROVIDER_CONTACT" {
    RRI_I13_PROVIDER_CONTACT segmentInstance = {prd: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I13_PROCEDURE" {
    RRI_I13_PROCEDURE segmentInstance = {pr1: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I13_OBSERVATION" {
    RRI_I13_OBSERVATION segmentInstance = {obr: {}};
    return segmentInstance;
} else if segmentComponentName == "RRI_I13_PATIENT_VISIT" {
    RRI_I13_PATIENT_VISIT segmentInstance = {pv1: {}};
    return segmentInstance;
} else {
    return ();
}
}

# Returns instance of HL7 sub component/group.
#
# + compositeType - Composite data type model
# + subComponentposition - Sub component position
# + componentPosition - Component position
# + return - Instance of HL7 sub component/group
isolated function getSubComponent(hl7v2:CompositeType compositeType, int subComponentposition, int componentPosition)
            returns anydata|hl7v2:PrimitiveType {
    [string, anydata][] entries = compositeType.entries().toArray();
    if entries.length() <= componentPosition {
        return {};
    }
    [string, anydata] componentField = entries[componentPosition];
    string key;
    anydata val;
    [key, val] = componentField;
    if val is anydata[] {
        anydata[] arr = val;
        foreach var elem in arr {
            if isPrimitiveType(elem) || elem is hl7v2:CompositeType {
                return elem;
            }
        }
    } else {
        if isPrimitiveType(val) {
            map<anydata> typeMap = compositeType;
            hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, typeMap]};
            return primitiveVal;
        } else {
            return <Type>val;
        }
    }
    return {};
}

# Checks whether a given datatype is a primitive type.
#
# + data - Data type model
# + return - True if the data type is a primitive type, else false
isolated function isPrimitiveType(anydata data) returns boolean {
    if data is string || data is int || data is float {
        return true;
    }
    return false;
}

# Returns the value of a given segment field.
#
# + fieldNum - Field number
# + repetitionNum - Number of repetitions
# + segment - Segment model
# + return - Value of the segment field
isolated function getSegmentField(int fieldNum, int repetitionNum, hl7v2:Segment segment) returns anydata|hl7v2:PrimitiveType {
    if segment.keys().length() > fieldNum {
        [string, anydata][] entries = segment.entries().toArray();
        string key;
        anydata val;
        [string, anydata] typeResult = entries[fieldNum];
        [key, val] = typeResult;
        if isValidSegmentField(segment, repetitionNum, key) {
            if isPrimitiveType(val) {
                map<anydata> segmentMap = segment;
                hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                return primitiveVal;
            } else if val is hl7v2:CompositeType {
                return val;
            } else if val is anydata[] {
                anydata[] arr = val;
                foreach var elem in arr {
                    if elem is hl7v2:PrimitiveType || elem is hl7v2:CompositeType {
                        return elem;
                    } else if isPrimitiveType(elem) {
                        map<anydata> segmentMap = segment;
                        hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                        return primitiveVal;
                    }
                }
            }
        } else if key != "name" {
            log:printError(string `invalid segment field:  ${key}`);
            return ();
        }
    } else {
        log:printError(string `Not existant field for the segment: ${segment.name}`);
    }
    return ();
}

# Checks whether a given segment field is valid.
#
# + segment - Segment model
# + repetitionNum - Number of repetitions
# + fieldKey - Field key
# + return - True if the segment field is valid, else false
isolated function isValidSegmentField(hl7v2:Segment segment, int repetitionNum, string fieldKey) returns boolean {
    hl7v2:Hl7SegmentDefinitionRecord? segmentDefinition = (typeof segment).@hl7v2:SegmentDefinition;
    if segmentDefinition != () {
        map<hl7v2:Hl7TypeDefinitionRecord> elementDefinitions = segmentDefinition.fields ?: {};
        if elementDefinitions.hasKey(fieldKey) {
            hl7v2:Hl7TypeDefinitionRecord fieldDefinition = elementDefinitions.get(fieldKey);
            int? maxReps = fieldDefinition.maxReps;
            if maxReps is int {
                if maxReps >= repetitionNum || maxReps == -1 {
                    return true;
                }
            }
        }
    }
    return false;
}

# Removes the extra delimeters from the end of the HL7 message string.
#
# + inputStr - HL7 message string
# + delimeter - Delimeter
# + return - String without the extra delimeters
isolated function stripExtraDelimeters(string inputStr, string delimeter) returns string {
    int len = string:length(inputStr);
    int lastIndex = len - 1;

    // Find the last non-delimeter character index from the end
    while (lastIndex >= 0 && inputStr[lastIndex] == delimeter) {
        lastIndex = lastIndex - 1;
    }
    if lastIndex < len - 1 {
        return string:substring(inputStr, 0, lastIndex + 1);
    }

    return inputStr;
}

# Checks whether a given segment is a MSH segment.
#
# + segmentName - Segment name
# + return - True if the segment is a MSH segment, else false
isolated function isMshSegment(string segmentName) returns boolean {
    if segmentName == "MSH" {
        return true;
    }
    return false;
}

# Checks whether a given segment is a delimeter defined segment of HL7 message.
#
# + segmentName - Segment name
# + return - True if the segment is a delimeter defined segment, else false
isolated function isDelimeterDefinedSegment(string segmentName) returns boolean {
    if segmentName == "MSH" || segmentName == "FHS" || segmentName == "BHS" {
        return true;
    }
    return false;
}


isolated function isEmptySegment(string segmentStr) returns boolean {
    if string:length(segmentStr) == 0 {
        return false;
    }

    string hl7ComponentDelemeter = "|";
    string segmentBody = string:substring(segmentStr, 3);

    // Compare each character with the first character
    foreach var char in segmentBody {
        if char != hl7ComponentDelemeter {
            return false;
        }
    }
    return true;
}
