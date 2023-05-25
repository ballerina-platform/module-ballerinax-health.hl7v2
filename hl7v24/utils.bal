import ballerina/log;
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

# Returns instance of segment record given the segment name.
#
# + segmentName - HL7 message segment name
# + return - Record of segment instance
isolated function getSegment(string segmentName) returns hl7v2:Segment? {
    match segmentName {
        "APR" => {
            APR segmentInstance = {};
            return segmentInstance;
        }
        "QPD" => {
            QPD segmentInstance = {};
            return segmentInstance;
        }
        "STF" => {
            STF segmentInstance = {};
            return segmentInstance;
        }
        "CM1" => {
            CM1 segmentInstance = {};
            return segmentInstance;
        }
        "VAR" => {
            VAR segmentInstance = {};
            return segmentInstance;
        }
        "CM0" => {
            CM0 segmentInstance = {};
            return segmentInstance;
        }
        "CM2" => {
            CM2 segmentInstance = {};
            return segmentInstance;
        }
        "CDM" => {
            CDM segmentInstance = {};
            return segmentInstance;
        }
        "DG1" => {
            DG1 segmentInstance = {};
            return segmentInstance;
        }
        "OM1" => {
            OM1 segmentInstance = {};
            return segmentInstance;
        }
        "OM3" => {
            OM3 segmentInstance = {};
            return segmentInstance;
        }
        "NK1" => {
            NK1 segmentInstance = {};
            return segmentInstance;
        }
        "OM2" => {
            OM2 segmentInstance = {};
            return segmentInstance;
        }
        "OM5" => {
            OM5 segmentInstance = {};
            return segmentInstance;
        }
        "OM4" => {
            OM4 segmentInstance = {};
            return segmentInstance;
        }
        "OM7" => {
            OM7 segmentInstance = {};
            return segmentInstance;
        }
        "OM6" => {
            OM6 segmentInstance = {};
            return segmentInstance;
        }
        "ODT" => {
            ODT segmentInstance = {};
            return segmentInstance;
        }
        "AIG" => {
            AIG segmentInstance = {};
            return segmentInstance;
        }
        "NSC" => {
            NSC segmentInstance = {};
            return segmentInstance;
        }
        "ODS" => {
            ODS segmentInstance = {};
            return segmentInstance;
        }
        "EQL" => {
            EQL segmentInstance = {};
            return segmentInstance;
        }
        "LOC" => {
            LOC segmentInstance = {};
            return segmentInstance;
        }
        "FT1" => {
            FT1 segmentInstance = {};
            return segmentInstance;
        }
        "AIL" => {
            AIL segmentInstance = {};
            return segmentInstance;
        }
        "EQP" => {
            EQP segmentInstance = {};
            return segmentInstance;
        }
        "AIP" => {
            AIP segmentInstance = {};
            return segmentInstance;
        }
        "EQU" => {
            EQU segmentInstance = {};
            return segmentInstance;
        }
        "AIS" => {
            AIS segmentInstance = {};
            return segmentInstance;
        }
        "QID" => {
            QID segmentInstance = {};
            return segmentInstance;
        }
        "NST" => {
            NST segmentInstance = {};
            return segmentInstance;
        }
        "IAM" => {
            IAM segmentInstance = {};
            return segmentInstance;
        }
        "NCK" => {
            NCK segmentInstance = {};
            return segmentInstance;
        }
        "BLC" => {
            BLC segmentInstance = {};
            return segmentInstance;
        }
        "QAK" => {
            QAK segmentInstance = {};
            return segmentInstance;
        }
        "BLG" => {
            BLG segmentInstance = {};
            return segmentInstance;
        }
        "TXA" => {
            TXA segmentInstance = {};
            return segmentInstance;
        }
        "NTE" => {
            NTE segmentInstance = {};
            return segmentInstance;
        }
        "RCP" => {
            RCP segmentInstance = {};
            return segmentInstance;
        }
        "ARQ" => {
            ARQ segmentInstance = {};
            return segmentInstance;
        }
        "BTS" => {
            BTS segmentInstance = {};
            return segmentInstance;
        }
        "QRD" => {
            QRD segmentInstance = {};
            return segmentInstance;
        }
        "MRG" => {
            MRG segmentInstance = {};
            return segmentInstance;
        }
        "ERR" => {
            ERR segmentInstance = {};
            return segmentInstance;
        }
        "FTS" => {
            FTS segmentInstance = {};
            return segmentInstance;
        }
        "QRF" => {
            QRF segmentInstance = {};
            return segmentInstance;
        }
        "UB2" => {
            UB2 segmentInstance = {};
            return segmentInstance;
        }
        "ERQ" => {
            ERQ segmentInstance = {};
            return segmentInstance;
        }
        "UB1" => {
            UB1 segmentInstance = {};
            return segmentInstance;
        }
        "URD" => {
            URD segmentInstance = {};
            return segmentInstance;
        }
        "CNS" => {
            CNS segmentInstance = {};
            return segmentInstance;
        }
        "QRI" => {
            QRI segmentInstance = {};
            return segmentInstance;
        }
        "ABS" => {
            ABS segmentInstance = {};
            return segmentInstance;
        }
        "VTQ" => {
            VTQ segmentInstance = {};
            return segmentInstance;
        }
        "RDF" => {
            RDF segmentInstance = {};
            return segmentInstance;
        }
        "URS" => {
            URS segmentInstance = {};
            return segmentInstance;
        }
        "MSA" => {
            MSA segmentInstance = {};
            return segmentInstance;
        }
        "ISD" => {
            ISD segmentInstance = {};
            return segmentInstance;
        }
        "NDS" => {
            NDS segmentInstance = {};
            return segmentInstance;
        }
        "ACC" => {
            ACC segmentInstance = {};
            return segmentInstance;
        }
        "MSH" => {
            MSH segmentInstance = {};
            return segmentInstance;
        }
        "RDT" => {
            RDT segmentInstance = {};
            return segmentInstance;
        }
        "GOL" => {
            GOL segmentInstance = {};
            return segmentInstance;
        }
        "AL1" => {
            AL1 segmentInstance = {};
            return segmentInstance;
        }
        "ECD" => {
            ECD segmentInstance = {};
            return segmentInstance;
        }
        "GP2" => {
            GP2 segmentInstance = {};
            return segmentInstance;
        }
        "GP1" => {
            GP1 segmentInstance = {};
            return segmentInstance;
        }
        "PID" => {
            PID segmentInstance = {};
            return segmentInstance;
        }
        "PR1" => {
            PR1 segmentInstance = {};
            return segmentInstance;
        }
        "RMI" => {
            RMI segmentInstance = {};
            return segmentInstance;
        }
        "DB1" => {
            DB1 segmentInstance = {};
            return segmentInstance;
        }
        "ECR" => {
            ECR segmentInstance = {};
            return segmentInstance;
        }
        "DRG" => {
            DRG segmentInstance = {};
            return segmentInstance;
        }
        "LAN" => {
            LAN segmentInstance = {};
            return segmentInstance;
        }
        "RF1" => {
            RF1 segmentInstance = {};
            return segmentInstance;
        }
        "PRA" => {
            PRA segmentInstance = {};
            return segmentInstance;
        }
        "PRC" => {
            PRC segmentInstance = {};
            return segmentInstance;
        }
        "ADD" => {
            ADD segmentInstance = {};
            return segmentInstance;
        }
        "PRB" => {
            PRB segmentInstance = {};
            return segmentInstance;
        }
        "PRD" => {
            PRD segmentInstance = {};
            return segmentInstance;
        }
        "LRL" => {
            LRL segmentInstance = {};
            return segmentInstance;
        }
        "SPR" => {
            SPR segmentInstance = {};
            return segmentInstance;
        }
        "DSC" => {
            DSC segmentInstance = {};
            return segmentInstance;
        }
        "EDU" => {
            EDU segmentInstance = {};
            return segmentInstance;
        }
        "AUT" => {
            AUT segmentInstance = {};
            return segmentInstance;
        }
        "DSP" => {
            DSP segmentInstance = {};
            return segmentInstance;
        }
        "PSH" => {
            PSH segmentInstance = {};
            return segmentInstance;
        }
        "IN2" => {
            IN2 segmentInstance = {};
            return segmentInstance;
        }
        "IN1" => {
            IN1 segmentInstance = {};
            return segmentInstance;
        }
        "LCC" => {
            LCC segmentInstance = {};
            return segmentInstance;
        }
        "ROL" => {
            ROL segmentInstance = {};
            return segmentInstance;
        }
        "IN3" => {
            IN3 segmentInstance = {};
            return segmentInstance;
        }
        "SID" => {
            SID segmentInstance = {};
            return segmentInstance;
        }
        "LCH" => {
            LCH segmentInstance = {};
            return segmentInstance;
        }
        "SAC" => {
            SAC segmentInstance = {};
            return segmentInstance;
        }
        "TCD" => {
            TCD segmentInstance = {};
            return segmentInstance;
        }
        "TCC" => {
            TCC segmentInstance = {};
            return segmentInstance;
        }
        "RXA" => {
            RXA segmentInstance = {};
            return segmentInstance;
        }
        "EVN" => {
            EVN segmentInstance = {};
            return segmentInstance;
        }
        "PD1" => {
            PD1 segmentInstance = {};
            return segmentInstance;
        }
        "RXC" => {
            RXC segmentInstance = {};
            return segmentInstance;
        }
        "PCR" => {
            PCR segmentInstance = {};
            return segmentInstance;
        }
        "RXE" => {
            RXE segmentInstance = {};
            return segmentInstance;
        }
        "RGS" => {
            RGS segmentInstance = {};
            return segmentInstance;
        }
        "RXD" => {
            RXD segmentInstance = {};
            return segmentInstance;
        }
        "RXG" => {
            RXG segmentInstance = {};
            return segmentInstance;
        }
        "AFF" => {
            AFF segmentInstance = {};
            return segmentInstance;
        }
        "ORC" => {
            ORC segmentInstance = {};
            return segmentInstance;
        }
        "ORG" => {
            ORG segmentInstance = {};
            return segmentInstance;
        }
        "PTH" => {
            PTH segmentInstance = {};
            return segmentInstance;
        }
        "RXO" => {
            RXO segmentInstance = {};
            return segmentInstance;
        }
        "MFA" => {
            MFA segmentInstance = {};
            return segmentInstance;
        }
        "BHS" => {
            BHS segmentInstance = {};
            return segmentInstance;
        }
        "PDA" => {
            PDA segmentInstance = {};
            return segmentInstance;
        }
        "MFE" => {
            MFE segmentInstance = {};
            return segmentInstance;
        }
        "RXR" => {
            RXR segmentInstance = {};
            return segmentInstance;
        }
        "PDC" => {
            PDC segmentInstance = {};
            return segmentInstance;
        }
        "FHS" => {
            FHS segmentInstance = {};
            return segmentInstance;
        }
        "INV" => {
            INV segmentInstance = {};
            return segmentInstance;
        }
        "MFI" => {
            MFI segmentInstance = {};
            return segmentInstance;
        }
        "NPU" => {
            NPU segmentInstance = {};
            return segmentInstance;
        }
        "RQ1" => {
            RQ1 segmentInstance = {};
            return segmentInstance;
        }
        "LDP" => {
            LDP segmentInstance = {};
            return segmentInstance;
        }
        "OBR" => {
            OBR segmentInstance = {};
            return segmentInstance;
        }
        "CSP" => {
            CSP segmentInstance = {};
            return segmentInstance;
        }
        "CSS" => {
            CSS segmentInstance = {};
            return segmentInstance;
        }
        "CSR" => {
            CSR segmentInstance = {};
            return segmentInstance;
        }
        "OBX" => {
            OBX segmentInstance = {};
            return segmentInstance;
        }
        "RQD" => {
            RQD segmentInstance = {};
            return segmentInstance;
        }
        "GT1" => {
            GT1 segmentInstance = {};
            return segmentInstance;
        }
        "FAC" => {
            FAC segmentInstance = {};
            return segmentInstance;
        }
        "PV1" => {
            PV1 segmentInstance = {};
            return segmentInstance;
        }
        "PV2" => {
            PV2 segmentInstance = {};
            return segmentInstance;
        }
        "CTD" => {
            CTD segmentInstance = {};
            return segmentInstance;
        }
        "CTI" => {
            CTI segmentInstance = {};
            return segmentInstance;
        }
        "SCH" => {
            SCH segmentInstance = {};
            return segmentInstance;
        }
        "PEO" => {
            PEO segmentInstance = {};
            return segmentInstance;
        }
        "PES" => {
            PES segmentInstance = {};
            return segmentInstance;
        }
        _ => {
            return ();
        }
    }
}

