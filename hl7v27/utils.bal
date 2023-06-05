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
        "SCP" => {
            SCP segmentInstance = {};
            return segmentInstance;
        }
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
        "IPR" => {
            IPR segmentInstance = {};
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
        "SDD" => {
            SDD segmentInstance = {};
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
        "STZ" => {
            STZ segmentInstance = {};
            return segmentInstance;
        }
        "OM6" => {
            OM6 segmentInstance = {};
            return segmentInstance;
        }
        "SLT" => {
            SLT segmentInstance = {};
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
        "IIM" => {
            IIM segmentInstance = {};
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
        "CER" => {
            CER segmentInstance = {};
            return segmentInstance;
        }
        "IAM" => {
            IAM segmentInstance = {};
            return segmentInstance;
        }
        "UAC" => {
            UAC segmentInstance = {};
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
        "IAR" => {
            IAR segmentInstance = {};
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
        "ZL7" => {
            ZL7 segmentInstance = {};
            return segmentInstance;
        }
        "ARV" => {
            ARV segmentInstance = {};
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
        "BTX" => {
            BTX segmentInstance = {};
            return segmentInstance;
        }
        "CNS" => {
            CNS segmentInstance = {};
            return segmentInstance;
        }
        "Hxx" => {
            Hxx segmentInstance = {};
            return segmentInstance;
        }
        "QRI" => {
            QRI segmentInstance = {};
            return segmentInstance;
        }
        "OVR" => {
            OVR segmentInstance = {};
            return segmentInstance;
        }
        "ABS" => {
            ABS segmentInstance = {};
            return segmentInstance;
        }
        "TQ2" => {
            TQ2 segmentInstance = {};
            return segmentInstance;
        }
        "RDF" => {
            RDF segmentInstance = {};
            return segmentInstance;
        }
        "TQ1" => {
            TQ1 segmentInstance = {};
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
        "PYE" => {
            PYE segmentInstance = {};
            return segmentInstance;
        }
        "SFT" => {
            SFT segmentInstance = {};
            return segmentInstance;
        }
        "ACC" => {
            ACC segmentInstance = {};
            return segmentInstance;
        }
        "CON" => {
            CON segmentInstance = {};
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
        "PAC" => {
            PAC segmentInstance = {};
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
        "REL" => {
            REL segmentInstance = {};
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
        "ITM" => {
            ITM segmentInstance = {};
            return segmentInstance;
        }
        "PRD" => {
            PRD segmentInstance = {};
            return segmentInstance;
        }
        "ADJ" => {
            ADJ segmentInstance = {};
            return segmentInstance;
        }
        "LRL" => {
            LRL segmentInstance = {};
            return segmentInstance;
        }
        "VND" => {
            VND segmentInstance = {};
            return segmentInstance;
        }
        "ILT" => {
            ILT segmentInstance = {};
            return segmentInstance;
        }
        "SPM" => {
            SPM segmentInstance = {};
            return segmentInstance;
        }
        "PRT" => {
            PRT segmentInstance = {};
            return segmentInstance;
        }
        "RFI" => {
            RFI segmentInstance = {};
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
        "SHP" => {
            SHP segmentInstance = {};
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
        "PSG" => {
            PSG segmentInstance = {};
            return segmentInstance;
        }
        "PSL" => {
            PSL segmentInstance = {};
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
        "PKG" => {
            PKG segmentInstance = {};
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
        "PSS" => {
            PSS segmentInstance = {};
            return segmentInstance;
        }
        "PCE" => {
            PCE segmentInstance = {};
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
        "IVC" => {
            IVC segmentInstance = {};
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
        "BPO" => {
            BPO segmentInstance = {};
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
        "IVT" => {
            IVT segmentInstance = {};
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
        "BPX" => {
            BPX segmentInstance = {};
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
        "Zxx" => {
            Zxx segmentInstance = {};
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
        "DMI" => {
            DMI segmentInstance = {};
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
        "SCD" => {
            SCD segmentInstance = {};
            return segmentInstance;
        }
        "PMT" => {
            PMT segmentInstance = {};
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
        "IPC" => {
            IPC segmentInstance = {};
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
        "RDE_O11" => {
            RDE_O11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMB_O27" => {
            OMB_O27 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OUL_R24" => {
            OUL_R24 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OUL_R23" => {
            OUL_R23 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CCM_I21" => {
            CCM_I21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OUL_R22" => {
            OUL_R22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORL_O22" => {
            ORL_O22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_E03" => {
            RSP_E03 messageInstance = {msh: {}};
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
        "UDM_Q05" => {
            UDM_Q05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORS_O06" => {
            ORS_O06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A05" => {
            ADT_A05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A06" => {
            ADT_A06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z90" => {
            RSP_Z90 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RRA_O18" => {
            RRA_O18 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A09" => {
            ADT_A09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPR_PC1" => {
            PPR_PC1 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_Znn" => {
            MFN_Znn messageInstance = {msh: {}};
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
        "RQI_I01" => {
            RQI_I01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMI_O23" => {
            OMI_O23 messageInstance = {msh: {}};
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
        "ADT_A04" => {
            ADT_A04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFK_M01" => {
            MFK_M01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_E03" => {
            QBP_E03 messageInstance = {msh: {}};
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
        "CCR_I16" => {
            CCR_I16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BRT_O32" => {
            BRT_O32 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_Knn" => {
            RTB_Knn messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORL_O36" => {
            ORL_O36 messageInstance = {msh: {}};
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
        "RSP_K31" => {
            RSP_K31 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K32" => {
            RSP_K32 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORL_O34" => {
            ORL_O34 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z82" => {
            RSP_Z82 messageInstance = {msh: {}};
            return messageInstance;
        }
        "VXU_V04" => {
            VXU_V04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PMU_B08" => {
            PMU_B08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A16" => {
            ADT_A16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PMU_B07" => {
            PMU_B07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A17" => {
            ADT_A17 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CCI_I22" => {
            CCI_I22 messageInstance = {msh: {}};
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
        "PTR_PCF" => {
            PTR_PCF messageInstance = {msh: {}};
            return messageInstance;
        }
        "EAR_U08" => {
            EAR_U08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z86" => {
            RSP_Z86 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A15" => {
            ADT_A15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A12" => {
            ADT_A12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_Z88" => {
            RSP_Z88 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E21" => {
            EHC_E21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E20" => {
            EHC_E20 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A61" => {
            ADT_A61 messageInstance = {msh: {}};
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
        "RSP_K25" => {
            RSP_K25 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K21" => {
            RSP_K21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E24" => {
            EHC_E24 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K22" => {
            RSP_K22 messageInstance = {msh: {}};
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
        "QBP_Q15" => {
            QBP_Q15 messageInstance = {msh: {}};
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
        "RCL_I06" => {
            RCL_I06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ACK" => {
            ACK messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_E22" => {
            QBP_E22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SRR_S01" => {
            SRR_S01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_K11" => {
            RSP_K11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RDR_RDR" => {
            RDR_RDR messageInstance = {msh: {}};
            return messageInstance;
        }
        "OPR_O38" => {
            OPR_O38 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Q21" => {
            QBP_Q21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OPU_R25" => {
            OPU_R25 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M07" => {
            MFN_M07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E01" => {
            EHC_E01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "TCU_U10" => {
            TCU_U10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M08" => {
            MFN_M08 messageInstance = {msh: {}};
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
        "SDR_S32" => {
            SDR_S32 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORA_R33" => {
            ORA_R33 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QVR_Q17" => {
            QVR_Q17 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CCU_I20" => {
            CCU_I20 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SDR_S31" => {
            SDR_S31 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E04" => {
            EHC_E04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M04" => {
            MFN_M04 messageInstance = {msh: {}};
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
        "EHC_E02" => {
            EHC_E02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORU_R30" => {
            ORU_R30 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OML_O33" => {
            OML_O33 messageInstance = {msh: {}};
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
        "ADT_A44" => {
            ADT_A44 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ORB_O28" => {
            ORB_O28 messageInstance = {msh: {}};
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
        "QSB_Q16" => {
            QSB_Q16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T01" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BTS_O31" => {
            BTS_O31 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T02" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T03" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T04" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T05" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T06" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T07" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T08" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T09" => {
            MDM_T01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MDM_T10" => {
            MDM_T02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E12" => {
            EHC_E12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E10" => {
            EHC_E10 messageInstance = {msh: {}};
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
        "OML_O39" => {
            OML_O39 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OML_O35" => {
            OML_O35 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E15" => {
            EHC_E15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PEX_P07" => {
            PEX_P07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "EHC_E13" => {
            EHC_E13 messageInstance = {msh: {}};
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
        "SLR_S28" => {
            SLR_S28 messageInstance = {msh: {}};
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
        "ORL_O40" => {
            ORL_O40 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BPS_O29" => {
            BPS_O29 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RSP_E22" => {
            RSP_E22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "DFT_P03" => {
            DFT_P03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RCI_I05" => {
            RCI_I05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RTB_K13" => {
            RTB_K13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CQU_I19" => {
            CQU_I19 messageInstance = {msh: {}};
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
        "RRE_O12" => {
            RRE_O12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RPR_I03" => {
            RPR_I03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P12" => {
            BAR_P12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CCQ_I19" => {
            CCQ_I19 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OPL_O37" => {
            OPL_O37 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P10" => {
            BAR_P10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OSM_R26" => {
            OSM_R26 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A21" => {
            ADT_A21 messageInstance = {msh: {}};
            return messageInstance;
        }
        "INR_U06" => {
            INR_U06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "REF_I12" => {
            REF_I12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QBP_Z73" => {
            QBP_Z73 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A20" => {
            ADT_A20 messageInstance = {msh: {}};
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
        "ESR_U02" => {
            ESR_U02 messageInstance = {msh: {}};
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
        "MFN_M16" => {
            MFN_M16 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M17" => {
            MFN_M17 messageInstance = {msh: {}};
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
        "RPI_I04" => {
            RPI_I04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PGL_PC6" => {
            PGL_PC6 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CCF_I22" => {
            CCF_I22 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M15" => {
            MFN_M15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "STC_S33" => {
            STC_S33 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M12" => {
            MFN_M12 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M13" => {
            MFN_M13 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SSU_U03" => {
            SSU_U03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMN_O07" => {
            OMN_O07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P02" => {
            BAR_P02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BRP_O30" => {
            BRP_O30 messageInstance = {msh: {}};
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
        "ORI_O24" => {
            ORI_O24 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A38" => {
            ADT_A38 messageInstance = {msh: {}};
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
        "ADT_A39" => {
            ADT_A39 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RGV_O15" => {
            RGV_O15 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PRR_PC5" => {
            PRR_PC5 messageInstance = {msh: {}};
            return messageInstance;
        }
        "BAR_P06" => {
            BAR_P06 messageInstance = {msh: {}};
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
        "ANTI-MICROBIAL_DEVICE_DATA" => {
            ANTI_MICROBIAL_DEVICE_DATA messageInstance = {};
            return messageInstance;
        }
        "REASSESSMENT_REQUEST_INFO" => {
            REASSESSMENT_REQUEST_INFO messageInstance = {};
            return messageInstance;
        }
        "MF_TEST_CALCULATED" => {
            MF_TEST_CALCULATED messageInstance = {};
            return messageInstance;
        }
        "QUERY_INFORMATION" => {
            QUERY_INFORMATION messageInstance = {};
            return messageInstance;
        }
        "SPECIMEN" => {
            SPECIMEN messageInstance = {};
            return messageInstance;
        }
        "TIMING_QTY" => {
            TIMING_QTY messageInstance = {};
            return messageInstance;
        }
        "MF_CDM" => {
            MF_CDM messageInstance = {};
            return messageInstance;
        }
        "FINANCIAL" => {
            FINANCIAL messageInstance = {};
            return messageInstance;
        }
        "PATIENT_VISIT_OBSERVATION" => {
            PATIENT_VISIT_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "OBSERVATION" => {
            OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "PATHWAY" => {
            PATHWAY messageInstance = {};
            return messageInstance;
        }
        "AUTHORIZATION_CONTACT" => {
            AUTHORIZATION_CONTACT messageInstance = {};
            return messageInstance;
        }
        "SEGMENT_PATTERN" => {
            SEGMENT_PATTERN messageInstance = {};
            return messageInstance;
        }
        "MF_STAFF" => {
            MF_STAFF messageInstance = {};
            return messageInstance;
        }
        "MF_INV_ITEM" => {
            MF_INV_ITEM messageInstance = {};
            return messageInstance;
        }
        "SCHEDULE" => {
            SCHEDULE messageInstance = {};
            return messageInstance;
        }
        "ANTI-MICROBIAL_DEVICE_CYCLE_DATA" => {
            ANTI_MICROBIAL_DEVICE_CYCLE_DATA messageInstance = {};
            return messageInstance;
        }
        "RESPONSE" => {
            RESPONSE messageInstance = {};
            return messageInstance;
        }
        "DEFINITION" => {
            DEFINITION messageInstance = {};
            return messageInstance;
        }
        "MF_LOCATION" => {
            MF_LOCATION messageInstance = {};
            return messageInstance;
        }
        "COMMON_ORDER" => {
            COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "PROBLEM" => {
            PROBLEM messageInstance = {};
            return messageInstance;
        }
        "QUERY_ACK" => {
            QUERY_ACK messageInstance = {};
            return messageInstance;
        }
        "APPOINTMENT_HISTORY" => {
            APPOINTMENT_HISTORY messageInstance = {};
            return messageInstance;
        }
        "AUTHORIZATION_REQUEST" => {
            AUTHORIZATION_REQUEST messageInstance = {};
            return messageInstance;
        }
        "MATERIAL_ITEM_RECORD" => {
            MATERIAL_ITEM_RECORD messageInstance = {};
            return messageInstance;
        }
        "PROVIDER_CONTACT" => {
            PROVIDER_CONTACT messageInstance = {};
            return messageInstance;
        }
        "GOAL" => {
            GOAL messageInstance = {};
            return messageInstance;
        }
        "ADJUSTMENT_PAYEE" => {
            ADJUSTMENT_PAYEE messageInstance = {};
            return messageInstance;
        }
        "MF_TEST_NUMERIC" => {
            MF_TEST_NUMERIC messageInstance = {};
            return messageInstance;
        }
        "QUERY" => {
            QUERY messageInstance = {};
            return messageInstance;
        }
        "PROVIDER" => {
            PROVIDER messageInstance = {};
            return messageInstance;
        }
        "MF_DRG" => {
            MF_DRG messageInstance = {};
            return messageInstance;
        }
        "EXPERIENCE" => {
            EXPERIENCE messageInstance = {};
            return messageInstance;
        }
        "PAYMENT_REMITTANCE_HEADER_INFO" => {
            PAYMENT_REMITTANCE_HEADER_INFO messageInstance = {};
            return messageInstance;
        }
        "GUARANTOR_INSURANCE" => {
            GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "CLOCK_AND_STATS_WITH_NOTES" => {
            CLOCK_AND_STATS_WITH_NOTES messageInstance = {};
            return messageInstance;
        }
        "MF_CLIN_STUDY_SCHED" => {
            MF_CLIN_STUDY_SCHED messageInstance = {};
            return messageInstance;
        }
        "CERTIFICATE" => {
            CERTIFICATE messageInstance = {};
            return messageInstance;
        }
        "ACCESSION_DETAIL" => {
            ACCESSION_DETAIL messageInstance = {};
            return messageInstance;
        }
        "SHIPMENT" => {
            SHIPMENT messageInstance = {};
            return messageInstance;
        }
        "CLINICAL_ORDER" => {
            CLINICAL_ORDER messageInstance = {};
            return messageInstance;
        }
        "CLINICAL_HISTORY" => {
            CLINICAL_HISTORY messageInstance = {};
            return messageInstance;
        }
        "MF_SITE_DEFINED" => {
            MF_SITE_DEFINED messageInstance = {};
            return messageInstance;
        }
        "INSURANCE" => {
            INSURANCE messageInstance = {};
            return messageInstance;
        }
        "PAYMENT_REMITTANCE_DETAIL_INFO" => {
            PAYMENT_REMITTANCE_DETAIL_INFO messageInstance = {};
            return messageInstance;
        }
        "MF_CLIN_STUDY" => {
            MF_CLIN_STUDY messageInstance = {};
            return messageInstance;
        }
        "MF_TEST_BATTERIES" => {
            MF_TEST_BATTERIES messageInstance = {};
            return messageInstance;
        }
        "PATIENT_VISIT" => {
            PATIENT_VISIT messageInstance = {};
            return messageInstance;
        }
        "MF_TEST_CATEGORICAL" => {
            MF_TEST_CATEGORICAL messageInstance = {};
            return messageInstance;
        }
        "ORDER" => {
            ORDER messageInstance = {};
            return messageInstance;
        }
        "ROW_DEFINITION" => {
            ROW_DEFINITION messageInstance = {};
            return messageInstance;
        }
        "MF_OBS_ATTRIBUTES" => {
            MF_OBS_ATTRIBUTES messageInstance = {};
            return messageInstance;
        }
        "INVOICE_PROCESSING_RESULTS_INFO" => {
            INVOICE_PROCESSING_RESULTS_INFO messageInstance = {};
            return messageInstance;
        }
        "TEST_CONFIGURATION" => {
            TEST_CONFIGURATION messageInstance = {};
            return messageInstance;
        }
        "PATIENT_RESULT" => {
            PATIENT_RESULT messageInstance = {};
            return messageInstance;
        }
        "COMMAND_RESPONSE" => {
            COMMAND_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "COMMAND" => {
            COMMAND messageInstance = {};
            return messageInstance;
        }
        "PATIENT_VISITS" => {
            PATIENT_VISITS messageInstance = {};
            return messageInstance;
        }
        "SPECIMEN_CONTAINER" => {
            SPECIMEN_CONTAINER messageInstance = {};
            return messageInstance;
        }
        "QBP" => {
            QBP messageInstance = {};
            return messageInstance;
        }
        "ORDER_DIET" => {
            ORDER_DIET messageInstance = {};
            return messageInstance;
        }
        "AUTHORIZATION_RESPONSE_INFO" => {
            AUTHORIZATION_RESPONSE_INFO messageInstance = {};
            return messageInstance;
        }
        "RESOURCES" => {
            RESOURCES messageInstance = {};
            return messageInstance;
        }
        "PROCEDURE" => {
            PROCEDURE messageInstance = {};
            return messageInstance;
        }
        "QUERY_RESPONSE" => {
            QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "ORDER_TRAY" => {
            ORDER_TRAY messageInstance = {};
            return messageInstance;
        }
        "MERGE_INFO" => {
            MERGE_INFO messageInstance = {};
            return messageInstance;
        }
        "PATIENT_OBSERVATION" => {
            PATIENT_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "MEDICATION_HISTORY" => {
            MEDICATION_HISTORY messageInstance = {};
            return messageInstance;
        }
        "ADVERSE_REACTION_GROUP" => {
            ADVERSE_REACTION_GROUP messageInstance = {};
            return messageInstance;
        }
        "GUARANTOR" => {
            GUARANTOR messageInstance = {};
            return messageInstance;
        }
        "NOTIFICATION" => {
            NOTIFICATION messageInstance = {};
            return messageInstance;
        }
        "VISIT" => {
            VISIT messageInstance = {};
            return messageInstance;
        }
        "REQUEST" => {
            REQUEST messageInstance = {};
            return messageInstance;
        }
        "STAFF" => {
            STAFF messageInstance = {};
            return messageInstance;
        }
        "PATIENT" => {
            PATIENT messageInstance = {};
            return messageInstance;
        }
        "INVOICE_INFORMATION" => {
            INVOICE_INFORMATION messageInstance = {};
            return messageInstance;
        }
        "AUTHORIZATION" => {
            AUTHORIZATION messageInstance = {};
            return messageInstance;
        }
        _ => {
            return ();
        }
    }
}

isolated function getSubComponent(hl7v2:CompositeType compositeType, int subComponentposition, int componentPosition)
            returns anydata|hl7v2:PrimitiveType {
    [string, anydata][] entries = compositeType.entries().toArray();
    if (entries.length() <= componentPosition) {
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
