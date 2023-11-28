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
        "SQM_S25" => {
            SQM_S25 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "OMB_O27" => {
            OMB_O27 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OMP_O09" => {
            OMP_O09 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ADT_A05" => {
            ADT_A05 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "ADT_A06" => {
            ADT_A06 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RRA_O18" => {
            RRA_O18 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ADT_A09" => {
            ADT_A09 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "PPR_PC1" => {
            PPR_PC1 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "OSR_Q06" => {
            OSR_Q06 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "QRY_A19" => {
            QRY_A19 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "PPV_PCA" => {
            PPV_PCA messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "ADT_A03" => {
            ADT_A03 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RQI_I01" => {
            RQI_I01 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "DOC_T12" => {
            DOC_T12 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "OMI_O23" => {
            OMI_O23 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ADT_A01" => {
            ADT_A01 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "ADT_A02" => {
            ADT_A02 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "MFK_M01" => {
            MFK_M01 messageInstance = {msh:{}, msa:{}, mfi:{}};
            return messageInstance;
        }
        "SIU_S12" => {
            SIU_S12 messageInstance = {msh:{}, sch:{}};
            return messageInstance;
        }
        "BRT_O32" => {
            BRT_O32 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QCN_J01" => {
            QCN_J01 messageInstance = {msh:{}, qid:{}};
            return messageInstance;
        }
        "RSP_K31" => {
            RSP_K31 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "ADT_A18" => {
            ADT_A18 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
            return messageInstance;
        }
        "VXU_V04" => {
            VXU_V04 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "ADT_A16" => {
            ADT_A16 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "ADT_A17" => {
            ADT_A17 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RQP_I04" => {
            RQP_I04 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "PPG_PCG" => {
            PPG_PCG messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "PTR_PCF" => {
            PTR_PCF messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "ADT_A15" => {
            ADT_A15 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "ADT_A12" => {
            ADT_A12 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "EHC_E21" => {
            EHC_E21 messageInstance = {msh:{}};
            return messageInstance;
        }
        "EHC_E20" => {
            EHC_E20 messageInstance = {msh:{}};
            return messageInstance;
        }
        "VXQ_V01" => {
            VXQ_V01 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RSP_K23" => {
            RSP_K23 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RSP_K25" => {
            RSP_K25 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "RSP_K21" => {
            RSP_K21 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "EHC_E24" => {
            EHC_E24 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_K22" => {
            RSP_K22 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ORN_O08" => {
            ORN_O08 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QBP_Q15" => {
            QBP_Q15 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "QBP_Q11" => {
            QBP_Q11 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "QBP_Q13" => {
            QBP_Q13 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "RRD_O14" => {
            RRD_O14 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RCL_I06" => {
            RCL_I06 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "ACK" => {
            ACK messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "VXX_V02" => {
            VXX_V02 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "SRR_S01" => {
            SRR_S01 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_K11" => {
            RSP_K11 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "QRY_Q01" => {
            QRY_Q01 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RDR_RDR" => {
            RDR_RDR messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "OPR_O38" => {
            OPR_O38 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QBP_Q21" => {
            QBP_Q21 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "MFN_M07" => {
            MFN_M07 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "EHC_E01" => {
            EHC_E01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MFN_M08" => {
            MFN_M08 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M05" => {
            MFN_M05 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M06" => {
            MFN_M06 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "NMD_N02" => {
            NMD_N02 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MFN_M09" => {
            MFN_M09 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "RPL_I02" => {
            RPL_I02 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ORR_O02" => {
            ORR_O02 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "MFN_M03" => {
            MFN_M03 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "EHC_E04" => {
            EHC_E04 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MFN_M04" => {
            MFN_M04 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M01" => {
            MFN_M01 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "CSU_C09" => {
            CSU_C09 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MFN_M02" => {
            MFN_M02 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "EHC_E02" => {
            EHC_E02 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ORU_R30" => {
            ORU_R30 messageInstance = {msh:{}, pid:{}, orc:{}, obr:{}};
            return messageInstance;
        }
        "RER_RER" => {
            RER_RER messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "OSQ_Q06" => {
            OSQ_Q06 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "ADT_A43" => {
            ADT_A43 messageInstance = {msh:{}, evn:{}};
            return messageInstance;
        }
        "RAS_O17" => {
            RAS_O17 messageInstance = {msh:{}};
            return messageInstance;
        }
        "RAR_RAR" => {
            RAR_RAR messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ADT_A45" => {
            ADT_A45 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "MDM_T01" => {
            MDM_T01 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "BTS_O31" => {
            BTS_O31 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MDM_T02" => {
            MDM_T02 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "EHC_E12" => {
            EHC_E12 messageInstance = {msh:{}, rfi:{}, ivc:{}, pss:{}, psg:{}};
            return messageInstance;
        }
        "EHC_E10" => {
            EHC_E10 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ADT_A50" => {
            ADT_A50 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
            return messageInstance;
        }
        "OMD_O03" => {
            OMD_O03 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OMS_O05" => {
            OMS_O05 messageInstance = {msh:{}};
            return messageInstance;
        }
        "EHC_E15" => {
            EHC_E15 messageInstance = {msh:{}};
            return messageInstance;
        }
        "EHC_E13" => {
            EHC_E13 messageInstance = {msh:{}, msa:{}, rfi:{}, ivc:{}, pss:{}, psg:{}};
            return messageInstance;
        }
        "ESU_U01" => {
            ESU_U01 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "QRY_R02" => {
            QRY_R02 messageInstance = {msh:{}, qrd:{}, qrf:{}};
            return messageInstance;
        }
        "SLR_S28" => {
            SLR_S28 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ADT_A54" => {
            ADT_A54 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "ADT_A52" => {
            ADT_A52 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RSP_E22" => {
            RSP_E22 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "MFR_M04" => {
            MFR_M04 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "MFR_M01" => {
            MFR_M01 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "MFR_M07" => {
            MFR_M07 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "PMU_B01" => {
            PMU_B01 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "MFR_M05" => {
            MFR_M05 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "PMU_B04" => {
            PMU_B04 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "MFR_M06" => {
            MFR_M06 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "PMU_B03" => {
            PMU_B03 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "EAC_U07" => {
            EAC_U07 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RRE_O12" => {
            RRE_O12 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "BAR_P12" => {
            BAR_P12 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "OPL_O37" => {
            OPL_O37 messageInstance = {msh:{}};
            return messageInstance;
        }
        "BAR_P10" => {
            BAR_P10 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, gp1:{}};
            return messageInstance;
        }
        "QRY_T12" => {
            QRY_T12 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "ADT_A21" => {
            ADT_A21 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "INR_U06" => {
            INR_U06 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "QBP_Z73" => {
            QBP_Z73 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "ADT_A20" => {
            ADT_A20 messageInstance = {msh:{}, evn:{}, npu:{}};
            return messageInstance;
        }
        "RTB_Z74" => {
            RTB_Z74 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ADT_A24" => {
            ADT_A24 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "RQC_I05" => {
            RQC_I05 messageInstance = {msh:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "MFN_M16" => {
            MFN_M16 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M17" => {
            MFN_M17 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M10" => {
            MFN_M10 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M11" => {
            MFN_M11 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M15" => {
            MFN_M15 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M12" => {
            MFN_M12 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M13" => {
            MFN_M13 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "SSU_U03" => {
            SSU_U03 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "OMN_O07" => {
            OMN_O07 messageInstance = {msh:{}};
            return messageInstance;
        }
        "BAR_P02" => {
            BAR_P02 messageInstance = {msh:{}, evn:{}};
            return messageInstance;
        }
        "ORD_O04" => {
            ORD_O04 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ORI_O24" => {
            ORI_O24 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ADT_A38" => {
            ADT_A38 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "BAR_P01" => {
            BAR_P01 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "ADT_A39" => {
            ADT_A39 messageInstance = {msh:{}, evn:{}};
            return messageInstance;
        }
        "ORM_O01" => {
            ORM_O01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ADT_A30" => {
            ADT_A30 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}};
            return messageInstance;
        }
        "PRR_PC5" => {
            PRR_PC5 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "BAR_P06" => {
            BAR_P06 messageInstance = {msh:{}, evn:{}};
            return messageInstance;
        }
        "ADT_A37" => {
            ADT_A37 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "BAR_P05" => {
            BAR_P05 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "RDE_O11" => {
            RDE_O11 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OUL_R24" => {
            OUL_R24 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OUL_R23" => {
            OUL_R23 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OUL_R22" => {
            OUL_R22 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OUL_R21" => {
            OUL_R21 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ORL_O22" => {
            ORL_O22 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_E03" => {
            RSP_E03 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "PPT_PCL" => {
            PPT_PCL messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "RDY_K15" => {
            RDY_K15 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ORS_O06" => {
            ORS_O06 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_Z90" => {
            RSP_Z90 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
            return messageInstance;
        }
        "ROR_ROR" => {
            ROR_ROR messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "MFN_Znn" => {
            MFN_Znn messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "CRM_C01" => {
            CRM_C01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "QBP_E03" => {
            QBP_E03 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OMG_O19" => {
            OMG_O19 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ORL_O36" => {
            ORL_O36 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RRI_I12" => {
            RRI_I12 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "ORL_O34" => {
            ORL_O34 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_Z82" => {
            RSP_Z82 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "PMU_B08" => {
            PMU_B08 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "PMU_B07" => {
            PMU_B07 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "ORU_R01" => {
            ORU_R01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "NMR_N01" => {
            NMR_N01 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "EAR_U08" => {
            EAR_U08 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RSP_Z86" => {
            RSP_Z86 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RSP_Z88" => {
            RSP_Z88 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
            return messageInstance;
        }
        "ADT_A61" => {
            ADT_A61 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "SQR_S25" => {
            SQR_S25 messageInstance = {msh:{}, msa:{}, qak:{}};
            return messageInstance;
        }
        "ADT_A60" => {
            ADT_A60 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "PPP_PCB" => {
            PPP_PCB messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "RDS_O13" => {
            RDS_O13 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ADR_A19" => {
            ADR_A19 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "ORF_R04" => {
            ORF_R04 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "SRM_S01" => {
            SRM_S01 messageInstance = {msh:{}, arq:{}};
            return messageInstance;
        }
        "QBP_E22" => {
            QBP_E22 messageInstance = {msh:{}};
            return messageInstance;
        }
        "MFQ_M01" => {
            MFQ_M01 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "OPU_R25" => {
            OPU_R25 messageInstance = {msh:{}, pv1:{}};
            return messageInstance;
        }
        "TCU_U10" => {
            TCU_U10 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RQA_I08" => {
            RQA_I08 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "SDR_S32" => {
            SDR_S32 messageInstance = {msh:{}};
            return messageInstance;
        }
        "QVR_Q17" => {
            QVR_Q17 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "SDR_S31" => {
            SDR_S31 messageInstance = {msh:{}};
            return messageInstance;
        }
        "OML_O33" => {
            OML_O33 messageInstance = {msh:{}};
            return messageInstance;
        }
        "RPA_I08" => {
            RPA_I08 messageInstance = {msh:{}, msa:{}, pid:{}};
            return messageInstance;
        }
        "ORB_O28" => {
            ORB_O28 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QSB_Q16" => {
            QSB_Q16 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "DFT_P11" => {
            DFT_P11 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "SUR_P09" => {
            SUR_P09 messageInstance = {msh:{}};
            return messageInstance;
        }
        "RGR_RGR" => {
            RGR_RGR messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "OML_O35" => {
            OML_O35 messageInstance = {msh:{}};
            return messageInstance;
        }
        "PEX_P07" => {
            PEX_P07 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "NMQ_N01" => {
            NMQ_N01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "INU_U05" => {
            INU_U05 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "ORP_O10" => {
            ORP_O10 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "SSR_U04" => {
            SSR_U04 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RRG_O16" => {
            RRG_O16 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "BPS_O29" => {
            BPS_O29 messageInstance = {msh:{}};
            return messageInstance;
        }
        "DFT_P03" => {
            DFT_P03 messageInstance = {evn:{}, pid:{}};
            return messageInstance;
        }
        "RCI_I05" => {
            RCI_I05 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "RTB_K13" => {
            RTB_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RPR_I03" => {
            RPR_I03 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RSP_Q11" => {
            RSP_Q11 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "VXR_V03" => {
            VXR_V03 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "REF_I12" => {
            REF_I12 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "ORG_O20" => {
            ORG_O20 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ESR_U02" => {
            ESR_U02 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "EAN_U09" => {
            EAN_U09 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "QRY_PC4" => {
            QRY_PC4 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RPI_I01" => {
            RPI_I01 messageInstance = {msh:{}, msa:{}, pid:{}};
            return messageInstance;
        }
        "RPI_I04" => {
            RPI_I04 messageInstance = {msh:{}, msa:{}, pid:{}};
            return messageInstance;
        }
        "PGL_PC6" => {
            PGL_PC6 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "STC_S33" => {
            STC_S33 messageInstance = {msh:{}};
            return messageInstance;
        }
        "BRP_O30" => {
            BRP_O30 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "OML_O21" => {
            OML_O21 messageInstance = {msh:{}};
            return messageInstance;
        }
        "LSU_U12" => {
            LSU_U12 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RGV_O15" => {
            RGV_O15 messageInstance = {msh:{}};
            return messageInstance;
        }
        "QBP_Qnn" => {
            QBP_Qnn messageInstance = {msh:{}, qpd:{}, rcp:{}, msa:{}, qak:{}, anyhl7segment:{}};
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
        "RPR_I03_PROVIDER" => {
            RPR_I03_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "ADT_A06_PROCEDURE" => {
            ADT_A06_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "EHC_E10_PRODUCT_SERVICE_SECTION" => {
            EHC_E10_PRODUCT_SERVICE_SECTION messageInstance = {pss:{}};
            return messageInstance;
        }
        "RSP_Z88_QUERY_RESPONSE" => {
            RSP_Z88_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_ORDER_OBSERVATION" => {
            PGL_PC6_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PTR_PCF_ORDER_OBSERVATION" => {
            PTR_PCF_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "MFN_M02_MF_STAFF" => {
            MFN_M02_MF_STAFF messageInstance = {stf:{}, mfe:{}};
            return messageInstance;
        }
        "OML_O33_OBSERVATION" => {
            OML_O33_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PGL_PC6_PATIENT_VISIT" => {
            PGL_PC6_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OUL_R22_SPECIMEN" => {
            OUL_R22_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "BAR_P02_PATIENT" => {
            BAR_P02_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Z88_TIMING_ENCODED" => {
            RSP_Z88_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORF_R04_PATIENT" => {
            ORF_R04_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RDE_O11_TIMING_ENCODED" => {
            RDE_O11_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OPL_O37_GUARANTOR" => {
            OPL_O37_GUARANTOR messageInstance = {gt1:{}};
            return messageInstance;
        }
        "ORD_O04_TIMING_DIET" => {
            ORD_O04_TIMING_DIET messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OPU_R25_ACCESSION_DETAIL" => {
            OPU_R25_ACCESSION_DETAIL messageInstance = {};
            return messageInstance;
        }
        "OMP_O09_PATIENT" => {
            OMP_O09_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RRI_I12_PROCEDURE" => {
            RRI_I12_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OPL_O37_PATIENT_PRIOR" => {
            OPL_O37_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "OMB_O27_PATIENT_VISIT" => {
            OMB_O27_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OSR_Q06_RESPONSE" => {
            OSR_Q06_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SQM_S25_PERSONNEL_RESOURCE" => {
            SQM_S25_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "OMS_O05_INSURANCE" => {
            OMS_O05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "ORL_O34_OBSERVATION_REQUEST" => {
            ORL_O34_OBSERVATION_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "OML_O21_TIMING" => {
            OML_O21_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "REF_I12_AUTHORIZATION_CONTACT" => {
            REF_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
            return messageInstance;
        }
        "PRR_PC5_PATIENT_VISIT" => {
            PRR_PC5_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PEX_P07_VISIT" => {
            PEX_P07_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORF_R04_TIMING_QTY" => {
            ORF_R04_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ADT_A05_INSURANCE" => {
            ADT_A05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RSP_Z90_PATIENT" => {
            RSP_Z90_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RAS_O17_OBSERVATION" => {
            RAS_O17_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "MFN_M05_MF_LOCATION" => {
            MFN_M05_MF_LOCATION messageInstance = {loc:{}, mfe:{}};
            return messageInstance;
        }
        "RAS_O17_ORDER" => {
            RAS_O17_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RSP_Z88_COMPONENT" => {
            RSP_Z88_COMPONENT messageInstance = {};
            return messageInstance;
        }
        "PPT_PCL_ORDER_OBSERVATION" => {
            PPT_PCL_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ADR_A19_QUERY_RESPONSE" => {
            ADR_A19_QUERY_RESPONSE messageInstance = {pid:{}, pv1:{}};
            return messageInstance;
        }
        "ORL_O36_OBSERVATION_REQUEST" => {
            ORL_O36_OBSERVATION_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "EHC_E10_PRODUCT_SERVICE_LINE_INFO" => {
            EHC_E10_PRODUCT_SERVICE_LINE_INFO messageInstance = {psl:{}};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM" => {
            PTR_PCF_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "OMB_O27_PATIENT" => {
            OMB_O27_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM_OBSERVATION" => {
            PPT_PCL_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PPR_PC1_PATIENT_VISIT" => {
            PPR_PC1_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OUL_R23_CONTAINER" => {
            OUL_R23_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "PPT_PCL_PATIENT" => {
            PPT_PCL_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MDM_T01_COMMON_ORDER" => {
            MDM_T01_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "PPV_PCA_PATIENT" => {
            PPV_PCA_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Z82_TREATMENT" => {
            RSP_Z82_TREATMENT messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_ORDER" => {
            PPR_PC1_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RAS_O17_TIMING" => {
            RAS_O17_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "BPS_O29_PRODUCT" => {
            BPS_O29_PRODUCT messageInstance = {bpx:{}};
            return messageInstance;
        }
        "RRG_O16_TIMING" => {
            RRG_O16_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PGL_PC6_ORDER_DETAIL" => {
            PGL_PC6_ORDER_DETAIL messageInstance = {pgl_pc6_choice:{}};
            return messageInstance;
        }
        "ORG_O20_PATIENT" => {
            ORG_O20_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORM_O01_INSURANCE" => {
            ORM_O01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RDS_O13_TIMING_ENCODED" => {
            RDS_O13_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OML_O21_CONTAINER" => {
            OML_O21_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "NMD_N02_CLOCK" => {
            NMD_N02_CLOCK messageInstance = {nck:{}};
            return messageInstance;
        }
        "RPI_I01_INSURANCE" => {
            RPI_I01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "ORI_O24_RESPONSE" => {
            ORI_O24_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPG_PCG_PATHWAY_ROLE" => {
            PPG_PCG_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "MFR_M07_MF_QUERY" => {
            MFR_M07_MF_QUERY messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "EHC_E01_PROCEDURE" => {
            EHC_E01_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PPV_PCA_GOAL_OBSERVATION" => {
            PPV_PCA_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RGV_O15_ENCODING" => {
            RGV_O15_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "PTR_PCF_GOAL" => {
            PTR_PCF_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "OMN_O07_TIMING" => {
            OMN_O07_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RPA_I08_OBSERVATION" => {
            RPA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "OML_O33_SPECIMEN" => {
            OML_O33_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "OMP_O09_COMPONENT" => {
            OMP_O09_COMPONENT messageInstance = {rxc:{}};
            return messageInstance;
        }
        "OML_O21_ORDER" => {
            OML_O21_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "BAR_P05_VISIT" => {
            BAR_P05_VISIT messageInstance = {};
            return messageInstance;
        }
        "ADT_A01_INSURANCE" => {
            ADT_A01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RSP_Z86_QUERY_RESPONSE" => {
            RSP_Z86_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OMG_O19_TIMING_PRIOR" => {
            OMG_O19_TIMING_PRIOR messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_ROLE" => {
            PPR_PC1_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RDR_RDR_DEFINITION" => {
            RDR_RDR_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "ORD_O04_ORDER_TRAY" => {
            ORD_O04_ORDER_TRAY messageInstance = {orc:{}};
            return messageInstance;
        }
        "SSR_U04_SPECIMEN_CONTAINER" => {
            SSR_U04_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "OML_O21_PATIENT" => {
            OML_O21_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPP_PCB_ORDER_DETAIL" => {
            PPP_PCB_ORDER_DETAIL messageInstance = {ppp_pcb_choice:{}};
            return messageInstance;
        }
        "EHC_E10_PRODUCT_SERVICE_GROUP" => {
            EHC_E10_PRODUCT_SERVICE_GROUP messageInstance = {psg:{}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_RX_ORDER" => {
            PEX_P07_ASSOCIATED_RX_ORDER messageInstance = {rxe:{}};
            return messageInstance;
        }
        "RQI_I01_GUARANTOR_INSURANCE" => {
            RQI_I01_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "ORG_O20_OBSERVATION_GROUP" => {
            ORG_O20_OBSERVATION_GROUP messageInstance = {obr:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_ORDER" => {
            DFT_P11_FINANCIAL_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "DFT_P03_TIMING_QUANTITY" => {
            DFT_P03_TIMING_QUANTITY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPR_PC1_CHOICE" => {
            PPR_PC1_CHOICE messageInstance = {};
            return messageInstance;
        }
        "RQA_I08_VISIT" => {
            RQA_I08_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORD_O04_PATIENT" => {
            ORD_O04_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "SRM_S01_GENERAL_RESOURCE" => {
            SRM_S01_GENERAL_RESOURCE messageInstance = {aig:{}};
            return messageInstance;
        }
        "RPA_I08_AUTHORIZATION" => {
            RPA_I08_AUTHORIZATION messageInstance = {aut:{}};
            return messageInstance;
        }
        "ORM_O01_PATIENT" => {
            ORM_O01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "EAC_U07_COMMAND" => {
            EAC_U07_COMMAND messageInstance = {ecd:{}};
            return messageInstance;
        }
        "RRE_O12_TIMING_ENCODED" => {
            RRE_O12_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RER_RER_DEFINITION" => {
            RER_RER_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "BAR_P10_PROCEDURE" => {
            BAR_P10_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RRD_O14_TIMING" => {
            RRD_O14_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RPA_I08_INSURANCE" => {
            RPA_I08_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RPA_I08_PROVIDER" => {
            RPA_I08_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RSP_Q11_QUERY_RESULT_CLUSTER" => {
            RSP_Q11_QUERY_RESULT_CLUSTER messageInstance = {loc:{}, mfe:{}};
            return messageInstance;
        }
        "DFT_P03_VISIT" => {
            DFT_P03_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORF_R04_QUERY_RESPONSE" => {
            ORF_R04_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RDE_O11_ORDER_DETAIL" => {
            RDE_O11_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "OMG_O19_PATIENT_PRIOR" => {
            OMG_O19_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT" => {
            NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT messageInstance = {};
            return messageInstance;
        }
        "OPR_O38_ORDER" => {
            OPR_O38_ORDER messageInstance = {};
            return messageInstance;
        }
        "EHC_E01_PRODUCT_SERVICE_GROUP" => {
            EHC_E01_PRODUCT_SERVICE_GROUP messageInstance = {psg:{}};
            return messageInstance;
        }
        "RSP_E22_PSL_ITEM_INFO" => {
            RSP_E22_PSL_ITEM_INFO messageInstance = {psl:{}};
            return messageInstance;
        }
        "EHC_E04_REASSESSMENT_REQUEST_INFO" => {
            EHC_E04_REASSESSMENT_REQUEST_INFO messageInstance = {};
            return messageInstance;
        }
        "SDR_S31_ANTIMICROBIAL_DEVICE_DATA" => {
            SDR_S31_ANTIMICROBIAL_DEVICE_DATA messageInstance = {};
            return messageInstance;
        }
        "BPS_O29_ORDER" => {
            BPS_O29_ORDER messageInstance = {bpo:{}, orc:{}};
            return messageInstance;
        }
        "SIU_S12_RESOURCES" => {
            SIU_S12_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "OMG_O19_OBSERVATION" => {
            OMG_O19_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMN_O07_INSURANCE" => {
            OMN_O07_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OPL_O37_PATIENT" => {
            OPL_O37_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Q11_MF_LOC_DEPT" => {
            RSP_Q11_MF_LOC_DEPT messageInstance = {ldp:{}};
            return messageInstance;
        }
        "CSU_C09_VISIT" => {
            CSU_C09_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "REF_I12_PROCEDURE" => {
            REF_I12_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_ROLE" => {
            PRR_PC5_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "SUR_P09_FACILITY_DETAIL" => {
            SUR_P09_FACILITY_DETAIL messageInstance = {fac:{}, pdc:{}, nte:{}};
            return messageInstance;
        }
        "RGV_O15_PATIENT" => {
            RGV_O15_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R21_VISIT" => {
            OUL_R21_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RGV_O15_OBSERVATION" => {
            RGV_O15_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "OUL_R21_OBSERVATION" => {
            OUL_R21_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "RRD_O14_RESPONSE" => {
            RRD_O14_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OML_O35_INSURANCE" => {
            OML_O35_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OML_O21_PRIOR_RESULT" => {
            OML_O21_PRIOR_RESULT messageInstance = {};
            return messageInstance;
        }
        "PPP_PCB_PATHWAY" => {
            PPP_PCB_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "NMR_N01_APP_STATUS" => {
            NMR_N01_APP_STATUS messageInstance = {nsc:{}};
            return messageInstance;
        }
        "ORR_O02_RESPONSE" => {
            ORR_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "ORL_O36_ORDER" => {
            ORL_O36_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RSP_K31_ORDER_DETAIL" => {
            RSP_K31_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "OUL_R21_ORDER_OBSERVATION" => {
            OUL_R21_ORDER_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_OBSERVATION" => {
            DFT_P11_FINANCIAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OUL_R23_SPECIMEN" => {
            OUL_R23_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "OML_O35_OBSERVATION_PRIOR" => {
            OML_O35_OBSERVATION_PRIOR messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRA_O18_ORDER" => {
            RRA_O18_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPP_PCB_GOAL" => {
            PPP_PCB_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM_OBSERVATION" => {
            PPG_PCG_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO" => {
            EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO messageInstance = {};
            return messageInstance;
        }
        "RSP_K23_QUERY_RESPONSE" => {
            RSP_K23_QUERY_RESPONSE messageInstance = {pid:{}};
            return messageInstance;
        }
        "OPR_O38_RESPONSE" => {
            OPR_O38_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "QBP_E03_QUERY_INFORMATION" => {
            QBP_E03_QUERY_INFORMATION messageInstance = {};
            return messageInstance;
        }
        "DFT_P11_OBSERVATION" => {
            DFT_P11_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RGV_O15_ORDER" => {
            RGV_O15_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RDS_O13_PATIENT" => {
            RDS_O13_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PTR_PCF_ORDER" => {
            PTR_PCF_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "VXR_V03_OBSERVATION" => {
            VXR_V03_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "BAR_P01_VISIT" => {
            BAR_P01_VISIT messageInstance = {};
            return messageInstance;
        }
        "PPP_PCB_PATIENT_VISIT" => {
            PPP_PCB_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RGR_RGR_ENCODING" => {
            RGR_RGR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "DFT_P11_INSURANCE" => {
            DFT_P11_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "ORL_O22_OBSERVATION_REQUEST" => {
            ORL_O22_OBSERVATION_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "PEX_P07_RX_ADMINISTRATION" => {
            PEX_P07_RX_ADMINISTRATION messageInstance = {rxa:{}};
            return messageInstance;
        }
        "RDS_O13_OBSERVATION" => {
            RDS_O13_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORD_O04_ORDER_DIET" => {
            ORD_O04_ORDER_DIET messageInstance = {orc:{}};
            return messageInstance;
        }
        "MFN_M09_MF_TEST_CATEGORICAL" => {
            MFN_M09_MF_TEST_CATEGORICAL messageInstance = {om1:{}, mfe:{}};
            return messageInstance;
        }
        "OMS_O05_PATIENT_VISIT" => {
            OMS_O05_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "SRR_S01_SERVICE" => {
            SRR_S01_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "RSP_Z82_OBSERVATION" => {
            RSP_Z82_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "OML_O33_TIMING_PRIOR" => {
            OML_O33_TIMING_PRIOR messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQA_I08_PROVIDER" => {
            RQA_I08_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "REF_I12_PATIENT_VISIT" => {
            REF_I12_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RRG_O16_GIVE" => {
            RRG_O16_GIVE messageInstance = {rxg:{}};
            return messageInstance;
        }
        "RDE_O11_OBSERVATION" => {
            RDE_O11_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z82_VISIT" => {
            RSP_Z82_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RGV_O15_TIMING" => {
            RGV_O15_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "SQM_S25_LOCATION_RESOURCE" => {
            SQM_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "PPG_PCG_GOAL_OBSERVATION" => {
            PPG_PCG_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMG_O19_ORDER_PRIOR" => {
            OMG_O19_ORDER_PRIOR messageInstance = {obr:{}};
            return messageInstance;
        }
        "DFT_P11_COMMON_ORDER" => {
            DFT_P11_COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "OML_O21_PATIENT_VISIT" => {
            OML_O21_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "EAC_U07_SPECIMEN_CONTAINER" => {
            EAC_U07_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "EHC_E01_PATIENT_INFO" => {
            EHC_E01_PATIENT_INFO messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL_ROLE" => {
            PPR_PC1_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RSP_E22_AUTHORIZATION_INFO" => {
            RSP_E22_AUTHORIZATION_INFO messageInstance = {psg:{}, ivc:{}};
            return messageInstance;
        }
        "OUL_R23_PATIENT" => {
            OUL_R23_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM" => {
            PPR_PC1_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "OPL_O37_PRIOR_RESULT" => {
            OPL_O37_PRIOR_RESULT messageInstance = {};
            return messageInstance;
        }
        "OUL_R22_VISIT" => {
            OUL_R22_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORL_O34_RESPONSE" => {
            ORL_O34_RESPONSE messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORL_O36_RESPONSE" => {
            ORL_O36_RESPONSE messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R23_VISIT" => {
            OUL_R23_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PRR_PC5_CHOICE" => {
            PRR_PC5_CHOICE messageInstance = {};
            return messageInstance;
        }
        "RGR_RGR_PATIENT" => {
            RGR_RGR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_PROCEDURE" => {
            DFT_P11_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "MFN_M16_STERILIZATION" => {
            MFN_M16_STERILIZATION messageInstance = {stz:{}};
            return messageInstance;
        }
        "ORL_O36_SPECIMEN" => {
            ORL_O36_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "MFN_M01_MF" => {
            MFN_M01_MF messageInstance = {mfe:{}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponentPart2(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart2(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "EHC_E01_DIAGNOSIS" => {
            EHC_E01_DIAGNOSIS messageInstance = {dg1:{}};
            return messageInstance;
        }
        "RRA_O18_PATIENT" => {
            RRA_O18_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RRI_I12_PATIENT_VISIT" => {
            RRI_I12_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPT_PCL_ORDER" => {
            PPT_PCL_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "SRM_S01_PERSONNEL_RESOURCE" => {
            SRM_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "RSP_Z86_GIVE" => {
            RSP_Z86_GIVE messageInstance = {rxg:{}};
            return messageInstance;
        }
        "PPG_PCG_GOAL_ROLE" => {
            PPG_PCG_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORM_O01_ORDER_DETAIL" => {
            ORM_O01_ORDER_DETAIL messageInstance = {orm_o01_choice:{}};
            return messageInstance;
        }
        "MFN_M11_MF_TEST_CALCULATED" => {
            MFN_M11_MF_TEST_CALCULATED messageInstance = {om1:{}, mfe:{}};
            return messageInstance;
        }
        "PEX_P07_STUDY" => {
            PEX_P07_STUDY messageInstance = {csr:{}};
            return messageInstance;
        }
        "BTS_O31_ORDER" => {
            BTS_O31_ORDER messageInstance = {bpo:{}, orc:{}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM_ROLE" => {
            PPV_PCA_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL" => {
            PGL_PC6_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL_OBSERVATION" => {
            PPR_PC1_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "MFN_M07_MF_CLIN_STUDY_SCHED" => {
            MFN_M07_MF_CLIN_STUDY_SCHED messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "RDS_O13_ENCODING" => {
            RDS_O13_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "SRR_S01_PERSONNEL_RESOURCE" => {
            SRR_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "ORM_O01_PATIENT_VISIT" => {
            ORM_O01_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ROR_ROR_DEFINITION" => {
            ROR_ROR_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "RRG_O16_TIMING_GIVE" => {
            RRG_O16_TIMING_GIVE messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM_ROLE" => {
            PPT_PCL_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORD_O04_RESPONSE" => {
            ORD_O04_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PRR_PC5_GOAL_OBSERVATION" => {
            PRR_PC5_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EHC_E13_REQUEST" => {
            EHC_E13_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "OUL_R22_TIMING_QTY" => {
            OUL_R22_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQA_I08_PROCEDURE" => {
            RQA_I08_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RDE_O11_PATIENT" => {
            RDE_O11_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ADT_A05_PROCEDURE" => {
            ADT_A05_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "ADT_A60_VISIT" => {
            ADT_A60_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "TCU_U10_TEST_CONFIGURATION" => {
            TCU_U10_TEST_CONFIGURATION messageInstance = {};
            return messageInstance;
        }
        "ORL_O22_RESPONSE" => {
            ORL_O22_RESPONSE messageInstance = {pid:{}};
            return messageInstance;
        }
        "VXR_V03_PATIENT_VISIT" => {
            VXR_V03_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "SRM_S01_PATIENT" => {
            SRM_S01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BRT_O32_RESPONSE" => {
            BRT_O32_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RSP_Z86_TIMING_ENCODED" => {
            RSP_Z86_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ROR_ROR_PATIENT" => {
            ROR_ROR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OML_O33_PATIENT" => {
            OML_O33_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "EHC_E04_PRODUCT_SERVICE_GROUP" => {
            EHC_E04_PRODUCT_SERVICE_GROUP messageInstance = {psg:{}};
            return messageInstance;
        }
        "PEX_P07_NK1_TIMING_QTY" => {
            PEX_P07_NK1_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RDS_O13_ORDER_DETAIL" => {
            RDS_O13_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "RGV_O15_COMPONENTS" => {
            RGV_O15_COMPONENTS messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RPA_I08_PROCEDURE" => {
            RPA_I08_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RSP_Z82_QUERY_RESPONSE" => {
            RSP_Z82_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RSP_Z82_COMMON_ORDER" => {
            RSP_Z82_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "RQA_I08_AUTHORIZATION" => {
            RQA_I08_AUTHORIZATION messageInstance = {aut:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER_OBSERVATION" => {
            PPV_PCA_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO" => {
            EHC_E10_INVOICE_PROCESSING_RESULTS_INFO messageInstance = {ivc:{}, ipr:{}, pye:{}, in1:{}};
            return messageInstance;
        }
        "SQR_S25_SERVICE" => {
            SQR_S25_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM" => {
            PPG_PCG_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "RSP_Z88_OBSERVATION" => {
            RSP_Z88_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "OML_O35_PRIOR_RESULT" => {
            OML_O35_PRIOR_RESULT messageInstance = {};
            return messageInstance;
        }
        "ADT_A06_INSURANCE" => {
            ADT_A06_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OPU_R25_ORDER" => {
            OPU_R25_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "OML_O21_TIMING_PRIOR" => {
            OML_O21_TIMING_PRIOR messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RAR_RAR_ENCODING" => {
            RAR_RAR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "OMI_O23_PATIENT" => {
            OMI_O23_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORS_O06_TIMING" => {
            ORS_O06_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RCI_I05_OBSERVATION" => {
            RCI_I05_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "REF_I12_RESULTS_NOTES" => {
            REF_I12_RESULTS_NOTES messageInstance = {obx:{}};
            return messageInstance;
        }
        "PPV_PCA_CHOICE" => {
            PPV_PCA_CHOICE messageInstance = {};
            return messageInstance;
        }
        "REF_I12_PROVIDER_CONTACT" => {
            REF_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
            return messageInstance;
        }
        "OML_O21_OBSERVATION_PRIOR" => {
            OML_O21_OBSERVATION_PRIOR messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z88_VISIT" => {
            RSP_Z88_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORS_O06_ORDER" => {
            ORS_O06_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO" => {
            EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO messageInstance = {ivc:{}, ipr:{}};
            return messageInstance;
        }
        "SRM_S01_LOCATION_RESOURCE" => {
            SRM_S01_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RRI_I12_PROVIDER_CONTACT" => {
            RRI_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
            return messageInstance;
        }
        "MFN_M03_MF_TEST" => {
            MFN_M03_MF_TEST messageInstance = {om1:{}, anyhl7segment:{}, mfe:{}};
            return messageInstance;
        }
        "OMG_O19_CONTAINER" => {
            OMG_O19_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_ROLE" => {
            PRR_PC5_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PRR_PC5_PATIENT" => {
            PRR_PC5_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RDE_O11_INSURANCE" => {
            RDE_O11_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "DFT_P03_OBSERVATION" => {
            DFT_P03_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMG_O19_SPECIMEN" => {
            OMG_O19_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "OPR_O38_OBSERVATION_REQUEST" => {
            OPR_O38_OBSERVATION_REQUEST messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "NMD_N02_CLOCK_AND_STATS_WITH_NOTES" => {
            NMD_N02_CLOCK_AND_STATS_WITH_NOTES messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_PATHWAY" => {
            PGL_PC6_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "ORI_O24_PATIENT" => {
            ORI_O24_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORN_O08_TIMING" => {
            ORN_O08_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OMG_O19_PATIENT" => {
            OMG_O19_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "REF_I12_INSURANCE" => {
            REF_I12_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RGR_RGR_ORDER" => {
            RGR_RGR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PEX_P07_EXPERIENCE" => {
            PEX_P07_EXPERIENCE messageInstance = {pes:{}};
            return messageInstance;
        }
        "OPU_R25_SPECIMEN_OBSERVATION" => {
            OPU_R25_SPECIMEN_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORB_O28_ORDER" => {
            ORB_O28_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "OUL_R23_TIMING_QTY" => {
            OUL_R23_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPP_PCB_GOAL_ROLE" => {
            PPP_PCB_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "MFN_M16_PACKAGING" => {
            MFN_M16_PACKAGING messageInstance = {pkg:{}};
            return messageInstance;
        }
        "PEX_P07_RX_ORDER" => {
            PEX_P07_RX_ORDER messageInstance = {rxe:{}};
            return messageInstance;
        }
        "RSP_K31_ORDER" => {
            RSP_K31_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "OML_O33_PRIOR_RESULT" => {
            OML_O33_PRIOR_RESULT messageInstance = {};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL_COMMON_ORDER" => {
            DFT_P03_FINANCIAL_COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "EHC_E20_DIAGNOSIS" => {
            EHC_E20_DIAGNOSIS messageInstance = {dg1:{}};
            return messageInstance;
        }
        "OML_O35_OBSERVATION" => {
            OML_O35_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RQC_I05_PROVIDER" => {
            RQC_I05_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RQP_I04_PROVIDER" => {
            RQP_I04_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RCI_I05_PROVIDER" => {
            RCI_I05_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "MFN_M06_MF_PHASE_SCHED_DETAIL" => {
            MFN_M06_MF_PHASE_SCHED_DETAIL messageInstance = {cm1:{}};
            return messageInstance;
        }
        "PTR_PCF_PATHWAY" => {
            PTR_PCF_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "OMD_O03_PATIENT_VISIT" => {
            OMD_O03_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPP_PCB_ORDER_OBSERVATION" => {
            PPP_PCB_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMN_O07_PATIENT" => {
            OMN_O07_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OML_O33_PATIENT_PRIOR" => {
            OML_O33_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPP_PCB_PATHWAY_ROLE" => {
            PPP_PCB_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "MFR_M04_MF_QUERY" => {
            MFR_M04_MF_QUERY messageInstance = {mfe:{}, cdm:{}};
            return messageInstance;
        }
        "RSP_Z86_COMMON_ORDER" => {
            RSP_Z86_COMMON_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "ORN_O08_RESPONSE" => {
            ORN_O08_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL_ORDER" => {
            DFT_P03_FINANCIAL_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "PPG_PCG_ORDER_OBSERVATION" => {
            PPG_PCG_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OUL_R24_PATIENT" => {
            OUL_R24_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "SIU_S12_LOCATION_RESOURCE" => {
            SIU_S12_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "PPP_PCB_ORDER" => {
            PPP_PCB_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "ORU_R01_SPECIMEN" => {
            ORU_R01_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "RRE_O12_RESPONSE" => {
            RRE_O12_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OMP_O09_INSURANCE" => {
            OMP_O09_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "BAR_P01_PROCEDURE" => {
            BAR_P01_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "MFN_M04_MF_CDM" => {
            MFN_M04_MF_CDM messageInstance = {mfe:{}, cdm:{}};
            return messageInstance;
        }
        "MFN_Znn_MF_SITE_DEFINED" => {
            MFN_Znn_MF_SITE_DEFINED messageInstance = {anyhl7segment:{}, mfe:{}};
            return messageInstance;
        }
        "PPG_PCG_ORDER_DETAIL" => {
            PPG_PCG_ORDER_DETAIL messageInstance = {ppg_pcg_choice:{}};
            return messageInstance;
        }
        "QVR_Q17_QBP" => {
            QVR_Q17_QBP messageInstance = {};
            return messageInstance;
        }
        "SUR_P09_FACILITY" => {
            SUR_P09_FACILITY messageInstance = {psh:{}, fac:{}, ed:{}};
            return messageInstance;
        }
        "RSP_K31_PATIENT_VISIT" => {
            RSP_K31_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORP_O10_TIMING" => {
            ORP_O10_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OML_O21_OBSERVATION_REQUEST" => {
            OML_O21_OBSERVATION_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "MFN_M08_MF_TEST_NUMERIC" => {
            MFN_M08_MF_TEST_NUMERIC messageInstance = {om1:{}, mfe:{}};
            return messageInstance;
        }
        "BAR_P06_PATIENT" => {
            BAR_P06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R21_PATIENT" => {
            OUL_R21_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MFR_M06_MF_QUERY" => {
            MFR_M06_MF_QUERY messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "CSU_C09_PATIENT" => {
            CSU_C09_PATIENT messageInstance = {csr:{}, pid:{}};
            return messageInstance;
        }
        "OMD_O03_TIMING_DIET" => {
            OMD_O03_TIMING_DIET messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RAS_O17_TIMING_ENCODED" => {
            RAS_O17_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RGV_O15_ORDER_DETAIL" => {
            RGV_O15_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "RRD_O14_PATIENT" => {
            RRD_O14_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Z88_ORDER_DETAIL" => {
            RSP_Z88_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_OBSERVATION" => {
            CSU_C09_STUDY_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RSP_Z90_QUERY_RESPONSE" => {
            RSP_Z90_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "EHC_E15_PRODUCT_SERVICE_SECTION" => {
            EHC_E15_PRODUCT_SERVICE_SECTION messageInstance = {pss:{}};
            return messageInstance;
        }
        "RAS_O17_PATIENT" => {
            RAS_O17_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM_OBSERVATION" => {
            PTR_PCF_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RDS_O13_TIMING" => {
            RDS_O13_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PTR_PCF_PATHWAY_ROLE" => {
            PTR_PCF_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RDR_RDR_PATIENT" => {
            RDR_RDR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PMU_B07_CERTIFICATE" => {
            PMU_B07_CERTIFICATE messageInstance = {cer:{}};
            return messageInstance;
        }
        "EHC_E15_PSL_ITEM_INFO" => {
            EHC_E15_PSL_ITEM_INFO messageInstance = {psl:{}};
            return messageInstance;
        }
        "RSP_K25_STAFF" => {
            RSP_K25_STAFF messageInstance = {stf:{}};
            return messageInstance;
        }
        "RSP_K31_TIMING_ENCODED" => {
            RSP_K31_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RSP_Z82_TIMING" => {
            RSP_Z82_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PEX_P07_TIMING_QTY" => {
            PEX_P07_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PTR_PCF_GOAL_OBSERVATION" => {
            PTR_PCF_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL" => {
            PRR_PC5_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "RSP_Z82_TIMING_ENCODED" => {
            RSP_Z82_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OML_O33_TIMING" => {
            OML_O33_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PEX_P07_PEX_CAUSE" => {
            PEX_P07_PEX_CAUSE messageInstance = {pcr:{}};
            return messageInstance;
        }
        "CRM_C01_PATIENT" => {
            CRM_C01_PATIENT messageInstance = {csr:{}, pid:{}};
            return messageInstance;
        }
        "PPV_PCA_GOAL" => {
            PPV_PCA_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "RSP_K21_QUERY_RESPONSE" => {
            RSP_K21_QUERY_RESPONSE messageInstance = {qri:{}, pid:{}};
            return messageInstance;
        }
        "RGV_O15_PATIENT_VISIT" => {
            RGV_O15_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "SIU_S12_PATIENT" => {
            SIU_S12_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "QBP_E22_QUERY" => {
            QBP_E22_QUERY messageInstance = {};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_TIMING_QUANTITY" => {
            DFT_P11_FINANCIAL_TIMING_QUANTITY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL" => {
            DFT_P11_FINANCIAL messageInstance = {ft1:{}};
            return messageInstance;
        }
        "DFT_P03_ORDER" => {
            DFT_P03_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "RDS_O13_COMPONENT" => {
            RDS_O13_COMPONENT messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RER_RER_PATIENT" => {
            RER_RER_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORL_O34_TIMING" => {
            ORL_O34_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "MDM_T02_COMMON_ORDER" => {
            MDM_T02_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "OML_O33_INSURANCE" => {
            OML_O33_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "MFN_M15_MF_INV_ITEM" => {
            MFN_M15_MF_INV_ITEM messageInstance = {iim:{}, mfe:{}};
            return messageInstance;
        }
        "RRA_O18_TIMING" => {
            RRA_O18_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM" => {
            PGL_PC6_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "ADT_A16_PROCEDURE" => {
            ADT_A16_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "MFR_M05_MF_QUERY" => {
            MFR_M05_MF_QUERY messageInstance = {loc:{}, mfe:{}};
            return messageInstance;
        }
        "RQI_I01_PROVIDER" => {
            RQI_I01_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RQA_I08_RESULTS" => {
            RQA_I08_RESULTS messageInstance = {obx:{}};
            return messageInstance;
        }
        "RGV_O15_ORDER_DETAIL_SUPPLEMENT" => {
            RGV_O15_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "SSU_U03_SPECIMEN_CONTAINER" => {
            SSU_U03_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "NMQ_N01_QRY_WITH_DETAIL" => {
            NMQ_N01_QRY_WITH_DETAIL messageInstance = {qrd:{}};
            return messageInstance;
        }
        "ORG_O20_ORDER" => {
            ORG_O20_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "ORM_O01_CHOICE" => {
            ORM_O01_CHOICE messageInstance = {};
            return messageInstance;
        }
        "EHC_E01_INVOICE_INFORMATION" => {
            EHC_E01_INVOICE_INFORMATION messageInstance = {};
            return messageInstance;
        }
        "SQR_S25_PATIENT" => {
            SQR_S25_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "VXU_V04_PATIENT" => {
            VXU_V04_PATIENT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RDS_O13_ORDER" => {
            RDS_O13_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "RSP_E03_INVOICE_PROCESSING_RESULTS_INFO" => {
            RSP_E03_INVOICE_PROCESSING_RESULTS_INFO messageInstance = {ipr:{}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_RX_ADMIN" => {
            PEX_P07_ASSOCIATED_RX_ADMIN messageInstance = {rxa:{}};
            return messageInstance;
        }
        "RSP_Z88_TIMING" => {
            RSP_Z88_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORB_O28_TIMING" => {
            ORB_O28_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "MFN_M09_MF_TEST_CAT_DETAIL" => {
            MFN_M09_MF_TEST_CAT_DETAIL messageInstance = {om3:{}};
            return messageInstance;
        }
        "OPU_R25_RESULT" => {
            OPU_R25_RESULT messageInstance = {obx:{}};
            return messageInstance;
        }
        "ADT_A43_PATIENT" => {
            ADT_A43_PATIENT messageInstance = {mrg:{}, pid:{}};
            return messageInstance;
        }
        "ORU_R30_VISIT" => {
            ORU_R30_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponentPart3(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart3(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "OML_O35_TIMING" => {
            OML_O35_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQI_I01_INSURANCE" => {
            RQI_I01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "VXU_V04_OBSERVATION" => {
            VXU_V04_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z82_PATIENT" => {
            RSP_Z82_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R23_ORDER" => {
            OUL_R23_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "BTS_O31_PATIENT" => {
            BTS_O31_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MDM_T01_TIMING" => {
            MDM_T01_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RSP_K31_PATIENT" => {
            RSP_K31_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RPI_I04_GUARANTOR_INSURANCE" => {
            RPI_I04_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "MFN_M11_MF_TEST_CALC_DETAIL" => {
            MFN_M11_MF_TEST_CALC_DETAIL messageInstance = {om2:{}, om6:{}};
            return messageInstance;
        }
        "EHC_E02_PRODUCT_SERVICE_SECTION" => {
            EHC_E02_PRODUCT_SERVICE_SECTION messageInstance = {pss:{}};
            return messageInstance;
        }
        "VXR_V03_TIMING" => {
            VXR_V03_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "BRP_O30_ORDER" => {
            BRP_O30_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "NMD_N02_APP_STATUS" => {
            NMD_N02_APP_STATUS messageInstance = {nsc:{}};
            return messageInstance;
        }
        "PPP_PCB_CHOICE" => {
            PPP_PCB_CHOICE messageInstance = {};
            return messageInstance;
        }
        "OUL_R24_ORDER" => {
            OUL_R24_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "OPL_O37_ORDER" => {
            OPL_O37_ORDER messageInstance = {};
            return messageInstance;
        }
        "VXR_V03_INSURANCE" => {
            VXR_V03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMP_O09_PATIENT_VISIT" => {
            OMP_O09_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORL_O36_TIMING" => {
            ORL_O36_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORP_O10_ORDER_DETAIL" => {
            ORP_O10_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "OMD_O03_PATIENT" => {
            OMD_O03_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORD_O04_TIMING_TRAY" => {
            ORD_O04_TIMING_TRAY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQA_I08_OBSERVATION" => {
            RQA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "OMB_O27_TIMING" => {
            OMB_O27_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OMN_O07_ORDER" => {
            OMN_O07_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_PRIOR" => {
            OML_O35_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPG_PCG_PATHWAY" => {
            PPG_PCG_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "ORF_R04_ORDER" => {
            ORF_R04_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL" => {
            PPT_PCL_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "MFN_M06_MF_CLIN_STUDY" => {
            MFN_M06_MF_CLIN_STUDY messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "EAR_U08_SPECIMEN_CONTAINER" => {
            EAR_U08_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "EHC_E24_AUTHORIZATION_RESPONSE_INFO" => {
            EHC_E24_AUTHORIZATION_RESPONSE_INFO messageInstance = {};
            return messageInstance;
        }
        "DOC_T12_RESULT" => {
            DOC_T12_RESULT messageInstance = {pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "RSP_Z86_PATIENT" => {
            RSP_Z86_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "SIU_S12_SERVICE" => {
            SIU_S12_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "ADT_A39_PATIENT" => {
            ADT_A39_PATIENT messageInstance = {mrg:{}, pid:{}};
            return messageInstance;
        }
        "OMS_O05_OBSERVATION" => {
            OMS_O05_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRA_O18_RESPONSE" => {
            RRA_O18_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OML_O35_SPECIMEN" => {
            OML_O35_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "SRM_S01_SERVICE" => {
            SRM_S01_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "RSP_Z86_TIMING" => {
            RSP_Z86_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "SSU_U03_SPECIMEN" => {
            SSU_U03_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "SQR_S25_GENERAL_RESOURCE" => {
            SQR_S25_GENERAL_RESOURCE messageInstance = {aig:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_OBSERVATION" => {
            PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EHC_E12_REQUEST" => {
            EHC_E12_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "RAS_O17_ORDER_DETAIL_SUPPLEMENT" => {
            RAS_O17_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "ADT_A03_INSURANCE" => {
            ADT_A03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMP_O09_TIMING" => {
            OMP_O09_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RRD_O14_DISPENSE" => {
            RRD_O14_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "RSP_Z86_OBSERVATION" => {
            RSP_Z86_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "EHC_E24_PAYER_ADJUSTMENT" => {
            EHC_E24_PAYER_ADJUSTMENT messageInstance = {adj:{}};
            return messageInstance;
        }
        "BAR_P01_INSURANCE" => {
            BAR_P01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMS_O05_TIMING" => {
            OMS_O05_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_ROLE" => {
            PPT_PCL_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RPA_I08_VISIT" => {
            RPA_I08_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OML_O21_ORDER_PRIOR" => {
            OML_O21_ORDER_PRIOR messageInstance = {obr:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_VISIT_PRIOR" => {
            OML_O35_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "DFT_P03_COMMON_ORDER" => {
            DFT_P03_COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "NMR_N01_APP_STATS" => {
            NMR_N01_APP_STATS messageInstance = {nst:{}};
            return messageInstance;
        }
        "PPP_PCB_GOAL_OBSERVATION" => {
            PPP_PCB_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRI_I12_AUTHORIZATION_CONTACT" => {
            RRI_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
            return messageInstance;
        }
        "ORI_O24_ORDER" => {
            ORI_O24_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "EHC_E01_PRODUCT_SERVICE_LINE_ITEM" => {
            EHC_E01_PRODUCT_SERVICE_LINE_ITEM messageInstance = {psl:{}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_ROLE" => {
            PPP_PCB_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORL_O22_SPECIMEN" => {
            ORL_O22_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "EHC_E21_PSL_ITEM_INFO" => {
            EHC_E21_PSL_ITEM_INFO messageInstance = {psl:{}};
            return messageInstance;
        }
        "ORU_R30_TIMING_QTY" => {
            ORU_R30_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_OBSERVATION" => {
            PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMD_O03_TIMING_TRAY" => {
            OMD_O03_TIMING_TRAY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "EAN_U09_NOTIFICATION" => {
            EAN_U09_NOTIFICATION messageInstance = {nds:{}};
            return messageInstance;
        }
        "RAS_O17_COMPONENTS" => {
            RAS_O17_COMPONENTS messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RTB_K13_ROW_DEFINITION" => {
            RTB_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "ADT_A45_MERGE_INFO" => {
            ADT_A45_MERGE_INFO messageInstance = {mrg:{}, pv1:{}};
            return messageInstance;
        }
        "OML_O21_PATIENT_PRIOR" => {
            OML_O21_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "SDR_S32_ANTIMICROBIAL_DEVICE_CYCLE_DATA" => {
            SDR_S32_ANTIMICROBIAL_DEVICE_CYCLE_DATA messageInstance = {};
            return messageInstance;
        }
        "RDE_O11_COMPONENT" => {
            RDE_O11_COMPONENT messageInstance = {rxc:{}};
            return messageInstance;
        }
        "PTR_PCF_ORDER_DETAIL" => {
            PTR_PCF_ORDER_DETAIL messageInstance = {ptr_pcf_choice:{}};
            return messageInstance;
        }
        "OMG_O19_PATIENT_VISIT_PRIOR" => {
            OMG_O19_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RSP_K31_ENCODING" => {
            RSP_K31_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_PERSON" => {
            PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1:{}};
            return messageInstance;
        }
        "RRD_O14_ORDER" => {
            RRD_O14_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RSP_K11_ROW_DEFINITION" => {
            RSP_K11_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "RSP_E03_QUERY_ACK" => {
            RSP_E03_QUERY_ACK messageInstance = {};
            return messageInstance;
        }
        "OPU_R25_SPECIMEN" => {
            OPU_R25_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "ORS_O06_RESPONSE" => {
            ORS_O06_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RDR_RDR_ORDER" => {
            RDR_RDR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL" => {
            PPR_PC1_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "MFR_M01_MF_QUERY" => {
            MFR_M01_MF_QUERY messageInstance = {mfe:{}};
            return messageInstance;
        }
        "MFN_M17_MF_DRG" => {
            MFN_M17_MF_DRG messageInstance = {dmi:{}, mfe:{}};
            return messageInstance;
        }
        "OMD_O03_ORDER_TRAY" => {
            OMD_O03_ORDER_TRAY messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_OBSERVATION" => {
            PPP_PCB_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORB_O28_PATIENT" => {
            ORB_O28_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "EHC_E21_AUTHORIZATION_REQUEST" => {
            EHC_E21_AUTHORIZATION_REQUEST messageInstance = {};
            return messageInstance;
        }
        "RDE_O11_ORDER" => {
            RDE_O11_ORDER messageInstance = {orc:{}, rxe:{}};
            return messageInstance;
        }
        "EHC_E20_AUTHORIZATION_REQUEST" => {
            EHC_E20_AUTHORIZATION_REQUEST messageInstance = {};
            return messageInstance;
        }
        "DFT_P11_VISIT" => {
            DFT_P11_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT" => {
            OML_O35_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BPS_O29_PATIENT" => {
            BPS_O29_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RPI_I01_GUARANTOR_INSURANCE" => {
            RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "RDR_RDR_DISPENSE" => {
            RDR_RDR_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "SRM_S01_RESOURCES" => {
            SRM_S01_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_OBSERVATION" => {
            PPT_PCL_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PTR_PCF_PATIENT" => {
            PTR_PCF_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R23_RESULT" => {
            OUL_R23_RESULT messageInstance = {obx:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_OBSERVATION" => {
            PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "SQR_S25_LOCATION_RESOURCE" => {
            SQR_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RSP_Z90_TIMING" => {
            RSP_Z90_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ROR_ROR_ORDER" => {
            ROR_ROR_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "OPR_O38_SPECIMEN" => {
            OPR_O38_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "NMQ_N01_CLOCK_AND_STATISTICS" => {
            NMQ_N01_CLOCK_AND_STATISTICS messageInstance = {};
            return messageInstance;
        }
        "OSR_Q06_PATIENT" => {
            OSR_Q06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "CSU_C09_TIMING_QTY" => {
            CSU_C09_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER" => {
            PPV_PCA_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RPI_I04_PROVIDER" => {
            RPI_I04_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "OUL_R22_RESULT" => {
            OUL_R22_RESULT messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORG_O20_SPECIMEN" => {
            ORG_O20_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "RSP_K31_RESPONSE" => {
            RSP_K31_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PRR_PC5_ORDER_DETAIL" => {
            PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_choice:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL_ROLE" => {
            PGL_PC6_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PPG_PCG_PATIENT_VISIT" => {
            PPG_PCG_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OMN_O07_OBSERVATION" => {
            OMN_O07_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORL_O34_ORDER" => {
            ORL_O34_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_VISIT" => {
            OML_O35_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "BAR_P12_PROCEDURE" => {
            BAR_P12_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OPL_O37_SPECIMEN" => {
            OPL_O37_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "RRG_O16_PATIENT" => {
            RRG_O16_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RAR_RAR_ORDER" => {
            RAR_RAR_ORDER messageInstance = {orc:{}, rxr:{}};
            return messageInstance;
        }
        "OUL_R21_CONTAINER" => {
            OUL_R21_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "ORU_R30_OBSERVATION" => {
            ORU_R30_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ADR_A19_PROCEDURE" => {
            ADR_A19_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OPU_R25_PATIENT_OBSERVATION" => {
            OPU_R25_PATIENT_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "BAR_P05_INSURANCE" => {
            BAR_P05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "MFN_M05_MF_LOC_DEPT" => {
            MFN_M05_MF_LOC_DEPT messageInstance = {ldp:{}};
            return messageInstance;
        }
        "PPR_PC1_ORDER_OBSERVATION" => {
            PPR_PC1_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RCL_I06_PROVIDER" => {
            RCL_I06_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "OPL_O37_OBSERVATION_REQUEST" => {
            OPL_O37_OBSERVATION_REQUEST messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "EHC_E20_PAT_INFO" => {
            EHC_E20_PAT_INFO messageInstance = {pid:{}};
            return messageInstance;
        }
        "OML_O33_PATIENT_VISIT_PRIOR" => {
            OML_O33_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OUL_R24_VISIT" => {
            OUL_R24_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPG_PCG_GOAL" => {
            PPG_PCG_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "OMI_O23_ORDER" => {
            OMI_O23_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_ROLE" => {
            PGL_PC6_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORM_O01_ORDER" => {
            ORM_O01_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "BRP_O30_TIMING" => {
            BRP_O30_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "REF_I12_OBSERVATION" => {
            REF_I12_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RGV_O15_TIMING_ENCODED" => {
            RGV_O15_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORL_O34_SPECIMEN" => {
            ORL_O34_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "MDM_T02_OBSERVATION" => {
            MDM_T02_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OML_O21_INSURANCE" => {
            OML_O21_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RAS_O17_ENCODING" => {
            RAS_O17_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "OSR_Q06_ORDER" => {
            OSR_Q06_ORDER messageInstance = {orc:{}, osr_q06_choice:{}};
            return messageInstance;
        }
        "RSP_Z88_COMMON_ORDER" => {
            RSP_Z88_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "MFN_M16_MATERIAL_ITEM_RECORD" => {
            MFN_M16_MATERIAL_ITEM_RECORD messageInstance = {itm:{}, mfe:{}};
            return messageInstance;
        }
        "ORM_O01_OBSERVATION" => {
            ORM_O01_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "NMR_N01_CLOCK" => {
            NMR_N01_CLOCK messageInstance = {nck:{}};
            return messageInstance;
        }
        "OMD_O03_ORDER_DIET" => {
            OMD_O03_ORDER_DIET messageInstance = {orc:{}};
            return messageInstance;
        }
        "SRR_S01_RESOURCES" => {
            SRR_S01_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY" => {
            PPT_PCL_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "RAS_O17_ADMINISTRATION" => {
            RAS_O17_ADMINISTRATION messageInstance = {rxr:{}};
            return messageInstance;
        }
        "RSP_E22_QUERY_ACK" => {
            RSP_E22_QUERY_ACK messageInstance = {};
            return messageInstance;
        }
        "ORU_R01_PATIENT" => {
            ORU_R01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OMP_O09_ORDER" => {
            OMP_O09_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "RAR_RAR_DEFINITION" => {
            RAR_RAR_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "RSP_Z86_ENCODED_ORDER" => {
            RSP_Z86_ENCODED_ORDER messageInstance = {rxe:{}};
            return messageInstance;
        }
        "RRI_I12_OBSERVATION" => {
            RRI_I12_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "BAR_P05_PROCEDURE" => {
            BAR_P05_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RRA_O18_ADMINISTRATION" => {
            RRA_O18_ADMINISTRATION messageInstance = {rxr:{}};
            return messageInstance;
        }
        "PPG_PCG_CHOICE" => {
            PPG_PCG_CHOICE messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_CHOICE" => {
            PGL_PC6_CHOICE messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_ORDER_DETAIL" => {
            PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_choice:{}};
            return messageInstance;
        }
        "ORP_O10_PATIENT" => {
            ORP_O10_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BTS_O31_TIMING" => {
            BTS_O31_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RDE_O11_PATIENT_VISIT" => {
            RDE_O11_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORU_R01_PATIENT_RESULT" => {
            ORU_R01_PATIENT_RESULT messageInstance = {};
            return messageInstance;
        }
        "RSP_K31_COMPONENTS" => {
            RSP_K31_COMPONENTS messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RRI_I12_RESULTS_NOTES" => {
            RRI_I12_RESULTS_NOTES messageInstance = {obx:{}};
            return messageInstance;
        }
        "SQR_S25_SCHEDULE" => {
            SQR_S25_SCHEDULE messageInstance = {sch:{}};
            return messageInstance;
        }
        "RDS_O13_PATIENT_VISIT" => {
            RDS_O13_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RSP_Z86_DISPENSE" => {
            RSP_Z86_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "ORG_O20_TIMING" => {
            ORG_O20_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RSP_Z90_VISIT" => {
            RSP_Z90_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPT_PCL_CHOICE" => {
            PPT_PCL_CHOICE messageInstance = {};
            return messageInstance;
        }
        "EHC_E15_ADJUSTMENT_PAYEE" => {
            EHC_E15_ADJUSTMENT_PAYEE messageInstance = {adj:{}};
            return messageInstance;
        }
        "OML_O35_SPECIMEN_CONTAINER" => {
            OML_O35_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "OUL_R24_SPECIMEN" => {
            OUL_R24_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "VXX_V02_PATIENT" => {
            VXX_V02_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY_ROLE" => {
            PPT_PCL_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "OMD_O03_INSURANCE" => {
            OMD_O03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "SQR_S25_PERSONNEL_RESOURCE" => {
            SQR_S25_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "ORR_O02_ORDER" => {
            ORR_O02_ORDER messageInstance = {orc:{}, orr_o02_choice:{}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponentPart4(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart4(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "OML_O35_TIMING" => {
            OML_O35_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQI_I01_INSURANCE" => {
            RQI_I01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "VXU_V04_OBSERVATION" => {
            VXU_V04_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z82_PATIENT" => {
            RSP_Z82_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R23_ORDER" => {
            OUL_R23_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "BTS_O31_PATIENT" => {
            BTS_O31_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MDM_T01_TIMING" => {
            MDM_T01_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RSP_K31_PATIENT" => {
            RSP_K31_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RPI_I04_GUARANTOR_INSURANCE" => {
            RPI_I04_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "MFN_M11_MF_TEST_CALC_DETAIL" => {
            MFN_M11_MF_TEST_CALC_DETAIL messageInstance = {om2:{}, om6:{}};
            return messageInstance;
        }
        "EHC_E02_PRODUCT_SERVICE_SECTION" => {
            EHC_E02_PRODUCT_SERVICE_SECTION messageInstance = {pss:{}};
            return messageInstance;
        }
        "VXR_V03_TIMING" => {
            VXR_V03_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "BRP_O30_ORDER" => {
            BRP_O30_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "NMD_N02_APP_STATUS" => {
            NMD_N02_APP_STATUS messageInstance = {nsc:{}};
            return messageInstance;
        }
        "PPP_PCB_CHOICE" => {
            PPP_PCB_CHOICE messageInstance = {};
            return messageInstance;
        }
        "OUL_R24_ORDER" => {
            OUL_R24_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "OPL_O37_ORDER" => {
            OPL_O37_ORDER messageInstance = {};
            return messageInstance;
        }
        "VXR_V03_INSURANCE" => {
            VXR_V03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMP_O09_PATIENT_VISIT" => {
            OMP_O09_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORL_O36_TIMING" => {
            ORL_O36_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORP_O10_ORDER_DETAIL" => {
            ORP_O10_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "OMD_O03_PATIENT" => {
            OMD_O03_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORD_O04_TIMING_TRAY" => {
            ORD_O04_TIMING_TRAY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RQA_I08_OBSERVATION" => {
            RQA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "OMB_O27_TIMING" => {
            OMB_O27_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "OMN_O07_ORDER" => {
            OMN_O07_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_PRIOR" => {
            OML_O35_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPG_PCG_PATHWAY" => {
            PPG_PCG_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "ORF_R04_ORDER" => {
            ORF_R04_ORDER messageInstance = {obr:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL" => {
            PPT_PCL_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "MFN_M06_MF_CLIN_STUDY" => {
            MFN_M06_MF_CLIN_STUDY messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "EAR_U08_SPECIMEN_CONTAINER" => {
            EAR_U08_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "EHC_E24_AUTHORIZATION_RESPONSE_INFO" => {
            EHC_E24_AUTHORIZATION_RESPONSE_INFO messageInstance = {};
            return messageInstance;
        }
        "DOC_T12_RESULT" => {
            DOC_T12_RESULT messageInstance = {pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "RSP_Z86_PATIENT" => {
            RSP_Z86_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "SIU_S12_SERVICE" => {
            SIU_S12_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "ADT_A39_PATIENT" => {
            ADT_A39_PATIENT messageInstance = {mrg:{}, pid:{}};
            return messageInstance;
        }
        "OMS_O05_OBSERVATION" => {
            OMS_O05_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRA_O18_RESPONSE" => {
            RRA_O18_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OML_O35_SPECIMEN" => {
            OML_O35_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "SRM_S01_SERVICE" => {
            SRM_S01_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "RSP_Z86_TIMING" => {
            RSP_Z86_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "SSU_U03_SPECIMEN" => {
            SSU_U03_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "SQR_S25_GENERAL_RESOURCE" => {
            SQR_S25_GENERAL_RESOURCE messageInstance = {aig:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_OBSERVATION" => {
            PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EHC_E12_REQUEST" => {
            EHC_E12_REQUEST messageInstance = {obr:{}};
            return messageInstance;
        }
        "RAS_O17_ORDER_DETAIL_SUPPLEMENT" => {
            RAS_O17_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "ADT_A03_INSURANCE" => {
            ADT_A03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMP_O09_TIMING" => {
            OMP_O09_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RRD_O14_DISPENSE" => {
            RRD_O14_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "RSP_Z86_OBSERVATION" => {
            RSP_Z86_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "EHC_E24_PAYER_ADJUSTMENT" => {
            EHC_E24_PAYER_ADJUSTMENT messageInstance = {adj:{}};
            return messageInstance;
        }
        "BAR_P01_INSURANCE" => {
            BAR_P01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMS_O05_TIMING" => {
            OMS_O05_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_ROLE" => {
            PPT_PCL_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RPA_I08_VISIT" => {
            RPA_I08_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OML_O21_ORDER_PRIOR" => {
            OML_O21_ORDER_PRIOR messageInstance = {obr:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_VISIT_PRIOR" => {
            OML_O35_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "DFT_P03_COMMON_ORDER" => {
            DFT_P03_COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "NMR_N01_APP_STATS" => {
            NMR_N01_APP_STATS messageInstance = {nst:{}};
            return messageInstance;
        }
        "PPP_PCB_GOAL_OBSERVATION" => {
            PPP_PCB_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRI_I12_AUTHORIZATION_CONTACT" => {
            RRI_I12_AUTHORIZATION_CONTACT messageInstance = {aut:{}};
            return messageInstance;
        }
        "ORI_O24_ORDER" => {
            ORI_O24_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "EHC_E01_PRODUCT_SERVICE_LINE_ITEM" => {
            EHC_E01_PRODUCT_SERVICE_LINE_ITEM messageInstance = {psl:{}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_ROLE" => {
            PPP_PCB_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORL_O22_SPECIMEN" => {
            ORL_O22_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "EHC_E21_PSL_ITEM_INFO" => {
            EHC_E21_PSL_ITEM_INFO messageInstance = {psl:{}};
            return messageInstance;
        }
        "ORU_R30_TIMING_QTY" => {
            ORU_R30_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_OBSERVATION" => {
            PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMD_O03_TIMING_TRAY" => {
            OMD_O03_TIMING_TRAY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "EAN_U09_NOTIFICATION" => {
            EAN_U09_NOTIFICATION messageInstance = {nds:{}};
            return messageInstance;
        }
        "RAS_O17_COMPONENTS" => {
            RAS_O17_COMPONENTS messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RTB_K13_ROW_DEFINITION" => {
            RTB_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "ADT_A45_MERGE_INFO" => {
            ADT_A45_MERGE_INFO messageInstance = {mrg:{}, pv1:{}};
            return messageInstance;
        }
        "OML_O21_PATIENT_PRIOR" => {
            OML_O21_PATIENT_PRIOR messageInstance = {pid:{}};
            return messageInstance;
        }
        "SDR_S32_ANTIMICROBIAL_DEVICE_CYCLE_DATA" => {
            SDR_S32_ANTIMICROBIAL_DEVICE_CYCLE_DATA messageInstance = {};
            return messageInstance;
        }
        "RDE_O11_COMPONENT" => {
            RDE_O11_COMPONENT messageInstance = {rxc:{}};
            return messageInstance;
        }
        "PTR_PCF_ORDER_DETAIL" => {
            PTR_PCF_ORDER_DETAIL messageInstance = {ptr_pcf_choice:{}};
            return messageInstance;
        }
        "OMG_O19_PATIENT_VISIT_PRIOR" => {
            OMG_O19_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RSP_K31_ENCODING" => {
            RSP_K31_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_PERSON" => {
            PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1:{}};
            return messageInstance;
        }
        "RRD_O14_ORDER" => {
            RRD_O14_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RSP_K11_ROW_DEFINITION" => {
            RSP_K11_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "RSP_E03_QUERY_ACK" => {
            RSP_E03_QUERY_ACK messageInstance = {};
            return messageInstance;
        }
        "OPU_R25_SPECIMEN" => {
            OPU_R25_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "ORS_O06_RESPONSE" => {
            ORS_O06_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RDR_RDR_ORDER" => {
            RDR_RDR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL" => {
            PPR_PC1_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "MFR_M01_MF_QUERY" => {
            MFR_M01_MF_QUERY messageInstance = {mfe:{}};
            return messageInstance;
        }
        "MFN_M17_MF_DRG" => {
            MFN_M17_MF_DRG messageInstance = {dmi:{}, mfe:{}};
            return messageInstance;
        }
        "OMD_O03_ORDER_TRAY" => {
            OMD_O03_ORDER_TRAY messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_OBSERVATION" => {
            PPP_PCB_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORB_O28_PATIENT" => {
            ORB_O28_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "EHC_E21_AUTHORIZATION_REQUEST" => {
            EHC_E21_AUTHORIZATION_REQUEST messageInstance = {};
            return messageInstance;
        }
        "RDE_O11_ORDER" => {
            RDE_O11_ORDER messageInstance = {orc:{}, rxe:{}};
            return messageInstance;
        }
        "EHC_E20_AUTHORIZATION_REQUEST" => {
            EHC_E20_AUTHORIZATION_REQUEST messageInstance = {};
            return messageInstance;
        }
        "DFT_P11_VISIT" => {
            DFT_P11_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT" => {
            OML_O35_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BPS_O29_PATIENT" => {
            BPS_O29_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RPI_I01_GUARANTOR_INSURANCE" => {
            RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "RDR_RDR_DISPENSE" => {
            RDR_RDR_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "SRM_S01_RESOURCES" => {
            SRM_S01_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_OBSERVATION" => {
            PPT_PCL_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "PTR_PCF_PATIENT" => {
            PTR_PCF_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R23_RESULT" => {
            OUL_R23_RESULT messageInstance = {obx:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_OBSERVATION" => {
            PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "SQR_S25_LOCATION_RESOURCE" => {
            SQR_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RSP_Z90_TIMING" => {
            RSP_Z90_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ROR_ROR_ORDER" => {
            ROR_ROR_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "OPR_O38_SPECIMEN" => {
            OPR_O38_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "NMQ_N01_CLOCK_AND_STATISTICS" => {
            NMQ_N01_CLOCK_AND_STATISTICS messageInstance = {};
            return messageInstance;
        }
        "OSR_Q06_PATIENT" => {
            OSR_Q06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "CSU_C09_TIMING_QTY" => {
            CSU_C09_TIMING_QTY messageInstance = {tq1:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER" => {
            PPV_PCA_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RPI_I04_PROVIDER" => {
            RPI_I04_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "OUL_R22_RESULT" => {
            OUL_R22_RESULT messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORG_O20_SPECIMEN" => {
            ORG_O20_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "RSP_K31_RESPONSE" => {
            RSP_K31_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PRR_PC5_ORDER_DETAIL" => {
            PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_choice:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL_ROLE" => {
            PGL_PC6_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PPG_PCG_PATIENT_VISIT" => {
            PPG_PCG_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OMN_O07_OBSERVATION" => {
            OMN_O07_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORL_O34_ORDER" => {
            ORL_O34_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "OML_O35_PATIENT_VISIT" => {
            OML_O35_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "BAR_P12_PROCEDURE" => {
            BAR_P12_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OPL_O37_SPECIMEN" => {
            OPL_O37_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "RRG_O16_PATIENT" => {
            RRG_O16_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RAR_RAR_ORDER" => {
            RAR_RAR_ORDER messageInstance = {orc:{}, rxr:{}};
            return messageInstance;
        }
        "OUL_R21_CONTAINER" => {
            OUL_R21_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "ORU_R30_OBSERVATION" => {
            ORU_R30_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ADR_A19_PROCEDURE" => {
            ADR_A19_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OPU_R25_PATIENT_OBSERVATION" => {
            OPU_R25_PATIENT_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "BAR_P05_INSURANCE" => {
            BAR_P05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "MFN_M05_MF_LOC_DEPT" => {
            MFN_M05_MF_LOC_DEPT messageInstance = {ldp:{}};
            return messageInstance;
        }
        "PPR_PC1_ORDER_OBSERVATION" => {
            PPR_PC1_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RCL_I06_PROVIDER" => {
            RCL_I06_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "OPL_O37_OBSERVATION_REQUEST" => {
            OPL_O37_OBSERVATION_REQUEST messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "EHC_E20_PAT_INFO" => {
            EHC_E20_PAT_INFO messageInstance = {pid:{}};
            return messageInstance;
        }
        "OML_O33_PATIENT_VISIT_PRIOR" => {
            OML_O33_PATIENT_VISIT_PRIOR messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OUL_R24_VISIT" => {
            OUL_R24_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPG_PCG_GOAL" => {
            PPG_PCG_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "OMI_O23_ORDER" => {
            OMI_O23_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_ROLE" => {
            PGL_PC6_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ORM_O01_ORDER" => {
            ORM_O01_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "BRP_O30_TIMING" => {
            BRP_O30_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "REF_I12_OBSERVATION" => {
            REF_I12_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RGV_O15_TIMING_ENCODED" => {
            RGV_O15_TIMING_ENCODED messageInstance = {tq1:{}};
            return messageInstance;
        }
        "ORL_O34_SPECIMEN" => {
            ORL_O34_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "MDM_T02_OBSERVATION" => {
            MDM_T02_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OML_O21_INSURANCE" => {
            OML_O21_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RAS_O17_ENCODING" => {
            RAS_O17_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "OSR_Q06_ORDER" => {
            OSR_Q06_ORDER messageInstance = {orc:{}, osr_q06_choice:{}};
            return messageInstance;
        }
        "RSP_Z88_COMMON_ORDER" => {
            RSP_Z88_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "MFN_M16_MATERIAL_ITEM_RECORD" => {
            MFN_M16_MATERIAL_ITEM_RECORD messageInstance = {itm:{}, mfe:{}};
            return messageInstance;
        }
        "ORM_O01_OBSERVATION" => {
            ORM_O01_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "NMR_N01_CLOCK" => {
            NMR_N01_CLOCK messageInstance = {nck:{}};
            return messageInstance;
        }
        "OMD_O03_ORDER_DIET" => {
            OMD_O03_ORDER_DIET messageInstance = {orc:{}};
            return messageInstance;
        }
        "SRR_S01_RESOURCES" => {
            SRR_S01_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY" => {
            PPT_PCL_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "RAS_O17_ADMINISTRATION" => {
            RAS_O17_ADMINISTRATION messageInstance = {rxr:{}};
            return messageInstance;
        }
        "RSP_E22_QUERY_ACK" => {
            RSP_E22_QUERY_ACK messageInstance = {};
            return messageInstance;
        }
        "ORU_R01_PATIENT" => {
            ORU_R01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OMP_O09_ORDER" => {
            OMP_O09_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "RAR_RAR_DEFINITION" => {
            RAR_RAR_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "RSP_Z86_ENCODED_ORDER" => {
            RSP_Z86_ENCODED_ORDER messageInstance = {rxe:{}};
            return messageInstance;
        }
        "RRI_I12_OBSERVATION" => {
            RRI_I12_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "BAR_P05_PROCEDURE" => {
            BAR_P05_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RRA_O18_ADMINISTRATION" => {
            RRA_O18_ADMINISTRATION messageInstance = {rxr:{}};
            return messageInstance;
        }
        "PPG_PCG_CHOICE" => {
            PPG_PCG_CHOICE messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_CHOICE" => {
            PGL_PC6_CHOICE messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_ORDER_DETAIL" => {
            PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_choice:{}};
            return messageInstance;
        }
        "ORP_O10_PATIENT" => {
            ORP_O10_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BTS_O31_TIMING" => {
            BTS_O31_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RDE_O11_PATIENT_VISIT" => {
            RDE_O11_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ORU_R01_PATIENT_RESULT" => {
            ORU_R01_PATIENT_RESULT messageInstance = {};
            return messageInstance;
        }
        "RSP_K31_COMPONENTS" => {
            RSP_K31_COMPONENTS messageInstance = {rxc:{}};
            return messageInstance;
        }
        "RRI_I12_RESULTS_NOTES" => {
            RRI_I12_RESULTS_NOTES messageInstance = {obx:{}};
            return messageInstance;
        }
        "SQR_S25_SCHEDULE" => {
            SQR_S25_SCHEDULE messageInstance = {sch:{}};
            return messageInstance;
        }
        "RDS_O13_PATIENT_VISIT" => {
            RDS_O13_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "RSP_Z86_DISPENSE" => {
            RSP_Z86_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "ORG_O20_TIMING" => {
            ORG_O20_TIMING messageInstance = {tq1:{}};
            return messageInstance;
        }
        "RSP_Z90_VISIT" => {
            RSP_Z90_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPT_PCL_CHOICE" => {
            PPT_PCL_CHOICE messageInstance = {};
            return messageInstance;
        }
        "EHC_E15_ADJUSTMENT_PAYEE" => {
            EHC_E15_ADJUSTMENT_PAYEE messageInstance = {adj:{}};
            return messageInstance;
        }
        "OML_O35_SPECIMEN_CONTAINER" => {
            OML_O35_SPECIMEN_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "OUL_R24_SPECIMEN" => {
            OUL_R24_SPECIMEN messageInstance = {spm:{}};
            return messageInstance;
        }
        "VXX_V02_PATIENT" => {
            VXX_V02_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY_ROLE" => {
            PPT_PCL_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "OMD_O03_INSURANCE" => {
            OMD_O03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "SQR_S25_PERSONNEL_RESOURCE" => {
            SQR_S25_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "ORR_O02_ORDER" => {
            ORR_O02_ORDER messageInstance = {orc:{}, orr_o02_choice:{}};
            return messageInstance;
        }
        _ => {
            return ();
        }
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
    if (lastIndex < len - 1) {
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
    if (string:length(segmentStr) == 0) {
        return false;
    }

    string hl7ComponentDelemeter = "|";
    string segmentBody = string:substring(segmentStr, 3);

    // Compare each character with the first character
    foreach var char in segmentBody {
        if (char != hl7ComponentDelemeter) {
            return false;
        }
    }
    return true;
}