# Returns instance of HL7 message given the message type.
#
# + messageName - Message type
# + return - Instance of HL7 message 
isolated function getMessage(string messageName) returns hl7v2:Message? {
    match messageName {
        "DSR_Q03" => {
            DSR_Q03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SQM_S25" => {
            SQM_S25 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RDE_O11" => {
            RDE_O11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OUL_R21" => {
            OUL_R21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORL_O22" => {
            ORL_O22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPT_PCL" => {
            PPT_PCL messageInstance = {msh: {}};
            return messageInstance;
        }
        "RDY_K15" => {
            RDY_K15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMP_O09" => {
            OMP_O09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "DSR_Q01" => {
            DSR_Q01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORS_O06" => {
            ORS_O06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "UDM_Q05" => {
            UDM_Q05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A05" => {
            ADT_A05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A04" => {
            ADT_A04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A06" => {
            ADT_A06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EQQ_Q04" => {
            EQQ_Q04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRA_O18" => {
            RRA_O18 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z90" => {
            RSP_Z90 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A09" => {
            ADT_A09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ROR_ROR" => {
            ROR_ROR messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPR_PC1" => {
            PPR_PC1 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OSR_Q06" => {
            OSR_Q06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_A19" => {
            QRY_A19 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CRM_C01" => {
            CRM_C01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPV_PCA" => {
            PPV_PCA messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A03" => {
            ADT_A03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "DOC_T12" => {
            DOC_T12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQI_I01" => {
            RQI_I01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A01" => {
            ADT_A01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A02" => {
            ADT_A02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFK_M01" => {
            MFK_M01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SPQ_Q08" => {
            SPQ_Q08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SIU_S12" => {
            SIU_S12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMG_O19" => {
            OMG_O19 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_Knn" => {
            RTB_Knn messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRI_I12" => {
            RRI_I12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QCN_J01" => {
            QCN_J01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A18" => {
            ADT_A18 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z82" => {
            RSP_Z82 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A16" => {
            ADT_A16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VXU_V04" => {
            VXU_V04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A17" => {
            ADT_A17 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQP_I04" => {
            RQP_I04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORU_R01" => {
            ORU_R01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPG_PCG" => {
            PPG_PCG messageInstance = {msh: {}};
            return messageInstance;
        }
        "QCK_Q02" => {
            QCK_Q02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "NMR_N01" => {
            NMR_N01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PTR_PCF" => {
            PTR_PCF messageInstance = {msh: {}};
            return messageInstance;
        }
        "EAR_U08" => {
            EAR_U08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A15" => {
            ADT_A15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z86" => {
            RSP_Z86 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z88" => {
            RSP_Z88 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VXQ_V01" => {
            VXQ_V01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A61" => {
            ADT_A61 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SQR_S25" => {
            SQR_S25 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A60" => {
            ADT_A60 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K23" => {
            RSP_K23 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPP_PCB" => {
            PPP_PCB messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K24" => {
            RSP_K24 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K25" => {
            RSP_K25 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K21" => {
            RSP_K21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K22" => {
            RSP_K22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ERP_R09" => {
            ERP_R09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_Q13" => {
            RTB_Q13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORN_O08" => {
            ORN_O08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RDS_O13" => {
            RDS_O13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADR_A19" => {
            ADR_A19 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Q15" => {
            QBP_Q15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORF_R04" => {
            ORF_R04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Q11" => {
            QBP_Q11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Q13" => {
            QBP_Q13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SRM_S01" => {
            SRM_S01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRD_O14" => {
            RRD_O14 messageInstance = {msh: {}};
            return messageInstance;
        }
        "TBR_R08" => {
            TBR_R08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RCL_I06" => {
            RCL_I06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ACK" => {
            ACK messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K13" => {
            RSP_K13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VXX_V02" => {
            VXX_V02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SRR_S01" => {
            SRR_S01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K15" => {
            RSP_K15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K11" => {
            RSP_K11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFQ_M01" => {
            MFQ_M01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_Q01" => {
            QRY_Q01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_Q02" => {
            QRY_Q02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RDR_RDR" => {
            RDR_RDR messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Q21" => {
            QBP_Q21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VQQ_Q07" => {
            VQQ_Q07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M07" => {
            MFN_M07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M08" => {
            MFN_M08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "TCU_U10" => {
            TCU_U10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M05" => {
            MFN_M05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M06" => {
            MFN_M06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "NMD_N02" => {
            NMD_N02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQA_I08" => {
            RQA_I08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M09" => {
            MFN_M09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPL_I02" => {
            RPL_I02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORR_O02" => {
            ORR_O02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M03" => {
            MFN_M03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QVR_Q17" => {
            QVR_Q17 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M04" => {
            MFN_M04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M01" => {
            MFN_M01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CSU_C09" => {
            CSU_C09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M02" => {
            MFN_M02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RER_RER" => {
            RER_RER messageInstance = {msh: {}};
            return messageInstance;
        }
        "OSQ_Q06" => {
            OSQ_Q06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPA_I08" => {
            RPA_I08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A43" => {
            ADT_A43 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RAS_O17" => {
            RAS_O17 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A45" => {
            ADT_A45 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T01" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QSB_Q16" => {
            QSB_Q16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RAR_RAR" => {
            RAR_RAR messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T02" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A50" => {
            ADT_A50 messageInstance = {msh: {}};
            return messageInstance;
        }
        "DFT_P11" => {
            DFT_P11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMD_O03" => {
            OMD_O03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMS_O05" => {
            OMS_O05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SUR_P09" => {
            SUR_P09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RGR_RGR" => {
            RGR_RGR messageInstance = {msh: {}};
            return messageInstance;
        }
        "NMQ_N01" => {
            NMQ_N01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PEX_P07" => {
            PEX_P07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "INU_U05" => {
            INU_U05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORP_O10" => {
            ORP_O10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ESU_U01" => {
            ESU_U01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_R02" => {
            QRY_R02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A54" => {
            ADT_A54 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A52" => {
            ADT_A52 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SSR_U04" => {
            SSR_U04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRG_O16" => {
            RRG_O16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "DFT_P03" => {
            DFT_P03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_K13" => {
            QBP_K13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RCI_I05" => {
            RCI_I05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFR_M01" => {
            MFR_M01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_K13" => {
            RTB_K13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PMU_B01" => {
            PMU_B01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PMU_B04" => {
            PMU_B04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PMU_B03" => {
            PMU_B03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EAC_U07" => {
            EAC_U07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPR_I03" => {
            RPR_I03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRE_O12" => {
            RRE_O12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQQ_Q09" => {
            RQQ_Q09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P10" => {
            BAR_P10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_T12" => {
            QRY_T12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A21" => {
            ADT_A21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VXR_V03" => {
            VXR_V03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "INR_U06" => {
            INR_U06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Z73" => {
            QBP_Z73 messageInstance = {msh: {}};
            return messageInstance;
        }
        "REF_I12" => {
            REF_I12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A20" => {
            ADT_A20 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ESR_U02" => {
            ESR_U02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORG_O20" => {
            ORG_O20 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_Z74" => {
            RTB_Z74 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A24" => {
            ADT_A24 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQC_I05" => {
            RQC_I05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EAN_U09" => {
            EAN_U09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_PC4" => {
            QRY_PC4 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPI_I01" => {
            RPI_I01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M10" => {
            MFN_M10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M11" => {
            MFN_M11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EDR_R07" => {
            EDR_R07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPI_I04" => {
            RPI_I04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ACK_N02" => {
            ACK_N02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PGL_PC6" => {
            PGL_PC6 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M12" => {
            MFN_M12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMN_O07" => {
            OMN_O07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SSU_U03" => {
            SSU_U03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P02" => {
            BAR_P02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OML_O21" => {
            OML_O21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORD_O04" => {
            ORD_O04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A38" => {
            ADT_A38 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A39" => {
            ADT_A39 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P01" => {
            BAR_P01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "LSU_U12" => {
            LSU_U12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORM_O01" => {
            ORM_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A30" => {
            ADT_A30 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RGV_O15" => {
            RGV_O15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P06" => {
            BAR_P06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PRR_PC5" => {
            PRR_PC5 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A37" => {
            ADT_A37 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Qnn" => {
            QBP_Qnn messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P05" => {
            BAR_P05 messageInstance = {msh: {}};
            return messageInstance;
        }
        _ => {
            return ();
        }
    }
}

# Returns instance of HL7 segment component.
#
# + segmentComponentName - HL7 Segment component name
# + return - Instance of HL7 segment component
isolated function getSegmentComponent(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        _ => {
            return ();
        }
    }
}

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

isolated function isPrimitiveType(anydata data) returns boolean {
    if data is string || data is int || data is float {
        return true;
    }
    return false;
}

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
            log:printError("invalid segment field: " + key);
            return ();
        }
    } else {
        log:printError("Not existant field for the segment: " + segment.name);
    }
    return ();
}

isolated function isValidSegmentField(hl7v2:Segment segment, int repetitionNum, string fieldKey) returns boolean {
    hl7v2:HL7SegmentDefinitionRecord? segmentDefinition = (typeof segment).@hl7v2:SegmentDefinition;
    if segmentDefinition != () {
        map<hl7v2:HL7TypeDefinitionRecord> elementDefinitions = segmentDefinition.fields ?: {};
        if elementDefinitions.hasKey(fieldKey) {
            hl7v2:HL7TypeDefinitionRecord fieldDefinition = elementDefinitions.get(fieldKey);
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

isolated function stripExtraDelimeters(string inputStr, string delimeter) returns string {
    if inputStr.endsWith(delimeter) {
        return inputStr.substring(0, inputStr.length() - 1);
    }
    return inputStr;
}

isolated function isMshSegment(string segmentName) returns boolean {
    if segmentName == "MSH" {
        return true;
    }
    return false;
}

isolated function isDelimeterDefinedSegment(string segmentName) returns boolean {
    if segmentName == "MSH" || segmentName == "FHS" || segmentName == "BHS" {
        return true;
    }
    return false;
}
