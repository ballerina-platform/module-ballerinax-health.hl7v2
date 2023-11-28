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
        "SQM_S25" => {
            SQM_S25 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "DSR_Q03" => {
            DSR_Q03 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RDE_O11" => {
            RDE_O11 messageInstance = {msh:{}};
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
        "PPT_PCL" => {
            PPT_PCL messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "RDY_K15" => {
            RDY_K15 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "OMP_O09" => {
            OMP_O09 messageInstance = {msh:{}};
            return messageInstance;
        }
        "DSR_Q01" => {
            DSR_Q01 messageInstance = {msh:{}, msa:{}, qrd:{}};
            return messageInstance;
        }
        "UDM_Q05" => {
            UDM_Q05 messageInstance = {msh:{}, urd:{}};
            return messageInstance;
        }
        "ORS_O06" => {
            ORS_O06 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "ADT_A05" => {
            ADT_A05 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "EQQ_Q04" => {
            EQQ_Q04 messageInstance = {msh:{}, eql:{}};
            return messageInstance;
        }
        "ADT_A06" => {
            ADT_A06 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RSP_Z90" => {
            RSP_Z90 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
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
        "ROR_ROR" => {
            ROR_ROR messageInstance = {msh:{}, msa:{}};
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
        "CRM_C01" => {
            CRM_C01 messageInstance = {msh:{}};
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
        "SPQ_Q08" => {
            SPQ_Q08 messageInstance = {msh:{}, spr:{}};
            return messageInstance;
        }
        "SIU_S12" => {
            SIU_S12 messageInstance = {msh:{}, sch:{}};
            return messageInstance;
        }
        "OMG_O19" => {
            OMG_O19 messageInstance = {msh:{}};
            return messageInstance;
        }
        "RTB_Knn" => {
            RTB_Knn messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RRI_I12" => {
            RRI_I12 messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "QCN_J01" => {
            QCN_J01 messageInstance = {msh:{}, qid:{}};
            return messageInstance;
        }
        "ADT_A18" => {
            ADT_A18 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
            return messageInstance;
        }
        "RSP_Z82" => {
            RSP_Z82 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}};
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
        "ORU_R01" => {
            ORU_R01 messageInstance = {msh:{}};
            return messageInstance;
        }
        "PPG_PCG" => {
            PPG_PCG messageInstance = {msh:{}, pid:{}};
            return messageInstance;
        }
        "QCK_Q02" => {
            QCK_Q02 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "NMR_N01" => {
            NMR_N01 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "PTR_PCF" => {
            PTR_PCF messageInstance = {msh:{}, msa:{}, qrd:{}};
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
        "ADT_A15" => {
            ADT_A15 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}};
            return messageInstance;
        }
        "RSP_Z88" => {
            RSP_Z88 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}, rcp:{}, dsc:{}};
            return messageInstance;
        }
        "VXQ_V01" => {
            VXQ_V01 messageInstance = {msh:{}, qrd:{}};
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
        "RSP_K23" => {
            RSP_K23 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RSP_K24" => {
            RSP_K24 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "PPP_PCB" => {
            PPP_PCB messageInstance = {msh:{}, pid:{}};
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
        "RSP_K22" => {
            RSP_K22 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ERP_R09" => {
            ERP_R09 messageInstance = {msh:{}, msa:{}, qak:{}, erq:{}};
            return messageInstance;
        }
        "RTB_Q13" => {
            RTB_Q13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ORN_O08" => {
            ORN_O08 messageInstance = {msh:{}, msa:{}};
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
        "QBP_Q15" => {
            QBP_Q15 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "ORF_R04" => {
            ORF_R04 messageInstance = {msh:{}, msa:{}, qrd:{}};
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
        "SRM_S01" => {
            SRM_S01 messageInstance = {msh:{}, arq:{}};
            return messageInstance;
        }
        "RRD_O14" => {
            RRD_O14 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "TBR_R08" => {
            TBR_R08 messageInstance = {msh:{}, msa:{}, qak:{}, rdf:{}};
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
        "RSP_K13" => {
            RSP_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
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
        "RSP_K15" => {
            RSP_K15 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "RSP_K11" => {
            RSP_K11 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "MFQ_M01" => {
            MFQ_M01 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "QRY_Q01" => {
            QRY_Q01 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "QRY_Q02" => {
            QRY_Q02 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RDR_RDR" => {
            RDR_RDR messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QBP_Q21" => {
            QBP_Q21 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "VQQ_Q07" => {
            VQQ_Q07 messageInstance = {msh:{}, vtq:{}};
            return messageInstance;
        }
        "MFN_M07" => {
            MFN_M07 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "TCU_U10" => {
            TCU_U10 messageInstance = {msh:{}, equ:{}};
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
        "RQA_I08" => {
            RQA_I08 messageInstance = {msh:{}, pid:{}};
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
        "QVR_Q17" => {
            QVR_Q17 messageInstance = {msh:{}, qpd:{}, rcp:{}};
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
        "RER_RER" => {
            RER_RER messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "OSQ_Q06" => {
            OSQ_Q06 messageInstance = {msh:{}, qrd:{}};
            return messageInstance;
        }
        "RPA_I08" => {
            RPA_I08 messageInstance = {msh:{}, msa:{}, pid:{}};
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
        "QSB_Q16" => {
            QSB_Q16 messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "MDM_T01" => {
            MDM_T01 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "MDM_T02" => {
            MDM_T02 messageInstance = {msh:{}, evn:{}, pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "ADT_A50" => {
            ADT_A50 messageInstance = {msh:{}, evn:{}, pid:{}, mrg:{}, pv1:{}};
            return messageInstance;
        }
        "DFT_P11" => {
            DFT_P11 messageInstance = {msh:{}, evn:{}, pid:{}};
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
        "SUR_P09" => {
            SUR_P09 messageInstance = {msh:{}};
            return messageInstance;
        }
        "RGR_RGR" => {
            RGR_RGR messageInstance = {msh:{}, msa:{}};
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
        "ESU_U01" => {
            ESU_U01 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "QRY_R02" => {
            QRY_R02 messageInstance = {msh:{}, qrd:{}, qrf:{}};
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
        "SSR_U04" => {
            SSR_U04 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "RRG_O16" => {
            RRG_O16 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "QBP_K13" => {
            QBP_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "DFT_P03" => {
            DFT_P03 messageInstance = {msh:{}, evn:{}, pid:{}};
            return messageInstance;
        }
        "RCI_I05" => {
            RCI_I05 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "MFR_M01" => {
            MFR_M01 messageInstance = {msh:{}, msa:{}, qrd:{}, mfi:{}};
            return messageInstance;
        }
        "RTB_K13" => {
            RTB_K13 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "PMU_B01" => {
            PMU_B01 messageInstance = {msh:{}, evn:{}, stf:{}};
            return messageInstance;
        }
        "PMU_B04" => {
            PMU_B04 messageInstance = {msh:{}, evn:{}, stf:{}};
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
        "RPR_I03" => {
            RPR_I03 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RQQ_Q09" => {
            RQQ_Q09 messageInstance = {msh:{}, erq:{}};
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
        "VXR_V03" => {
            VXR_V03 messageInstance = {msh:{}, msa:{}, qrd:{}, pid:{}};
            return messageInstance;
        }
        "INR_U06" => {
            INR_U06 messageInstance = {msh:{}, equ:{}};
            return messageInstance;
        }
        "REF_I12" => {
            REF_I12 messageInstance = {msh:{}, pid:{}};
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
        "ORG_O20" => {
            ORG_O20 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "RTB_Z74" => {
            RTB_Z74 messageInstance = {msh:{}, msa:{}, qak:{}, qpd:{}};
            return messageInstance;
        }
        "ESR_U02" => {
            ESR_U02 messageInstance = {msh:{}, equ:{}};
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
        "MFN_M10" => {
            MFN_M10 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "MFN_M11" => {
            MFN_M11 messageInstance = {msh:{}, mfi:{}};
            return messageInstance;
        }
        "EDR_R07" => {
            EDR_R07 messageInstance = {msh:{}, msa:{}, qak:{}};
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
        "ACK_N02" => {
            ACK_N02 messageInstance = {msh:{}, msa:{}};
            return messageInstance;
        }
        "MFN_M12" => {
            MFN_M12 messageInstance = {msh:{}, mfi:{}};
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
        "OML_O21" => {
            OML_O21 messageInstance = {msh:{}};
            return messageInstance;
        }
        "ORD_O04" => {
            ORD_O04 messageInstance = {msh:{}, msa:{}};
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
        "LSU_U12" => {
            LSU_U12 messageInstance = {msh:{}, equ:{}};
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
        "RGV_O15" => {
            RGV_O15 messageInstance = {msh:{}};
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
        "QBP_Qnn" => {
            QBP_Qnn messageInstance = {msh:{}, qpd:{}, rcp:{}};
            return messageInstance;
        }
        "BAR_P05" => {
            BAR_P05 messageInstance = {msh:{}, evn:{}, pid:{}};
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
        "SRM_S01_SERVICE" => {
            SRM_S01_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "SQR_S25_GENERAL_RESOURCE" => {
            SQR_S25_GENERAL_RESOURCE messageInstance = {aig:{}};
            return messageInstance;
        }
        "RPA_I08_PROCEDURE" => {
            RPA_I08_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_OBSERVATION" => {
            PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z88_QUERY_RESPONSE" => {
            RSP_Z88_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RAS_O17_ORDER_DETAIL_SUPPLEMENT" => {
            RAS_O17_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "RRD_O14_DISPENSE" => {
            RRD_O14_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "PGL_PC6_ORDER_OBSERVATION" => {
            PGL_PC6_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z86_OBSERVATION" => {
            RSP_Z86_OBSERVATION messageInstance = {};
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
        "OML_O21_ORDER_GENERAL" => {
            OML_O21_ORDER_GENERAL messageInstance = {};
            return messageInstance;
        }
        "ORL_O22_PATIENT" => {
            ORL_O22_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PGL_PC6_PATIENT_VISIT" => {
            PGL_PC6_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "BAR_P01_INSURANCE" => {
            BAR_P01_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "BAR_P02_PATIENT" => {
            BAR_P02_PATIENT messageInstance = {pid:{}};
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
        "ORF_R04_PATIENT" => {
            ORF_R04_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "DFT_P03_COMMON_ORDER" => {
            DFT_P03_COMMON_ORDER messageInstance = {};
            return messageInstance;
        }
        "OMP_O09_PATIENT" => {
            OMP_O09_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL" => {
            DFT_P11_FINANCIAL messageInstance = {ft1:{}};
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
        "RRI_I12_PROCEDURE" => {
            RRI_I12_PROCEDURE messageInstance = {pr1:{}};
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
        "PPP_PCB_PROBLEM_ROLE" => {
            PPP_PCB_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "OMS_O05_INSURANCE" => {
            OMS_O05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_OBSERVATION" => {
            PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "EAN_U09_NOTIFICATION" => {
            EAN_U09_NOTIFICATION messageInstance = {nds:{}};
            return messageInstance;
        }
        "RAS_O17_COMPONENTS" => {
            RAS_O17_COMPONENTS messageInstance = {};
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
        "RPA_I08_PROVIDER" => {
            RPA_I08_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RTB_K13_ROW_DEFINITION" => {
            RTB_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "PEX_P07_VISIT" => {
            PEX_P07_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ADT_A05_INSURANCE" => {
            ADT_A05_INSURANCE messageInstance = {in1:{}};
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
        "RSP_Z90_PATIENT" => {
            RSP_Z90_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RAS_O17_OBSERVATION" => {
            RAS_O17_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RDE_O11_COMPONENT" => {
            RDE_O11_COMPONENT messageInstance = {};
            return messageInstance;
        }
        "RRD_O14_RESPONSE" => {
            RRD_O14_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "MFN_M05_MF_LOCATION" => {
            MFN_M05_MF_LOCATION messageInstance = {loc:{}, mfe:{}};
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
        "RGV_O15_PATIENT" => {
            RGV_O15_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RAS_O17_ORDER" => {
            RAS_O17_ORDER messageInstance = {orc:{}, rxr:{}};
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
        "PEX_P07_ASSOCIATED_PERSON" => {
            PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1:{}};
            return messageInstance;
        }
        "RRD_O14_ORDER" => {
            RRD_O14_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "ADR_A19_QUERY_RESPONSE" => {
            ADR_A19_QUERY_RESPONSE messageInstance = {pid:{}, pv1:{}};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM" => {
            PTR_PCF_PROBLEM messageInstance = {prb:{}};
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
        "RDR_RDR_ORDER" => {
            RDR_RDR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPT_PCL_PATIENT" => {
            PPT_PCL_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL" => {
            PPR_PC1_GOAL messageInstance = {gol:{}};
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
        "MFR_M01_MF_QUERY" => {
            MFR_M01_MF_QUERY messageInstance = {mfe:{}};
            return messageInstance;
        }
        "PPR_PC1_ORDER" => {
            PPR_PC1_ORDER messageInstance = {orc:{}};
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
        "PGL_PC6_ORDER_DETAIL" => {
            PGL_PC6_ORDER_DETAIL messageInstance = {pgl_pc6_obrrxo_suppgrp:{}};
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
        "ADT_A39_PATIENT" => {
            ADT_A39_PATIENT messageInstance = {mrg:{}, pid:{}};
            return messageInstance;
        }
        "RDE_O11_ORDER" => {
            RDE_O11_ORDER messageInstance = {orc:{}, rxe:{}};
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
        "PPG_PCG_PATHWAY_ROLE" => {
            PPG_PCG_PATHWAY_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RQA_I08_AUTHORIZATION" => {
            RQA_I08_AUTHORIZATION messageInstance = {aut:{}};
            return messageInstance;
        }
        "RPI_I01_GUARANTOR_INSURANCE" => {
            RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
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
        "RPA_I08_OBSERVATION" => {
            RPA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RDR_RDR_DISPENSE" => {
            RDR_RDR_DISPENSE messageInstance = {rxd:{}};
            return messageInstance;
        }
        "PEX_P07_EXPERIENCE" => {
            PEX_P07_EXPERIENCE messageInstance = {pes:{}};
            return messageInstance;
        }
        "SRM_S01_RESOURCES" => {
            SRM_S01_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "RTB_Q13_ROW_DEFINITION" => {
            RTB_Q13_ROW_DEFINITION messageInstance = {rdf:{}};
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
        "OMP_O09_COMPONENT" => {
            OMP_O09_COMPONENT messageInstance = {};
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
        "PRR_PC5_PROBLEM_OBSERVATION" => {
            PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "SQR_S25_LOCATION_RESOURCE" => {
            SQR_S25_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_ROLE" => {
            PPR_PC1_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "ROR_ROR_ORDER" => {
            ROR_ROR_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "NMQ_N01_CLOCK_AND_STATISTICS" => {
            NMQ_N01_CLOCK_AND_STATISTICS messageInstance = {};
            return messageInstance;
        }
        "RDR_RDR_DEFINITION" => {
            RDR_RDR_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "OSR_Q06_PATIENT" => {
            OSR_Q06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORD_O04_ORDER_TRAY" => {
            ORD_O04_ORDER_TRAY messageInstance = {orc:{}};
            return messageInstance;
        }
        "OML_O21_PATIENT" => {
            OML_O21_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER" => {
            PPV_PCA_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PPP_PCB_ORDER_DETAIL" => {
            PPP_PCB_ORDER_DETAIL messageInstance = {ppp_pcb_choice:{}};
            return messageInstance;
        }
        "RPI_I04_PROVIDER" => {
            RPI_I04_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "DFT_P11_COMMON_ORDER" => {
            DFT_P11_COMMON_ORDER messageInstance = {};
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
        "PRR_PC5_ORDER_DETAIL" => {
            PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_choice:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL_ROLE" => {
            PGL_PC6_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_ORDER" => {
            DFT_P11_FINANCIAL_ORDER messageInstance = {obr:{}};
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
        "QBP_Q13_QBP" => {
            QBP_Q13_QBP messageInstance = {};
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
        "SIU_S12_PATIENT" => {
            SIU_S12_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORD_O04_PATIENT" => {
            ORD_O04_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RGR_RGR_DEFINTION" => {
            RGR_RGR_DEFINTION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "RRG_O16_PATIENT" => {
            RRG_O16_PATIENT messageInstance = {pid:{}};
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
        _ => {
            return getSegmentComponentPart2(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart2(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "RAR_RAR_ORDER" => {
            RAR_RAR_ORDER messageInstance = {orc:{}, rxr:{}};
            return messageInstance;
        }
        "ORM_O01_PATIENT" => {
            ORM_O01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "OUL_R21_CONTAINER" => {
            OUL_R21_CONTAINER messageInstance = {sac:{}};
            return messageInstance;
        }
        "PRR_PC5_PATIENT" => {
            PRR_PC5_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ADR_A19_PROCEDURE" => {
            ADR_A19_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "BAR_P05_INSURANCE" => {
            BAR_P05_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "MFN_M01_MF" => {
            MFN_M01_MF messageInstance = {mfe:{}};
            return messageInstance;
        }
        "MFN_M05_MF_LOC_DEPT" => {
            MFN_M05_MF_LOC_DEPT messageInstance = {ldp:{}};
            return messageInstance;
        }
        "RER_RER_DEFINITION" => {
            RER_RER_DEFINITION messageInstance = {qrd:{}};
            return messageInstance;
        }
        "PPR_PC1_ORDER_OBSERVATION" => {
            PPR_PC1_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "BAR_P10_PROCEDURE" => {
            BAR_P10_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RCL_I06_PROVIDER" => {
            RCL_I06_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RPA_I08_INSURANCE" => {
            RPA_I08_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RSP_K13_ROW_DEFINITION" => {
            RSP_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "RQA_I08_PROCEDURE" => {
            RQA_I08_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "OML_O21_CONTAINER_1" => {
            OML_O21_CONTAINER_1 messageInstance = {sac:{}};
            return messageInstance;
        }
        "PPG_PCG_GOAL" => {
            PPG_PCG_GOAL messageInstance = {gol:{}};
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
        "RDE_O11_ORDER_DETAIL" => {
            RDE_O11_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "REF_I12_OBSERVATION" => {
            REF_I12_OBSERVATION messageInstance = {obr:{}};
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
        "OML_O21_INSURANCE" => {
            OML_O21_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RAS_O17_ENCODING" => {
            RAS_O17_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "VXU_V04_PATIENT" => {
            VXU_V04_PATIENT messageInstance = {pv1:{}};
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
        "OML_O21_CONTAINER_2" => {
            OML_O21_CONTAINER_2 messageInstance = {sac:{}};
            return messageInstance;
        }
        "SIU_S12_RESOURCES" => {
            SIU_S12_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "ORM_O01_OBSERVATION" => {
            ORM_O01_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OMG_O19_OBSERVATION" => {
            OMG_O19_OBSERVATION messageInstance = {obx:{}};
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
        "OMN_O07_INSURANCE" => {
            OMN_O07_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OUL_R21_VISIT" => {
            OUL_R21_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY" => {
            PPT_PCL_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "ADT_A43_PATIENT" => {
            ADT_A43_PATIENT messageInstance = {mrg:{}, pid:{}};
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
        "ORU_R01_PATIENT" => {
            ORU_R01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_ROLE" => {
            PRR_PC5_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "OMP_O09_ORDER" => {
            OMP_O09_ORDER messageInstance = {orc:{}, rxo:{}};
            return messageInstance;
        }
        "SUR_P09_FACILITY_DETAIL" => {
            SUR_P09_FACILITY_DETAIL messageInstance = {fac:{}, pdc:{}, nte:{}};
            return messageInstance;
        }
        "RQA_I08_PROVIDER" => {
            RQA_I08_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "RAR_RAR_DEFINITION" => {
            RAR_RAR_DEFINITION messageInstance = {qrd:{}};
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
        "RSP_Z86_ENCODED_ORDER" => {
            RSP_Z86_ENCODED_ORDER messageInstance = {rxe:{}};
            return messageInstance;
        }
        "ORL_O22_GENERAL_ORDER" => {
            ORL_O22_GENERAL_ORDER messageInstance = {};
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
        "REF_I12_PATIENT_VISIT" => {
            REF_I12_PATIENT_VISIT messageInstance = {pv1:{}};
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
        "RRA_O18_ADMINISTRATION" => {
            RRA_O18_ADMINISTRATION messageInstance = {rxr:{}};
            return messageInstance;
        }
        "ORR_O02_RESPONSE" => {
            ORR_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_ORDER_DETAIL" => {
            PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_choice:{}};
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
        "ORP_O10_PATIENT" => {
            ORP_O10_PATIENT messageInstance = {pid:{}};
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
        "ORL_O22_RESPONSE" => {
            ORL_O22_RESPONSE messageInstance = {};
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
        "PPG_PCG_PROBLEM_OBSERVATION" => {
            PPG_PCG_PROBLEM_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRI_I12_RESULTS_NOTES" => {
            RRI_I12_RESULTS_NOTES messageInstance = {obx:{}};
            return messageInstance;
        }
        "RQI_I01_PROVIDER" => {
            RQI_I01_PROVIDER messageInstance = {prd:{}};
            return messageInstance;
        }
        "DFT_P11_OBSERVATION" => {
            DFT_P11_OBSERVATION messageInstance = {obx:{}};
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
        "RSP_Z90_VISIT" => {
            RSP_Z90_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPT_PCL_CHOICE" => {
            PPT_PCL_CHOICE messageInstance = {};
            return messageInstance;
        }
        "RRA_O18_RESPONSE" => {
            RRA_O18_RESPONSE messageInstance = {};
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
        "RAS_O17_PATIENT" => {
            RAS_O17_PATIENT messageInstance = {pid:{}};
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
        "VXX_V02_PATIENT" => {
            VXX_V02_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "BAR_P06_PATIENT" => {
            BAR_P06_PATIENT messageInstance = {pid:{}};
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
            ORR_O02_ORDER messageInstance = {orc:{}, orr_o02_order_detail:{}};
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
        "MFN_M12_MF_OBS_ATTRIBUTES" => {
            MFN_M12_MF_OBS_ATTRIBUTES messageInstance = {om1:{}, mfe:{}};
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
        "SRR_S01_LOCATION_RESOURCE" => {
            SRR_S01_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RSP_Z82_OBSERVATION" => {
            RSP_Z82_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "CSU_C09_RX_ADMIN" => {
            CSU_C09_RX_ADMIN messageInstance = {rxa:{}, rxr:{}};
            return messageInstance;
        }
        "NMD_N02_APP_STATS" => {
            NMD_N02_APP_STATS messageInstance = {nst:{}};
            return messageInstance;
        }
        "OMS_O05_PATIENT" => {
            OMS_O05_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RRG_O16_GIVE" => {
            RRG_O16_GIVE messageInstance = {rxg:{}};
            return messageInstance;
        }
        "RSP_K22_QUERY_RESPONSE" => {
            RSP_K22_QUERY_RESPONSE messageInstance = {pid:{}};
            return messageInstance;
        }
        "RDE_O11_OBSERVATION" => {
            RDE_O11_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z82_VISIT" => {
            RSP_Z82_VISIT messageInstance = {};
            return messageInstance;
        }
        "RSP_K25_STAFF" => {
            RSP_K25_STAFF messageInstance = {stf:{}};
            return messageInstance;
        }
        "OMG_O19_PRIOR_RESULT" => {
            OMG_O19_PRIOR_RESULT messageInstance = {};
            return messageInstance;
        }
        "DOC_T12_RESULT" => {
            DOC_T12_RESULT messageInstance = {pid:{}, pv1:{}, txa:{}};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL" => {
            DFT_P03_FINANCIAL messageInstance = {ft1:{}};
            return messageInstance;
        }
        "ORL_O22_CONTAINER" => {
            ORL_O22_CONTAINER messageInstance = {sac:{}};
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
        "OML_O21_PATIENT_VISIT" => {
            OML_O21_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "OML_O21_OBSERVATION" => {
            OML_O21_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "ORP_O10_RESPONSE" => {
            ORP_O10_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_GOAL_ROLE" => {
            PPR_PC1_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM" => {
            PPR_PC1_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "PPT_PCL_ORDER_DETAIL" => {
            PPT_PCL_ORDER_DETAIL messageInstance = {ppt_pcl_choice:{}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM" => {
            PPV_PCA_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponentPart3(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart3(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "ORN_O08_RESPONSE" => {
            ORN_O08_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SQM_S25_SERVICE" => {
            SQM_S25_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "RQA_I08_GUARANTOR_INSURANCE" => {
            RQA_I08_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "VXU_V04_ORDER" => {
            VXU_V04_ORDER messageInstance = {rxa:{}};
            return messageInstance;
        }
        "PRR_PC5_CHOICE" => {
            PRR_PC5_CHOICE messageInstance = {};
            return messageInstance;
        }
        "RER_RER_ORDER" => {
            RER_RER_ORDER messageInstance = {orc:{}, rxe:{}};
            return messageInstance;
        }
        "OMS_O05_ORDER" => {
            OMS_O05_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "RGR_RGR_PATIENT" => {
            RGR_RGR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Z86_ORDER_DETAIL" => {
            RSP_Z86_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_PROCEDURE" => {
            DFT_P11_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "QBP_K13_ROW_DEFINITION" => {
            QBP_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "SQR_S25_RESOURCES" => {
            SQR_S25_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER_DETAIL" => {
            PPV_PCA_ORDER_DETAIL messageInstance = {ppv_pca_choice:{}};
            return messageInstance;
        }
        "RRA_O18_PATIENT" => {
            RRA_O18_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "VXR_V03_INSURANCE" => {
            VXR_V03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "ORF_R04_RESPONSE" => {
            ORF_R04_RESPONSE messageInstance = {};
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
        "ORU_R01_ORDER_OBSERVATION" => {
            ORU_R01_ORDER_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "SRM_S01_PERSONNEL_RESOURCE" => {
            SRM_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "RQA_I08_AUTCTD_SUPPGRP2" => {
            RQA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
            return messageInstance;
        }
        "SRR_S01_GENERAL_RESOURCE" => {
            SRR_S01_GENERAL_RESOURCE messageInstance = {aig:{}};
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
        "RRE_O12_RESPONSE" => {
            RRE_O12_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SIU_S12_GENERAL_RESOURCE" => {
            SIU_S12_GENERAL_RESOURCE messageInstance = {aig:{}};
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
        "OMG_O19_INSURANCE" => {
            OMG_O19_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMN_O07_PATIENT_VISIT" => {
            OMN_O07_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM_ROLE" => {
            PPV_PCA_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RSP_Z86_ADMINISTRATION" => {
            RSP_Z86_ADMINISTRATION messageInstance = {rxa:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL" => {
            PGL_PC6_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "EAR_U08_COMMAND_RESPONSE" => {
            EAR_U08_COMMAND_RESPONSE messageInstance = {ecr:{}, ecd:{}};
            return messageInstance;
        }
        "SQM_S25_REQUEST" => {
            SQM_S25_REQUEST messageInstance = {arq:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL_OBSERVATION" => {
            PPR_PC1_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRE_O12_ENCODING" => {
            RRE_O12_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "MFN_M07_MF_CLIN_STUDY_SCHED" => {
            MFN_M07_MF_CLIN_STUDY_SCHED messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "ADT_A01_PROCEDURE" => {
            ADT_A01_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PTR_PCF_CHOICE" => {
            PTR_PCF_CHOICE messageInstance = {};
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
        "RSP_Z88_PATIENT" => {
            RSP_Z88_PATIENT messageInstance = {pid:{}};
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
        "PPG_PCG_PROBLEM_ROLE" => {
            PPG_PCG_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_OBSERVATION" => {
            PRR_PC5_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RCI_I05_RESULTS" => {
            RCI_I05_RESULTS messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z88_ORDER_ENCODED" => {
            RSP_Z88_ORDER_ENCODED messageInstance = {rxe:{}};
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
        "VXR_V03_PATIENT_VISIT" => {
            VXR_V03_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ADR_A19_INSURANCE" => {
            ADR_A19_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "SRM_S01_PATIENT" => {
            SRM_S01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "NMQ_N01_QRY_WITH_DETAIL" => {
            NMQ_N01_QRY_WITH_DETAIL messageInstance = {qrd:{}};
            return messageInstance;
        }
        "ROR_ROR_PATIENT" => {
            ROR_ROR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORN_O08_ORDER" => {
            ORN_O08_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "RDR_RDR_ENCODING" => {
            RDR_RDR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "OMN_O07_PATIENT" => {
            OMN_O07_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MFN_M03_MF_TEST" => {
            MFN_M03_MF_TEST messageInstance = {om1:{}, anyhl7segment:{}, mfe:{}};
            return messageInstance;
        }
        "RPI_I04_INSURANCE" => {
            RPI_I04_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RDS_O13_ORDER_DETAIL" => {
            RDS_O13_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "RGV_O15_COMPONENTS" => {
            RGV_O15_COMPONENTS messageInstance = {};
            return messageInstance;
        }
        "RSP_Z82_COMMON_ORDER" => {
            RSP_Z82_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "RSP_Z82_QUERY_RESPONSE" => {
            RSP_Z82_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPV_PCA_ORDER_OBSERVATION" => {
            PPV_PCA_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "SUR_P09_FACILITY" => {
            SUR_P09_FACILITY messageInstance = {psh:{}, fac:{}};
            return messageInstance;
        }
        "ADT_A03_PROCEDURE" => {
            ADT_A03_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_PATHWAY" => {
            PRR_PC5_PROBLEM_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "SQR_S25_SERVICE" => {
            SQR_S25_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHASE" => {
            CSU_C09_STUDY_PHASE messageInstance = {};
            return messageInstance;
        }
        "RQA_I08_OBSERVATION" => {
            RQA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RRG_O16_RESPONSE" => {
            RRG_O16_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM" => {
            PPG_PCG_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHARM" => {
            CSU_C09_STUDY_PHARM messageInstance = {};
            return messageInstance;
        }
        "RSP_Z88_OBSERVATION" => {
            RSP_Z88_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "RSP_Z82_ORDER_DETAIL" => {
            RSP_Z82_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "ADT_A06_INSURANCE" => {
            ADT_A06_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PTR_PCF_GOAL_ROLE" => {
            PTR_PCF_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "VXR_V03_ORDER" => {
            VXR_V03_ORDER messageInstance = {rxa:{}};
            return messageInstance;
        }
        "RAR_RAR_ENCODING" => {
            RAR_RAR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL_PROCEDURE" => {
            DFT_P03_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RPA_I08_AUTCTD_SUPPGRP2" => {
            RPA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
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
        "ORG_O20_RESPONSE" => {
            ORG_O20_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OMD_O03_DIET" => {
            OMD_O03_DIET messageInstance = {};
            return messageInstance;
        }
        "RAR_RAR_PATIENT" => {
            RAR_RAR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORS_O06_PATIENT" => {
            ORS_O06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORU_R01_VISIT" => {
            ORU_R01_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "SRM_S01_LOCATION_RESOURCE" => {
            SRM_S01_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RSP_Z90_QUERY_RESPONSE" => {
            RSP_Z90_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RRI_I12_PROVIDER_CONTACT" => {
            RRI_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
            return messageInstance;
        }
        "MFN_M10_MF_TEST_BATT_DETAIL" => {
            MFN_M10_MF_TEST_BATT_DETAIL messageInstance = {om5:{}};
            return messageInstance;
        }
        "SRR_S01_SCHEDULE" => {
            SRR_S01_SCHEDULE messageInstance = {sch:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_ROLE" => {
            PRR_PC5_GOAL_ROLE messageInstance = {rol:{}};
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
        "NMD_N02_CLOCK_AND_STATS_WITH_NOTES" => {
            NMD_N02_CLOCK_AND_STATS_WITH_NOTES messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_PATHWAY" => {
            PGL_PC6_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "OMG_O19_ORDER" => {
            OMG_O19_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_SCHEDULE" => {
            CSU_C09_STUDY_SCHEDULE messageInstance = {};
            return messageInstance;
        }
        "OMG_O19_PATIENT" => {
            OMG_O19_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "CRM_C01_PATIENT" => {
            CRM_C01_PATIENT messageInstance = {csr:{}, pid:{}};
            return messageInstance;
        }
        "ORR_O02_ORDER_DETAIL" => {
            ORR_O02_ORDER_DETAIL messageInstance = {};
            return messageInstance;
        }
        "RSP_Z90_COMMON_ORDER" => {
            RSP_Z90_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "OMP_O09_OBSERVATION" => {
            OMP_O09_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "REF_I12_INSURANCE" => {
            REF_I12_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM" => {
            PPT_PCL_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "RGR_RGR_ORDER" => {
            RGR_RGR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PGL_PC6_OBSERVATION" => {
            PGL_PC6_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OUL_R21_PATIENT" => {
            OUL_R21_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RQA_I08_INSURANCE" => {
            RQA_I08_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PPG_PCG_ORDER" => {
            PPG_PCG_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RRI_I12_AUTCTD_SUPPGRP2" => {
            RRI_I12_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponentPart4(segmentComponentName);
        }
    }
}

isolated function getSegmentComponentPart4(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "ORN_O08_RESPONSE" => {
            ORN_O08_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SQM_S25_SERVICE" => {
            SQM_S25_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "RQA_I08_GUARANTOR_INSURANCE" => {
            RQA_I08_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "VXU_V04_ORDER" => {
            VXU_V04_ORDER messageInstance = {rxa:{}};
            return messageInstance;
        }
        "PRR_PC5_CHOICE" => {
            PRR_PC5_CHOICE messageInstance = {};
            return messageInstance;
        }
        "RER_RER_ORDER" => {
            RER_RER_ORDER messageInstance = {orc:{}, rxe:{}};
            return messageInstance;
        }
        "OMS_O05_ORDER" => {
            OMS_O05_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "RGR_RGR_PATIENT" => {
            RGR_RGR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RSP_Z86_ORDER_DETAIL" => {
            RSP_Z86_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "DFT_P11_FINANCIAL_PROCEDURE" => {
            DFT_P11_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "QBP_K13_ROW_DEFINITION" => {
            QBP_K13_ROW_DEFINITION messageInstance = {rdf:{}};
            return messageInstance;
        }
        "SQR_S25_RESOURCES" => {
            SQR_S25_RESOURCES messageInstance = {rgs:{}};
            return messageInstance;
        }
        "PPV_PCA_ORDER_DETAIL" => {
            PPV_PCA_ORDER_DETAIL messageInstance = {ppv_pca_choice:{}};
            return messageInstance;
        }
        "RRA_O18_PATIENT" => {
            RRA_O18_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "VXR_V03_INSURANCE" => {
            VXR_V03_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "ORF_R04_RESPONSE" => {
            ORF_R04_RESPONSE messageInstance = {};
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
        "ORU_R01_ORDER_OBSERVATION" => {
            ORU_R01_ORDER_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "SRM_S01_PERSONNEL_RESOURCE" => {
            SRM_S01_PERSONNEL_RESOURCE messageInstance = {aip:{}};
            return messageInstance;
        }
        "RQA_I08_AUTCTD_SUPPGRP2" => {
            RQA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
            return messageInstance;
        }
        "SRR_S01_GENERAL_RESOURCE" => {
            SRR_S01_GENERAL_RESOURCE messageInstance = {aig:{}};
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
        "RRE_O12_RESPONSE" => {
            RRE_O12_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SIU_S12_GENERAL_RESOURCE" => {
            SIU_S12_GENERAL_RESOURCE messageInstance = {aig:{}};
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
        "OMG_O19_INSURANCE" => {
            OMG_O19_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "OMN_O07_PATIENT_VISIT" => {
            OMN_O07_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM_ROLE" => {
            PPV_PCA_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "RSP_Z86_ADMINISTRATION" => {
            RSP_Z86_ADMINISTRATION messageInstance = {rxa:{}};
            return messageInstance;
        }
        "PGL_PC6_GOAL" => {
            PGL_PC6_GOAL messageInstance = {gol:{}};
            return messageInstance;
        }
        "EAR_U08_COMMAND_RESPONSE" => {
            EAR_U08_COMMAND_RESPONSE messageInstance = {ecr:{}, ecd:{}};
            return messageInstance;
        }
        "SQM_S25_REQUEST" => {
            SQM_S25_REQUEST messageInstance = {arq:{}};
            return messageInstance;
        }
        "PPR_PC1_GOAL_OBSERVATION" => {
            PPR_PC1_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RRE_O12_ENCODING" => {
            RRE_O12_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "MFN_M07_MF_CLIN_STUDY_SCHED" => {
            MFN_M07_MF_CLIN_STUDY_SCHED messageInstance = {cm0:{}, mfe:{}};
            return messageInstance;
        }
        "ADT_A01_PROCEDURE" => {
            ADT_A01_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PTR_PCF_CHOICE" => {
            PTR_PCF_CHOICE messageInstance = {};
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
        "RSP_Z88_PATIENT" => {
            RSP_Z88_PATIENT messageInstance = {pid:{}};
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
        "PPG_PCG_PROBLEM_ROLE" => {
            PPG_PCG_PROBLEM_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_OBSERVATION" => {
            PRR_PC5_GOAL_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "RCI_I05_RESULTS" => {
            RCI_I05_RESULTS messageInstance = {obx:{}};
            return messageInstance;
        }
        "RSP_Z88_ORDER_ENCODED" => {
            RSP_Z88_ORDER_ENCODED messageInstance = {rxe:{}};
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
        "VXR_V03_PATIENT_VISIT" => {
            VXR_V03_PATIENT_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "ADR_A19_INSURANCE" => {
            ADR_A19_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "SRM_S01_PATIENT" => {
            SRM_S01_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "NMQ_N01_QRY_WITH_DETAIL" => {
            NMQ_N01_QRY_WITH_DETAIL messageInstance = {qrd:{}};
            return messageInstance;
        }
        "ROR_ROR_PATIENT" => {
            ROR_ROR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORN_O08_ORDER" => {
            ORN_O08_ORDER messageInstance = {orc:{}, rqd:{}};
            return messageInstance;
        }
        "RDR_RDR_ENCODING" => {
            RDR_RDR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "OMN_O07_PATIENT" => {
            OMN_O07_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "MFN_M03_MF_TEST" => {
            MFN_M03_MF_TEST messageInstance = {om1:{}, anyhl7segment:{}, mfe:{}};
            return messageInstance;
        }
        "RPI_I04_INSURANCE" => {
            RPI_I04_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "RDS_O13_ORDER_DETAIL" => {
            RDS_O13_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "RGV_O15_COMPONENTS" => {
            RGV_O15_COMPONENTS messageInstance = {};
            return messageInstance;
        }
        "RSP_Z82_COMMON_ORDER" => {
            RSP_Z82_COMMON_ORDER messageInstance = {orc:{}, rxd:{}};
            return messageInstance;
        }
        "RSP_Z82_QUERY_RESPONSE" => {
            RSP_Z82_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPV_PCA_ORDER_OBSERVATION" => {
            PPV_PCA_ORDER_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "SUR_P09_FACILITY" => {
            SUR_P09_FACILITY messageInstance = {psh:{}, fac:{}};
            return messageInstance;
        }
        "ADT_A03_PROCEDURE" => {
            ADT_A03_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_PATHWAY" => {
            PRR_PC5_PROBLEM_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "SQR_S25_SERVICE" => {
            SQR_S25_SERVICE messageInstance = {ais:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHASE" => {
            CSU_C09_STUDY_PHASE messageInstance = {};
            return messageInstance;
        }
        "RQA_I08_OBSERVATION" => {
            RQA_I08_OBSERVATION messageInstance = {obr:{}};
            return messageInstance;
        }
        "RRG_O16_RESPONSE" => {
            RRG_O16_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM" => {
            PPG_PCG_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHARM" => {
            CSU_C09_STUDY_PHARM messageInstance = {};
            return messageInstance;
        }
        "RSP_Z88_OBSERVATION" => {
            RSP_Z88_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "RSP_Z82_ORDER_DETAIL" => {
            RSP_Z82_ORDER_DETAIL messageInstance = {rxo:{}};
            return messageInstance;
        }
        "ADT_A06_INSURANCE" => {
            ADT_A06_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PTR_PCF_GOAL_ROLE" => {
            PTR_PCF_GOAL_ROLE messageInstance = {rol:{}};
            return messageInstance;
        }
        "VXR_V03_ORDER" => {
            VXR_V03_ORDER messageInstance = {rxa:{}};
            return messageInstance;
        }
        "RAR_RAR_ENCODING" => {
            RAR_RAR_ENCODING messageInstance = {rxe:{}};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL_PROCEDURE" => {
            DFT_P03_FINANCIAL_PROCEDURE messageInstance = {pr1:{}};
            return messageInstance;
        }
        "RPA_I08_AUTCTD_SUPPGRP2" => {
            RPA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
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
        "ORG_O20_RESPONSE" => {
            ORG_O20_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OMD_O03_DIET" => {
            OMD_O03_DIET messageInstance = {};
            return messageInstance;
        }
        "RAR_RAR_PATIENT" => {
            RAR_RAR_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORS_O06_PATIENT" => {
            ORS_O06_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "ORU_R01_VISIT" => {
            ORU_R01_VISIT messageInstance = {pv1:{}};
            return messageInstance;
        }
        "SRM_S01_LOCATION_RESOURCE" => {
            SRM_S01_LOCATION_RESOURCE messageInstance = {ail:{}};
            return messageInstance;
        }
        "RSP_Z90_QUERY_RESPONSE" => {
            RSP_Z90_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RRI_I12_PROVIDER_CONTACT" => {
            RRI_I12_PROVIDER_CONTACT messageInstance = {prd:{}};
            return messageInstance;
        }
        "MFN_M10_MF_TEST_BATT_DETAIL" => {
            MFN_M10_MF_TEST_BATT_DETAIL messageInstance = {om5:{}};
            return messageInstance;
        }
        "SRR_S01_SCHEDULE" => {
            SRR_S01_SCHEDULE messageInstance = {sch:{}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_ROLE" => {
            PRR_PC5_GOAL_ROLE messageInstance = {rol:{}};
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
        "NMD_N02_CLOCK_AND_STATS_WITH_NOTES" => {
            NMD_N02_CLOCK_AND_STATS_WITH_NOTES messageInstance = {};
            return messageInstance;
        }
        "PGL_PC6_PATHWAY" => {
            PGL_PC6_PATHWAY messageInstance = {pth:{}};
            return messageInstance;
        }
        "OMG_O19_ORDER" => {
            OMG_O19_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "CSU_C09_STUDY_SCHEDULE" => {
            CSU_C09_STUDY_SCHEDULE messageInstance = {};
            return messageInstance;
        }
        "OMG_O19_PATIENT" => {
            OMG_O19_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "CRM_C01_PATIENT" => {
            CRM_C01_PATIENT messageInstance = {csr:{}, pid:{}};
            return messageInstance;
        }
        "ORR_O02_ORDER_DETAIL" => {
            ORR_O02_ORDER_DETAIL messageInstance = {};
            return messageInstance;
        }
        "RSP_Z90_COMMON_ORDER" => {
            RSP_Z90_COMMON_ORDER messageInstance = {orc:{}, obr:{}};
            return messageInstance;
        }
        "OMP_O09_OBSERVATION" => {
            OMP_O09_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "REF_I12_INSURANCE" => {
            REF_I12_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM" => {
            PPT_PCL_PROBLEM messageInstance = {prb:{}};
            return messageInstance;
        }
        "RGR_RGR_ORDER" => {
            RGR_RGR_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "PGL_PC6_OBSERVATION" => {
            PGL_PC6_OBSERVATION messageInstance = {obx:{}};
            return messageInstance;
        }
        "OUL_R21_PATIENT" => {
            OUL_R21_PATIENT messageInstance = {pid:{}};
            return messageInstance;
        }
        "RQA_I08_INSURANCE" => {
            RQA_I08_INSURANCE messageInstance = {in1:{}};
            return messageInstance;
        }
        "PPG_PCG_ORDER" => {
            PPG_PCG_ORDER messageInstance = {orc:{}};
            return messageInstance;
        }
        "RRI_I12_AUTCTD_SUPPGRP2" => {
            RRI_I12_AUTCTD_SUPPGRP2 messageInstance = {aut:{}};
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
