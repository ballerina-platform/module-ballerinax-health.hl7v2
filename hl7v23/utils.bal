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
public isolated function getSegment(string segmentName) returns hl7v2:Segment? {
    match segmentName {
        "APR" => {
            APR segmentInstance = {};
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
        "AIP" => {
            AIP segmentInstance = {};
            return segmentInstance;
        }
        "AIS" => {
            AIS segmentInstance = {};
            return segmentInstance;
        }
        "NST" => {
            NST segmentInstance = {};
            return segmentInstance;
        }
        "NCK" => {
            NCK segmentInstance = {};
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
        "PID" => {
            PID segmentInstance = {};
            return segmentInstance;
        }
        "PR1" => {
            PR1 segmentInstance = {};
            return segmentInstance;
        }
        "DB1" => {
            DB1 segmentInstance = {};
            return segmentInstance;
        }
        "DRG" => {
            DRG segmentInstance = {};
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
        "LCH" => {
            LCH segmentInstance = {};
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
        "ORC" => {
            ORC segmentInstance = {};
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
public isolated function getMessage(string messageName) returns hl7v2:Message? {
    match messageName {
        "SQM_S25" => {
            SQM_S25 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "DSR_Q03" => {
            DSR_Q03 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "PPT_PCL" => {
            PPT_PCL messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "DSR_Q01" => {
            DSR_Q01 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "EQQ_Q01" => {
            EQQ_Q01 messageInstance = {msh: {}, eql: {}};
            return messageInstance;
        }
        "UDM_Q05" => {
            UDM_Q05 messageInstance = {msh: {}, urd: {}};
            return messageInstance;
        }
        "ADT_A06" => {
            ADT_A06 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "ADT_A09" => {
            ADT_A09 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "ROR_ROR" => {
            ROR_ROR messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "PPR_PC1" => {
            PPR_PC1 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "OSR_Q06" => {
            OSR_Q06 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "QRY_A19" => {
            QRY_A19 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "CRM_C01" => {
            CRM_C01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPV_PCA" => {
            PPV_PCA messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "ADT_A03" => {
            ADT_A03 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "RQI_I01" => {
            RQI_I01 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "DOC_T12" => {
            DOC_T12 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "ADT_A01" => {
            ADT_A01 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "ADT_A02" => {
            ADT_A02 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "MFK_M01" => {
            MFK_M01 messageInstance = {msh: {}, msa: {}, mfi: {}};
            return messageInstance;
        }
        "MFK_M02" => {
            MFK_M02 messageInstance = {msh: {}, msa: {}, mfi: {}};
            return messageInstance;
        }
        "SIU_S12" => {
            SIU_S12 messageInstance = {msh: {}, sch: {}};
            return messageInstance;
        }
        "RRI_I12" => {
            RRI_I12 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "TBR_Q01" => {
            TBR_Q01 messageInstance = {msh: {}, msa: {}, qak: {}, rdf: {}};
            return messageInstance;
        }
        "SPQ_Q01" => {
            SPQ_Q01 messageInstance = {msh: {}, spr: {}};
            return messageInstance;
        }
        "ADT_A18" => {
            ADT_A18 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "VXU_V04" => {
            VXU_V04 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "ADT_A16" => {
            ADT_A16 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "ADT_A17" => {
            ADT_A17 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "RDS_O01" => {
            RDS_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQP_I04" => {
            RQP_I04 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "ORU_R01" => {
            ORU_R01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPG_PCG" => {
            PPG_PCG messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "QCK_Q02" => {
            QCK_Q02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "PTR_PCF" => {
            PTR_PCF messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "ADT_A12" => {
            ADT_A12 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "RRA_O02" => {
            RRA_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "RRD_O02" => {
            RRD_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "VXQ_V01" => {
            VXQ_V01 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "SQR_S25" => {
            SQR_S25 messageInstance = {msh: {}, msa: {}, qak: {}};
            return messageInstance;
        }
        "PPP_PCB" => {
            PPP_PCB messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "RRO_O02" => {
            RRO_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ARD_A19" => {
            ARD_A19 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "ORF_R04" => {
            ORF_R04 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "SRM_S01" => {
            SRM_S01 messageInstance = {msh: {}, arq: {}};
            return messageInstance;
        }
        "RCL_I06" => {
            RCL_I06 messageInstance = {msh: {}, msa: {}, qrd: {}, pid: {}};
            return messageInstance;
        }
        "RDE_O01" => {
            RDE_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ACK" => {
            ACK messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "VXX_V02" => {
            VXX_V02 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "SRR_S01" => {
            SRR_S01 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ORN_O02" => {
            ORN_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "QRY_Q01" => {
            QRY_Q01 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "QRY_Q02" => {
            QRY_Q02 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "RDR_RDR" => {
            RDR_RDR messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "VQQ_Q01" => {
            VQQ_Q01 messageInstance = {msh: {}, vtq: {}};
            return messageInstance;
        }
        "MFN_M07" => {
            MFN_M07 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "MFN_M08" => {
            MFN_M08 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "MFN_M05" => {
            MFN_M05 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "MFN_M06" => {
            MFN_M06 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "RQA_I08" => {
            RQA_I08 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "MFN_M09" => {
            MFN_M09 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "RPL_I02" => {
            RPL_I02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ORR_O02" => {
            ORR_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "MFN_M03" => {
            MFN_M03 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "MFN_M01" => {
            MFN_M01 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "CSU_C09" => {
            CSU_C09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFN_M02" => {
            MFN_M02 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "RER_RER" => {
            RER_RER messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "OSQ_Q06" => {
            OSQ_Q06 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "RPA_I08" => {
            RPA_I08 messageInstance = {msh: {}, msa: {}, pid: {}};
            return messageInstance;
        }
        "RRG_O02" => {
            RRG_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A43" => {
            ADT_A43 messageInstance = {msh: {}, evn: {}};
            return messageInstance;
        }
        "ERP_Q01" => {
            ERP_Q01 messageInstance = {msh: {}, msa: {}, qak: {}, erq: {}};
            return messageInstance;
        }
        "RAR_RAR" => {
            RAR_RAR messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A45" => {
            ADT_A45 messageInstance = {msh: {}, evn: {}, pid: {}};
            return messageInstance;
        }
        "MDM_T01" => {
            MDM_T01 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}, txa: {}};
            return messageInstance;
        }
        "MDM_T02" => {
            MDM_T02 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}, txa: {}};
            return messageInstance;
        }
        "EDR_Q01" => {
            EDR_Q01 messageInstance = {msh: {}, msa: {}, qak: {}};
            return messageInstance;
        }
        "ADT_A50" => {
            ADT_A50 messageInstance = {msh: {}, evn: {}, pid: {}, mrg: {}, pv1: {}};
            return messageInstance;
        }
        "OMS_O01" => {
            OMS_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "OMD_O01" => {
            OMD_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SUR_P09" => {
            SUR_P09 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RGR_RGR" => {
            RGR_RGR messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "PEX_P07" => {
            PEX_P07 messageInstance = {msh: {}, evn: {}, pid: {}};
            return messageInstance;
        }
        "RAS_O01" => {
            RAS_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_R02" => {
            QRY_R02 messageInstance = {msh: {}, qrd: {}, qrf: {}};
            return messageInstance;
        }
        "PIN_I07" => {
            PIN_I07 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "DFT_P03" => {
            DFT_P03 messageInstance = {msh: {}, evn: {}, pid: {}};
            return messageInstance;
        }
        "RCI_I05" => {
            RCI_I05 messageInstance = {msh: {}, msa: {}, qrd: {}, pid: {}};
            return messageInstance;
        }
        "QRY_T12" => {
            QRY_T12 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "VXR_V03" => {
            VXR_V03 messageInstance = {msh: {}, msa: {}, qrd: {}, pid: {}};
            return messageInstance;
        }
        "REF_I12" => {
            REF_I12 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "ADT_A20" => {
            ADT_A20 messageInstance = {msh: {}, evn: {}, npu: {}};
            return messageInstance;
        }
        "RQQ_Q01" => {
            RQQ_Q01 messageInstance = {msh: {}, erq: {}};
            return messageInstance;
        }
        "RGV_O01" => {
            RGV_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A24" => {
            ADT_A24 messageInstance = {msh: {}, evn: {}, pid: {}};
            return messageInstance;
        }
        "RQC_I05" => {
            RQC_I05 messageInstance = {msh: {}, qrd: {}, pid: {}};
            return messageInstance;
        }
        "RDO_O01" => {
            RDO_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "QRY_PC4" => {
            QRY_PC4 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "RPI_I01" => {
            RPI_I01 messageInstance = {msh: {}, msa: {}, pid: {}};
            return messageInstance;
        }
        "RQC_I06" => {
            RQC_I06 messageInstance = {msh: {}, qrd: {}, pid: {}};
            return messageInstance;
        }
        "MFN_M10" => {
            MFN_M10 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "MFN_M11" => {
            MFN_M11 messageInstance = {msh: {}, mfi: {}};
            return messageInstance;
        }
        "OMN_O01" => {
            OMN_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PGL_PC6" => {
            PGL_PC6 messageInstance = {msh: {}, pid: {}};
            return messageInstance;
        }
        "BAR_P02" => {
            BAR_P02 messageInstance = {msh: {}, evn: {}};
            return messageInstance;
        }
        "ADT_A38" => {
            ADT_A38 messageInstance = {msh: {}, evn: {}, pid: {}, pv1: {}};
            return messageInstance;
        }
        "BAR_P01" => {
            BAR_P01 messageInstance = {msh: {}, evn: {}, pid: {}};
            return messageInstance;
        }
        "ADT_A39" => {
            ADT_A39 messageInstance = {msh: {}, evn: {}};
            return messageInstance;
        }
        "ORD_O02" => {
            ORD_O02 messageInstance = {msh: {}, msa: {}};
            return messageInstance;
        }
        "ORM_O01" => {
            ORM_O01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A30" => {
            ADT_A30 messageInstance = {msh: {}, evn: {}, pid: {}, mrg: {}};
            return messageInstance;
        }
        "PRR_PC5" => {
            PRR_PC5 messageInstance = {msh: {}, msa: {}, qrd: {}};
            return messageInstance;
        }
        "BAR_P06" => {
            BAR_P06 messageInstance = {msh: {}, evn: {}};
            return messageInstance;
        }
        "CSU_C12" => {
            CSU_C12 messageInstance = {msh: {}};
            return messageInstance;
        }

        "RAS_O02" => {
            RAS_O02 messageInstance = {msh: {}};
            return messageInstance;
        }

        "MFR_M01" => {
            MFR_M01 messageInstance = {msh: {}, mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }

        "MFQ_M08" => {
            MFQ_M08 messageInstance = {msh: {}, qrd: {}};
            return messageInstance;
        }
        "QRY_Q26" => {
            QRY_Q26 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A07" => {
            ADT_A07 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "CRM_C08" => {
            CRM_C08 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFK_M11" => {
            MFK_M11 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "MFK_M07" => {
            MFK_M07 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A46" => {
            ADT_A46 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "PPG_PCJ" => {
            PPG_PCJ messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "ADT_A11" => {
            ADT_A11 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "QRY_Q30" => {
            QRY_Q30 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A31" => {
            ADT_A31 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "NMD_N02" => {
            NMD_N02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A27" => {
            ADT_A27 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "MFQ_M04" => {
            MFQ_M04 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "CRM_C04" => {
            CRM_C04 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SIU_S24" => {
            SIU_S24 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "RPA_I11" => {
            RPA_I11 messageInstance = {msh: {},pid: {}, msa: {}};
            return messageInstance;
        }
        "RPA_I10" => {
            RPA_I10 messageInstance = {msh: {},pid: {}, msa: {}};
            return messageInstance;
        }
        "PPP_PCC" => {
            PPP_PCC messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "QRY_PCK" => {
            QRY_PCK messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "CRM_C05" => {
            CRM_C05 messageInstance = {msh: {}};
            return messageInstance;
        }
        "MFQ_M05" => {
            MFQ_M05 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A26" => {
            ADT_A26 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "PGL_PC8" => {
            PGL_PC8 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "MFN_M04" => {
            MFN_M04 messageInstance = {msh: {},mfi: {}};
            return messageInstance;
        }
        "ADT_A10" => {
            ADT_A10 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "EDR_R07" => {
            EDR_R07 messageInstance = {msh: {},msa: {}, qak: {}};
            return messageInstance;
        }
        "MFK_M06" => {
            MFK_M06 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A47" => {
            ADT_A47 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "MFK_M10" => {
            MFK_M10 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A51" => {
            ADT_A51 messageInstance = {msh: {},mrg: {}, pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "QRY_Q27" => {
            QRY_Q27 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MFQ_M09" => {
            MFQ_M09 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "SIU_S13" => {
            SIU_S13 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "QRY_P04" => {
            QRY_P04 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "SIU_S18" => {
            SIU_S18 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "ADT_A37" => {
            ADT_A37 messageInstance = {msh: {},pid: {}, evn: {}};
            return messageInstance;
        }
        "SRM_S10" => {
            SRM_S10 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "SRR_S07" => {
            SRR_S07 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRR_S11" => {
            SRR_S11 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRM_S06" => {
            SRM_S06 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "ADT_A21" => {
            ADT_A21 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "MFQ_M02" => {
            MFQ_M02 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MDM_T10" => {
            MDM_T10 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "CRM_C02" => {
            CRM_C02 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SIU_S22" => {
            SIU_S22 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "RPI_I04" => {
            RPI_I04 messageInstance = {msh: {},msa: {}, pid: {}};
            return messageInstance;
        }
        "PPP_PCD" => {
            PPP_PCD messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "MDM_T06" => {
            MDM_T06 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "SIU_S14" => {
            SIU_S14 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "MFR_M11" => {
            MFR_M11 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "BAR_P05" => {
            BAR_P05 messageInstance = {msh: {},pid: {}, evn: {}};
            return messageInstance;
        }
        "MFR_M07" => {
            MFR_M07 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "ORU_W01" => {
            ORU_W01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "RQI_I02" => {
            RQI_I02 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "RQA_I11" => {
            RQA_I11 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "ADT_A40" => {
            ADT_A40 messageInstance = {msh: {},evn: {}};
            return messageInstance;
        }
        "ADT_A41" => {
            ADT_A41 messageInstance = {msh: {},evn: {}};
            return messageInstance;
        }
        "RQI_I03" => {
            RQI_I03 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "RQA_I10" => {
            RQA_I10 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "MFR_M06" => {
            MFR_M06 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "SIU_S15" => {
            SIU_S15 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "MFR_M10" => {
            MFR_M10 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "MDM_T07" => {
            MDM_T07 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "MFD_MFA" => {
            MFD_MFA messageInstance = {msh: {},mfi: {}};
            return messageInstance;
        }
        "CRM_C03" => {
            CRM_C03 messageInstance = {msh: {}};
            return messageInstance;
        }
        "SIU_S23" => {
            SIU_S23 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "PEX_P08" => {
            PEX_P08 messageInstance = {msh: {},pid: {}, evn: {}};
            return messageInstance;
        }
        "MDM_T11" => {
            MDM_T11 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "MFQ_M03" => {
            MFQ_M03 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "SRR_S10" => {
            SRR_S10 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRM_S07" => {
            SRM_S07 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "NMR_N01" => {
            NMR_N01 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "ADT_A36" => {
            ADT_A36 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "SRM_S11" => {
            SRM_S11 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "SRR_S06" => {
            SRR_S06 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SIU_S19" => {
            SIU_S19 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "MDM_T04" => {
            MDM_T04 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "RQA_I09" => {
            RQA_I09 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "SIU_S20" => {
            SIU_S20 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "MFR_M09" => {
            MFR_M09 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "SRM_S04" => {
            SRM_S04 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "ADT_A23" => {
            ADT_A23 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "ADT_A35" => {
            ADT_A35 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "SRR_S05" => {
            SRR_S05 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "ADT_A15" => {
            ADT_A15 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "MDM_T08" => {
            MDM_T08 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "RRI_I14" => {
            RRI_I14 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "ADT_A42" => {
            ADT_A42 messageInstance = {msh: {},evn: {}};
            return messageInstance;
        }
        "MFK_M03" => {
            MFK_M03 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "QRY_PC9" => {
            QRY_PC9 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ERP_R09" => {
            ERP_R09 messageInstance = {msh: {},erq: {}, msa: {}, qak: {}};
            return messageInstance;
        }
        "MFR_M05" => {
            MFR_M05 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "SRM_S08" => {
            SRM_S08 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "SRR_S09" => {
            SRR_S09 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SIU_S16" => {
            SIU_S16 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "SIU_S17" => {
            SIU_S17 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "SRR_S08" => {
            SRR_S08 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRM_S09" => {
            SRM_S09 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "MFR_M04" => {
            MFR_M04 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "MDM_T09" => {
            MDM_T09 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "RRI_I15" => {
            RRI_I15 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "ADT_A14" => {
            ADT_A14 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "ADT_A34" => {
            ADT_A34 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "SRR_S04" => {
            SRR_S04 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRM_S05" => {
            SRM_S05 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "ADT_A22" => {
            ADT_A22 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "MFQ_M01" => {
            MFQ_M01 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MFR_M08" => {
            MFR_M08 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "RRE_O02" => {
            RRE_O02 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "REF_I13" => {
            REF_I13 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "SIU_S21" => {
            SIU_S21 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "MDM_T05" => {
            MDM_T05 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "ADT_A13" => {
            ADT_A13 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "PPG_PCH" => {
            PPG_PCH messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "UDM_R06" => {
            UDM_R06 messageInstance = {msh: {},urd: {}};
            return messageInstance;
        }
        "ADT_A44" => {
            ADT_A44 messageInstance = {msh: {},evn: {}};
            return messageInstance;
        }
        "MFK_M05" => {
            MFK_M05 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A05" => {
            ADT_A05 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "RPA_I09" => {
            RPA_I09 messageInstance = {msh: {},pid: {}, msa: {}};
            return messageInstance;
        }
        "ORS_O02" => {
            ORS_O02 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "MFR_M03" => {
            MFR_M03 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "PGL_PC7" => {
            PGL_PC7 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "ADT_A29" => {
            ADT_A29 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "RPR_I03" => {
            RPR_I03 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "NMQ_N01" => {
            NMQ_N01 messageInstance = {msh: {}};
            return messageInstance;
        }
        "CSU_C10" => {
            CSU_C10 messageInstance = {msh: {}};
            return messageInstance;
        }
        "PPR_PC2" => {
            PPR_PC2 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "DSR_P04" => {
            DSR_P04 messageInstance = {msh: {},qrd: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A48" => {
            ADT_A48 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "MFK_M09" => {
            MFK_M09 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "SIU_S26" => {
            SIU_S26 messageInstance = {msh: {},sch: {}};
            return messageInstance;
        }
        "CRM_C06" => {
            CRM_C06 messageInstance = {msh: {}};
            return messageInstance;
        }
        "REF_I14" => {
            REF_I14 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "QRY_Q28" => {
            QRY_Q28 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MFQ_M06" => {
            MFQ_M06 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A25" => {
            ADT_A25 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "SRM_S02" => {
            SRM_S02 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "ADT_A33" => {
            ADT_A33 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "SRR_S03" => {
            SRR_S03 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "MFQ_M10" => {
            MFQ_M10 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MFQ_M11" => {
            MFQ_M11 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A32" => {
            ADT_A32 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "SRR_S02" => {
            SRR_S02 messageInstance = {msh: {},msa: {}};
            return messageInstance;
        }
        "SRM_S03" => {
            SRM_S03 messageInstance = {msh: {},arq: {}};
            return messageInstance;
        }
        "ORF_W02" => {
            ORF_W02 messageInstance = {msh: {},qrd: {}, msa: {}};
            return messageInstance;
        }
        "MFQ_M07" => {
            MFQ_M07 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "ADT_A08" => {
            ADT_A08 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "QRY_Q29" => {
            QRY_Q29 messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "REF_I15" => {
            REF_I15 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "CRM_C07" => {
            CRM_C07 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A49" => {
            ADT_A49 messageInstance = {msh: {},mrg: {}, pid: {}, evn: {}};
            return messageInstance;
        }
        "MFK_M08" => {
            MFK_M08 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "MDM_T03" => {
            MDM_T03 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}, txa: {}};
            return messageInstance;
        }
        "PPR_PC3" => {
            PPR_PC3 messageInstance = {msh: {},pid: {}};
            return messageInstance;
        }
        "CSU_C11" => {
            CSU_C11 messageInstance = {msh: {}};
            return messageInstance;
        }
        "ADT_A28" => {
            ADT_A28 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "MFR_M02" => {
            MFR_M02 messageInstance = {msh: {},mfi: {}, qrd: {}, msa: {}};
            return messageInstance;
        }
        "ADT_A04" => {
            ADT_A04 messageInstance = {msh: {},pid: {}, pv1: {}, evn: {}};
            return messageInstance;
        }
        "QRY_PCE" => {
            QRY_PCE messageInstance = {msh: {},qrd: {}};
            return messageInstance;
        }
        "MFK_M04" => {
            MFK_M04 messageInstance = {msh: {},mfi: {}, msa: {}};
            return messageInstance;
        }
        "RRI_I13" => {
            RRI_I13 messageInstance = {msh: {},pid: {}};
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
public isolated function getSegmentComponent(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {
        "ADT_A06_PROCEDURE" => {
            ADT_A06_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "SRM_S01_SERVICE" => {
            SRM_S01_SERVICE messageInstance = {ais: {}};
            return messageInstance;
        }
        "RRI_I12_PROVIDER" => {
            RRI_I12_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "SQR_S25_GENERAL_RESOURCE" => {
            SQR_S25_GENERAL_RESOURCE messageInstance = {aig: {}};
            return messageInstance;
        }
        "RPA_I08_PROCEDURE" => {
            RPA_I08_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_OBSERVATION" => {
            PGL_PC6_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PGL_PC6_ORDER_OBSERVATION" => {
            PGL_PC6_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RDE_O01_COMPONENT" => {
            RDE_O01_COMPONENT messageInstance = {};
            return messageInstance;
        }
        "PTR_PCF_ORDER_OBSERVATION" => {
            PTR_PCF_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "MFN_M02_MF_STAFF" => {
            MFN_M02_MF_STAFF messageInstance = {stf: {}, mfe: {}};
            return messageInstance;
        }
        "RRG_O02_GIVE" => {
            RRG_O02_GIVE messageInstance = {rxg: {}};
            return messageInstance;
        }
        "PGL_PC6_PATIENT_VISIT" => {
            PGL_PC6_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "BAR_P01_INSURANCE" => {
            BAR_P01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "BAR_P02_PATIENT" => {
            BAR_P02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_ROLE" => {
            PPT_PCL_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "RPA_I08_VISIT" => {
            RPA_I08_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "ORF_R04_PATIENT" => {
            ORF_R04_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "ORD_O02_RESPONSE" => {
            ORD_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPP_PCB_GOAL_OBSERVATION" => {
            PPP_PCB_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RRI_I12_PROCEDURE" => {
            RRI_I12_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "REF_I12_VISIT" => {
            REF_I12_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "OMD_O01_PATIENT_VISIT" => {
            OMD_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RDE_O01_PATIENT_VISIT" => {
            RDE_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "OSR_Q06_RESPONSE" => {
            OSR_Q06_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SQM_S25_PERSONNEL_RESOURCE" => {
            SQM_S25_PERSONNEL_RESOURCE messageInstance = {aip: {}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_ROLE" => {
            PPP_PCB_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_OBSERVATION" => {
            PPR_PC1_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "OMD_O01_ORDER_TRAY" => {
            OMD_O01_ORDER_TRAY messageInstance = {orc: {}};
            return messageInstance;
        }
        "RRA_O02_PATIENT" => {
            RRA_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RGV_O01_GIVE" => {
            RGV_O01_GIVE messageInstance = {rxg: {}};
            return messageInstance;
        }
        "ORU_R01_RESPONSE" => {
            ORU_R01_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PRR_PC5_PATIENT_VISIT" => {
            PRR_PC5_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RPA_I08_PROVIDER" => {
            RPA_I08_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "PEX_P07_VISIT" => {
            PEX_P07_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RAS_O01_ORDER" => {
            RAS_O01_ORDER messageInstance = {orc: {}, rxr: {}};
            return messageInstance;
        }
        "ADT_A45_MERGE_INFO" => {
            ADT_A45_MERGE_INFO messageInstance = {mrg: {}, pv1: {}};
            return messageInstance;
        }
        "MFN_M05_MF_LOCATION" => {
            MFN_M05_MF_LOCATION messageInstance = {loc: {}, mfe: {}};
            return messageInstance;
        }
        "PTR_PCF_ORDER_DETAIL" => {
            PTR_PCF_ORDER_DETAIL messageInstance = {ptr_pcf_order_detail_segment: {}};
            return messageInstance;
        }
        "PPT_PCL_ORDER_OBSERVATION" => {
            PPT_PCL_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_PERSON" => {
            PEX_P07_ASSOCIATED_PERSON messageInstance = {nk1: {}};
            return messageInstance;
        }
        "PIN_I07_GUARANTOR_INSURANCE" => {
            PIN_I07_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM" => {
            PTR_PCF_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM_OBSERVATION" => {
            PPT_PCL_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "OMD_O01_ORDER_DIET" => {
            OMD_O01_ORDER_DIET messageInstance = {orc: {}};
            return messageInstance;
        }
        "PPR_PC1_PATIENT_VISIT" => {
            PPR_PC1_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RDR_RDR_ORDER" => {
            RDR_RDR_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PPT_PCL_PATIENT" => {
            PPT_PCL_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPR_PC1_GOAL" => {
            PPR_PC1_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "PPV_PCA_PATIENT" => {
            PPV_PCA_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPR_PC1_ORDER" => {
            PPR_PC1_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM_OBSERVATION" => {
            PPP_PCB_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PGL_PC6_ORDER_DETAIL" => {
            PGL_PC6_ORDER_DETAIL messageInstance = {pgl_pc6_order_detail_segment: {}};
            return messageInstance;
        }
        "RGV_O01_ORDER" => {
            RGV_O01_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ORM_O01_INSURANCE" => {
            ORM_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "ADT_A39_PATIENT" => {
            ADT_A39_PATIENT messageInstance = {mrg: {}, pid: {}};
            return messageInstance;
        }
        "RAS_O01_ORDER_DETAIL" => {
            RAS_O01_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "RPI_I01_INSURANCE" => {
            RPI_I01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PPG_PCG_PATHWAY_ROLE" => {
            PPG_PCG_PATHWAY_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "RQA_I08_AUTHORIZATION" => {
            RQA_I08_AUTHORIZATION messageInstance = {aut: {}};
            return messageInstance;
        }
        "OMS_O01_INSURANCE" => {
            OMS_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "RPI_I01_GUARANTOR_INSURANCE" => {
            RPI_I01_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "PPV_PCA_GOAL_OBSERVATION" => {
            PPV_PCA_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "OMN_O01_ORDER" => {
            OMN_O01_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PTR_PCF_GOAL" => {
            PTR_PCF_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "RPA_I08_OBSERVATION" => {
            RPA_I08_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "RDR_RDR_DISPENSE" => {
            RDR_RDR_DISPENSE messageInstance = {rxd: {}};
            return messageInstance;
        }
        "PEX_P07_EXPERIENCE" => {
            PEX_P07_EXPERIENCE messageInstance = {pes: {}};
            return messageInstance;
        }
        "SRM_S01_RESOURCES" => {
            SRM_S01_RESOURCES messageInstance = {rgs: {}};
            return messageInstance;
        }
        "PPT_PCL_GOAL_OBSERVATION" => {
            PPT_PCL_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PTR_PCF_PATIENT" => {
            PTR_PCF_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "ADT_A01_INSURANCE" => {
            ADT_A01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_OBSERVATION" => {
            PRR_PC5_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "SQR_S25_LOCATION_RESOURCE" => {
            SQR_S25_LOCATION_RESOURCE messageInstance = {ail: {}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM_ROLE" => {
            PPR_PC1_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "ROR_ROR_ORDER" => {
            ROR_ROR_ORDER messageInstance = {orc: {}, rxo: {}};
            return messageInstance;
        }
        "RDR_RDR_DEFINITION" => {
            RDR_RDR_DEFINITION messageInstance = {qrd: {}};
            return messageInstance;
        }
        "OSR_Q06_PATIENT" => {
            OSR_Q06_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RGV_O01_PATIENT_VISIT" => {
            RGV_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RRI_I12_VISIT" => {
            RRI_I12_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RRO_O02_RESPONSE" => {
            RRO_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPV_PCA_ORDER" => {
            PPV_PCA_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PPP_PCB_ORDER_DETAIL" => {
            PPP_PCB_ORDER_DETAIL messageInstance = {ppp_pcb_order_detail_segment: {}};
            return messageInstance;
        }
        "MFN_M07_MF_CLIN_STUDY" => {
            MFN_M07_MF_CLIN_STUDY messageInstance = {cm0: {}, mfe: {}};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_RX_ORDER" => {
            PEX_P07_ASSOCIATED_RX_ORDER messageInstance = {rxe: {}};
            return messageInstance;
        }
        "RGV_O01_PATIENT" => {
            RGV_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RQI_I01_GUARANTOR_INSURANCE" => {
            RQI_I01_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "PRR_PC5_ORDER_DETAIL" => {
            PRR_PC5_ORDER_DETAIL messageInstance = {prr_pc5_order_detail_segment: {}};
            return messageInstance;
        }
        "PGL_PC6_GOAL_ROLE" => {
            PGL_PC6_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "OMD_O01_DIET" => {
            OMD_O01_DIET messageInstance = {};
            return messageInstance;
        }
        "PPG_PCG_PATIENT_VISIT" => {
            PPG_PCG_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RDS_O01_ENCODING" => {
            RDS_O01_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "PIN_I07_PROVIDER" => {
            PIN_I07_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RQA_I08_VISIT" => {
            RQA_I08_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "SIU_S12_PATIENT" => {
            SIU_S12_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "SRM_S01_GENERAL_RESOURCE" => {
            SRM_S01_GENERAL_RESOURCE messageInstance = {aig: {}};
            return messageInstance;
        }
        "REF_I12_PROVIDER" => {
            REF_I12_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RPA_I08_AUTHORIZATION" => {
            RPA_I08_AUTHORIZATION messageInstance = {aut: {}};
            return messageInstance;
        }
        "RAR_RAR_ORDER" => {
            RAR_RAR_ORDER messageInstance = {orc: {}, rxr: {}};
            return messageInstance;
        }
        "ORM_O01_PATIENT" => {
            ORM_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PRR_PC5_PATIENT" => {
            PRR_PC5_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "MFN_M01_MF" => {
            MFN_M01_MF messageInstance = {mfe: {}};
            return messageInstance;
        }
        "MFN_M05_MF_LOC_DEPT" => {
            MFN_M05_MF_LOC_DEPT messageInstance = {ldp: {}};
            return messageInstance;
        }
        "RER_RER_DEFINITION" => {
            RER_RER_DEFINITION messageInstance = {qrd: {}};
            return messageInstance;
        }
        "PPR_PC1_ORDER_OBSERVATION" => {
            PPR_PC1_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RCL_I06_PROVIDER" => {
            RCL_I06_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RDO_O01_ORDER_DETAIL" => {
            RDO_O01_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "RPA_I08_INSURANCE" => {
            RPA_I08_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "RQA_I08_PROCEDURE" => {
            RQA_I08_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "ORD_O02_PATIENT" => {
            ORD_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RDE_O01_OBSERVATION" => {
            RDE_O01_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "PPG_PCG_GOAL" => {
            PPG_PCG_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM_ROLE" => {
            PGL_PC6_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "ORM_O01_ORDER" => {
            ORM_O01_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ORF_R04_QUERY_RESPONSE" => {
            ORF_R04_QUERY_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PIN_I07_INSURANCE" => {
            PIN_I07_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "VXU_V04_PATIENT" => {
            VXU_V04_PATIENT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "OSR_Q06_ORDER" => {
            OSR_Q06_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RDS_O01_ORDER_DETAIL" => {
            RDS_O01_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "SIU_S12_RESOURCES" => {
            SIU_S12_RESOURCES messageInstance = {rgs: {}};
            return messageInstance;
        }
        "ORM_O01_OBSERVATION" => {
            ORM_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "SRR_S01_RESOURCES" => {
            SRR_S01_RESOURCES messageInstance = {rgs: {}};
            return messageInstance;
        }
        "RGV_O01_ENCODING" => {
            RGV_O01_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY" => {
            PPT_PCL_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "ADT_A43_PATIENT" => {
            ADT_A43_PATIENT messageInstance = {mrg: {}, pid: {}};
            return messageInstance;
        }
        "CSU_C09_VISIT" => {
            CSU_C09_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "REF_I12_PROCEDURE" => {
            REF_I12_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "REF_I12_AUTHORIZATION" => {
            REF_I12_AUTHORIZATION messageInstance = {aut: {}};
            return messageInstance;
        }
        "ORU_R01_PATIENT" => {
            ORU_R01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_ROLE" => {
            PRR_PC5_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "SUR_P09_FACILITY_DETAIL" => {
            SUR_P09_FACILITY_DETAIL messageInstance = {fac: {}, pdc: {}, nte: {}};
            return messageInstance;
        }
        "MFN_M06_MF_CDM" => {
            MFN_M06_MF_CDM messageInstance = {mfe: {}, cdm: {}};
            return messageInstance;
        }
        "RQA_I08_PROVIDER" => {
            RQA_I08_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RAR_RAR_DEFINITION" => {
            RAR_RAR_DEFINITION messageInstance = {qrd: {}};
            return messageInstance;
        }
        "ARD_A19_QUERY_RESPONSE" => {
            ARD_A19_QUERY_RESPONSE messageInstance = {pid: {}, pv1: {}};
            return messageInstance;
        }
        "PPP_PCB_PATHWAY" => {
            PPP_PCB_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "ORR_O02_RESPONSE" => {
            ORR_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "OMD_O01_OBSERVATION" => {
            OMD_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PPR_PC1_ORDER_DETAIL" => {
            PPR_PC1_ORDER_DETAIL messageInstance = {ppr_pc1_order_detail_segment: {}};
            return messageInstance;
        }
        "MFN_M07_MF_PHASE_SCHED_DETAIL" => {
            MFN_M07_MF_PHASE_SCHED_DETAIL messageInstance = {cm1: {}};
            return messageInstance;
        }
        "RDS_O01_PATIENT" => {
            RDS_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPP_PCB_GOAL" => {
            PPP_PCB_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM_OBSERVATION" => {
            PPG_PCG_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RQI_I01_PROVIDER" => {
            RQI_I01_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "SQR_S25_SCHEDULE" => {
            SQR_S25_SCHEDULE messageInstance = {sch: {}};
            return messageInstance;
        }
        "RAS_O01_PATIENT_VISIT" => {
            RAS_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RRI_I12_AUTHORIZATION" => {
            RRI_I12_AUTHORIZATION messageInstance = {aut: {}};
            return messageInstance;
        }
        "RAS_O01_ENCODING" => {
            RAS_O01_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "PTR_PCF_ORDER" => {
            PTR_PCF_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RDO_O01_PATIENT" => {
            RDO_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "VXR_V03_OBSERVATION" => {
            VXR_V03_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "BAR_P01_VISIT" => {
            BAR_P01_VISIT messageInstance = {};
            return messageInstance;
        }
        "PPP_PCB_PATIENT_VISIT" => {
            PPP_PCB_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "OMS_O01_ORDER" => {
            OMS_O01_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "VXX_V02_PATIENT" => {
            VXX_V02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "BAR_P06_PATIENT" => {
            BAR_P06_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPT_PCL_PATHWAY_ROLE" => {
            PPT_PCL_PATHWAY_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "SQR_S25_PERSONNEL_RESOURCE" => {
            SQR_S25_PERSONNEL_RESOURCE messageInstance = {aip: {}};
            return messageInstance;
        }
        "ORR_O02_ORDER" => {
            ORR_O02_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RGR_RGR_ENCODING" => {
            RGR_RGR_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "PEX_P07_RX_ADMINISTRATION" => {
            PEX_P07_RX_ADMINISTRATION messageInstance = {rxa: {}};
            return messageInstance;
        }
        "MFN_M09_MF_TEST_CATEGORICAL" => {
            MFN_M09_MF_TEST_CATEGORICAL messageInstance = {mfe: {}, om1: {}};
            return messageInstance;
        }
        "SRR_S01_SERVICE" => {
            SRR_S01_SERVICE messageInstance = {ais: {}};
            return messageInstance;
        }
        "SRR_S01_LOCATION_RESOURCE" => {
            SRR_S01_LOCATION_RESOURCE messageInstance = {ail: {}};
            return messageInstance;
        }
        "RRD_O02_PATIENT" => {
            RRD_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "CSU_C09_RX_ADMIN" => {
            CSU_C09_RX_ADMIN messageInstance = {rxa: {}, rxr: {}};
            return messageInstance;
        }
        "ORN_O02_RESPONSE" => {
            ORN_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RRG_O02_RESPONSE" => {
            RRG_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "RDO_O01_INSURANCE" => {
            RDO_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "RDE_O01_ORDER_DETAIL" => {
            RDE_O01_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "DOC_T12_RESULT" => {
            DOC_T12_RESULT messageInstance = {pid: {}, pv1: {}, txa: {}};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL" => {
            DFT_P03_FINANCIAL messageInstance = {ft1: {}};
            return messageInstance;
        }
        "RAS_O01_PATIENT" => {
            RAS_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "SQM_S25_LOCATION_RESOURCE" => {
            SQM_S25_LOCATION_RESOURCE messageInstance = {ail: {}};
            return messageInstance;
        }
        "PPG_PCG_GOAL_OBSERVATION" => {
            PPG_PCG_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RDS_O01_COMPONENT" => {
            RDS_O01_COMPONENT messageInstance = {};
            return messageInstance;
        }
        "PPR_PC1_GOAL_ROLE" => {
            PPR_PC1_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PPR_PC1_PROBLEM" => {
            PPR_PC1_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "PPT_PCL_ORDER_DETAIL" => {
            PPT_PCL_ORDER_DETAIL messageInstance = {ppt_pcl_order_detail_segment: {}};
            return messageInstance;
        }
        "RRD_O02_RESPONSE" => {
            RRD_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM" => {
            PPV_PCA_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "SQM_S25_SERVICE" => {
            SQM_S25_SERVICE messageInstance = {ais: {}};
            return messageInstance;
        }
        "RGV_O01_COMPONENTS" => {
            RGV_O01_COMPONENTS messageInstance = {};
            return messageInstance;
        }
        "RQA_I08_GUARANTOR_INSURANCE" => {
            RQA_I08_GUARANTOR_INSURANCE messageInstance = {};
            return messageInstance;
        }
        "VXU_V04_ORDER" => {
            VXU_V04_ORDER messageInstance = {rxa: {}};
            return messageInstance;
        }
        "RRI_I12_OBSERVATION" => {
            RRI_I12_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "RDO_O01_PATIENT_VISIT" => {
            RDO_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RER_RER_ORDER" => {
            RER_RER_ORDER messageInstance = {orc: {}, rxe: {}};
            return messageInstance;
        }
        "OMN_O01_ORDER_DETAIL" => {
            OMN_O01_ORDER_DETAIL messageInstance = {rqd: {}};
            return messageInstance;
        }
        "RGR_RGR_PATIENT" => {
            RGR_RGR_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "SQR_S25_RESOURCES" => {
            SQR_S25_RESOURCES messageInstance = {rgs: {}};
            return messageInstance;
        }
        "PPV_PCA_ORDER_DETAIL" => {
            PPV_PCA_ORDER_DETAIL messageInstance = {ppv_pca_order_detail_segment: {}};
            return messageInstance;
        }
        "ORN_O02_ORDER" => {
            ORN_O02_ORDER messageInstance = {orc: {}, rqd: {}};
            return messageInstance;
        }
        "RRO_O02_PATIENT" => {
            RRO_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RGV_O01_ORDER_DETAIL_SUPPLEMENT" => {
            RGV_O01_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "VXR_V03_INSURANCE" => {
            VXR_V03_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PPT_PCL_ORDER" => {
            PPT_PCL_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ORU_R01_ORDER_OBSERVATION" => {
            ORU_R01_ORDER_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "SRM_S01_PERSONNEL_RESOURCE" => {
            SRM_S01_PERSONNEL_RESOURCE messageInstance = {aip: {}};
            return messageInstance;
        }
        "RQA_I08_AUTCTD_SUPPGRP2" => {
            RQA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut: {}};
            return messageInstance;
        }
        "SRR_S01_GENERAL_RESOURCE" => {
            SRR_S01_GENERAL_RESOURCE messageInstance = {aig: {}};
            return messageInstance;
        }
        "PPG_PCG_GOAL_ROLE" => {
            PPG_PCG_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "ORM_O01_ORDER_DETAIL" => {
            ORM_O01_ORDER_DETAIL messageInstance = {orm_o01_order_detail_segment: {}};
            return messageInstance;
        }
        "ORM_O01_ORDER_DETAIL_SEGMENT" => {
            ORM_O01_ORDER_DETAIL_SEGMENT messageInstance = {};
            return messageInstance;
        }
        "SIU_S12_GENERAL_RESOURCE" => {
            SIU_S12_GENERAL_RESOURCE messageInstance = {aig: {}};
            return messageInstance;
        }
        "MFN_M11_MF_TEST_CALCULATED" => {
            MFN_M11_MF_TEST_CALCULATED messageInstance = {om1: {}, mfe: {}};
            return messageInstance;
        }
        "PEX_P07_STUDY" => {
            PEX_P07_STUDY messageInstance = {csr: {}};
            return messageInstance;
        }
        "RDE_O01_INSURANCE" => {
            RDE_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "RRG_O02_ORDER" => {
            RRG_O02_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM_ROLE" => {
            PPV_PCA_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PGL_PC6_GOAL" => {
            PGL_PC6_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "SQM_S25_REQUEST" => {
            SQM_S25_REQUEST messageInstance = {arq: {}};
            return messageInstance;
        }
        "PPR_PC1_GOAL_OBSERVATION" => {
            PPR_PC1_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "ADT_A01_PROCEDURE" => {
            ADT_A01_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "RRA_O02_RESPONSE" => {
            RRA_O02_RESPONSE messageInstance = {};
            return messageInstance;
        }
        "SRR_S01_PERSONNEL_RESOURCE" => {
            SRR_S01_PERSONNEL_RESOURCE messageInstance = {aip: {}};
            return messageInstance;
        }
        "ORM_O01_PATIENT_VISIT" => {
            ORM_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "ROR_ROR_DEFINITION" => {
            ROR_ROR_DEFINITION messageInstance = {qrd: {}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM_ROLE" => {
            PPT_PCL_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PPG_PCG_PROBLEM_ROLE" => {
            PPG_PCG_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_OBSERVATION" => {
            PRR_PC5_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RCI_I05_RESULTS" => {
            RCI_I05_RESULTS messageInstance = {obx: {}};
            return messageInstance;
        }
        "RAS_O01_ORDER_DETAIL_SUPPLEMENT" => {
            RAS_O01_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "VXR_V03_PATIENT_VISIT" => {
            VXR_V03_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "SRM_S01_PATIENT" => {
            SRM_S01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "OMN_O01_PATIENT" => {
            OMN_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RDO_O01_OBSERVATION" => {
            RDO_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "ROR_ROR_PATIENT" => {
            ROR_ROR_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "OMS_O01_PATIENT" => {
            OMS_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RDO_O01_ORDER" => {
            RDO_O01_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RDR_RDR_ENCODING" => {
            RDR_RDR_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "MFN_M03_MF_TEST" => {
            MFN_M03_MF_TEST messageInstance = {mfe: {}};
            return messageInstance;
        }
        "RGV_O01_OBSERVATION" => {
            RGV_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RDE_O01_ORDER" => {
            RDE_O01_ORDER messageInstance = {orc: {}, rxe: {}};
            return messageInstance;
        }
        "PPV_PCA_ORDER_OBSERVATION" => {
            PPV_PCA_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "SUR_P09_FACILITY" => {
            SUR_P09_FACILITY messageInstance = {psh: {}, fac: {}};
            return messageInstance;
        }
        "ADT_A03_PROCEDURE" => {
            ADT_A03_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM_PATHWAY" => {
            PRR_PC5_PROBLEM_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "SQR_S25_SERVICE" => {
            SQR_S25_SERVICE messageInstance = {ais: {}};
            return messageInstance;
        }
        "OMD_O01_PATIENT" => {
            OMD_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHASE" => {
            CSU_C09_STUDY_PHASE messageInstance = {};
            return messageInstance;
        }
        "RQA_I08_OBSERVATION" => {
            RQA_I08_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        _ => {
            return getSegmentComponent2(segmentComponentName);
        }
    }
}

isolated function getSegmentComponent2(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {

        "PPG_PCG_PROBLEM" => {
            PPG_PCG_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "CSU_C09_STUDY_PHARM" => {
            CSU_C09_STUDY_PHARM messageInstance = {};
            return messageInstance;
        }
        "RRO_O02_ORDER" => {
            RRO_O02_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ADT_A06_INSURANCE" => {
            ADT_A06_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PTR_PCF_GOAL_ROLE" => {
            PTR_PCF_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "VXR_V03_ORDER" => {
            VXR_V03_ORDER messageInstance = {rxa: {}};
            return messageInstance;
        }
        "RAR_RAR_ENCODING" => {
            RAR_RAR_ENCODING messageInstance = {rxe: {}};
            return messageInstance;
        }
        "MFN_M08_MF_NUMERIC_OBSERVATION" => {
            MFN_M08_MF_NUMERIC_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "DFT_P03_FINANCIAL_PROCEDURE" => {
            DFT_P03_FINANCIAL_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "OMS_O01_OBSERVATION" => {
            OMS_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RPA_I08_AUTCTD_SUPPGRP2" => {
            RPA_I08_AUTCTD_SUPPGRP2 messageInstance = {aut: {}};
            return messageInstance;
        }
        "RCI_I05_OBSERVATION" => {
            RCI_I05_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "RRI_I12_RESULTS" => {
            RRI_I12_RESULTS messageInstance = {obr: {}};
            return messageInstance;
        }
        "RAR_RAR_PATIENT" => {
            RAR_RAR_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "ORU_R01_VISIT" => {
            ORU_R01_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "SRM_S01_LOCATION_RESOURCE" => {
            SRM_S01_LOCATION_RESOURCE messageInstance = {ail: {}};
            return messageInstance;
        }
        "MFN_M10_MF_TEST_BATT_DETAIL" => {
            MFN_M10_MF_TEST_BATT_DETAIL messageInstance = {om5: {}};
            return messageInstance;
        }
        "SRR_S01_SCHEDULE" => {
            SRR_S01_SCHEDULE messageInstance = {sch: {}};
            return messageInstance;
        }
        "PRR_PC5_GOAL_ROLE" => {
            PRR_PC5_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PGL_PC6_PATHWAY" => {
            PGL_PC6_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "RRA_O02_ADMINISTRATION" => {
            RRA_O02_ADMINISTRATION messageInstance = {rxr: {}};
            return messageInstance;
        }
        "CSU_C09_STUDY_SCHEDULE" => {
            CSU_C09_STUDY_SCHEDULE messageInstance = {};
            return messageInstance;
        }
        "RQC_I06_PROVIDER" => {
            RQC_I06_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "CRM_C01_PATIENT" => {
            CRM_C01_PATIENT messageInstance = {csr: {}, pid: {}};
            return messageInstance;
        }
        "REF_I12_INSURANCE" => {
            REF_I12_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PPT_PCL_PROBLEM" => {
            PPT_PCL_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "RGR_RGR_ORDER" => {
            RGR_RGR_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "PGL_PC6_OBSERVATION" => {
            PGL_PC6_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RQA_I08_INSURANCE" => {
            RQA_I08_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PPG_PCG_ORDER" => {
            PPG_PCG_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RRI_I12_AUTCTD_SUPPGRP2" => {
            RRI_I12_AUTCTD_SUPPGRP2 messageInstance = {aut: {}};
            return messageInstance;
        }
        "PRR_PC5_PROBLEM" => {
            PRR_PC5_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "PPP_PCB_GOAL_ROLE" => {
            PPP_PCB_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PEX_P07_RX_ORDER" => {
            PEX_P07_RX_ORDER messageInstance = {rxe: {}};
            return messageInstance;
        }
        "ARD_A19_INSURANCE" => {
            ARD_A19_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "REF_I12_AUTCTD_SUPPGRP2" => {
            REF_I12_AUTCTD_SUPPGRP2 messageInstance = {aut: {}};
            return messageInstance;
        }
        "RQC_I05_PROVIDER" => {
            RQC_I05_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RQP_I04_PROVIDER" => {
            RQP_I04_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "RCI_I05_PROVIDER" => {
            RCI_I05_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "SRR_S01_PATIENT" => {
            SRR_S01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "MFN_M10_MF_TEST_BATTERIES" => {
            MFN_M10_MF_TEST_BATTERIES messageInstance = {om1: {}, mfe: {}};
            return messageInstance;
        }
        "REF_I12_RESULTS" => {
            REF_I12_RESULTS messageInstance = {obr: {}};
            return messageInstance;
        }
        "PTR_PCF_PATHWAY" => {
            PTR_PCF_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "PPP_PCB_ORDER_OBSERVATION" => {
            PPP_PCB_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PPP_PCB_PATHWAY_ROLE" => {
            PPP_PCB_PATHWAY_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PPG_PCG_ORDER_OBSERVATION" => {
            PPG_PCG_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RPI_I01_PROVIDER" => {
            RPI_I01_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "PRR_PC5_ORDER_OBSERVATION" => {
            PRR_PC5_ORDER_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "RDS_O01_OBSERVATION" => {
            RDS_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "SIU_S12_LOCATION_RESOURCE" => {
            SIU_S12_LOCATION_RESOURCE messageInstance = {ail: {}};
            return messageInstance;
        }
        "RGV_O01_ORDER_DETAIL" => {
            RGV_O01_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "REF_I12_OBSERVATION" => {
            REF_I12_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "PPP_PCB_ORDER" => {
            PPP_PCB_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ORD_O02_ORDER_TRAY" => {
            ORD_O02_ORDER_TRAY messageInstance = {orc: {}};
            return messageInstance;
        }
        "RRG_O02_PATIENT" => {
            RRG_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RDS_O01_ORDER" => {
            RDS_O01_ORDER messageInstance = {orc: {}, rxd: {}};
            return messageInstance;
        }
        "PPV_PCA_GOAL_ROLE" => {
            PPV_PCA_GOAL_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "PPG_PCG_PATHWAY" => {
            PPG_PCG_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "BAR_P01_PROCEDURE" => {
            BAR_P01_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "PPP_PCB_PROBLEM" => {
            PPP_PCB_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "PPG_PCG_ORDER_DETAIL" => {
            PPG_PCG_ORDER_DETAIL messageInstance = {ppg_pcg_order_detail_segment: {}};
            return messageInstance;
        }
        "RRO_O02_ORDER_DETAIL" => {
            RRO_O02_ORDER_DETAIL messageInstance = {rxo: {}};
            return messageInstance;
        }
        "OMS_O01_ORDER_DETAIL" => {
            OMS_O01_ORDER_DETAIL messageInstance = {rqd: {}};
            return messageInstance;
        }
        "MFN_M08_MF_TEST_NUMERIC" => {
            MFN_M08_MF_TEST_NUMERIC messageInstance = {om1: {}, mfe: {}};
            return messageInstance;
        }
        "SQM_S25_RESOURCES" => {
            SQM_S25_RESOURCES messageInstance = {rgs: {}};
            return messageInstance;
        }
        "RRA_O02_ORDER" => {
            RRA_O02_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "RPL_I02_PROVIDER" => {
            RPL_I02_PROVIDER messageInstance = {prd: {}};
            return messageInstance;
        }
        "CSU_C09_PATIENT" => {
            CSU_C09_PATIENT messageInstance = {csr: {}, pid: {}};
            return messageInstance;
        }
        "OMN_O01_PATIENT_VISIT" => {
            OMN_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "CSU_C09_STUDY_OBSERVATION" => {
            CSU_C09_STUDY_OBSERVATION messageInstance = {obr: {}};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM_OBSERVATION" => {
            PTR_PCF_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PEX_P07_PEX_OBSERVATION" => {
            PEX_P07_PEX_OBSERVATION messageInstance = {peo: {}};
            return messageInstance;
        }
        "ORN_O02_PATIENT" => {
            ORN_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PTR_PCF_PATHWAY_ROLE" => {
            PTR_PCF_PATHWAY_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "ORF_R04_OBSERVATION" => {
            ORF_R04_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "RRD_O02_ORDER" => {
            RRD_O02_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "OMN_O01_INSURANCE" => {
            OMN_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "RDR_RDR_PATIENT" => {
            RDR_RDR_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PTR_PCF_GOAL_OBSERVATION" => {
            PTR_PCF_GOAL_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "OMN_O01_OBSERVATION" => {
            OMN_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "PRR_PC5_GOAL" => {
            PRR_PC5_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "DFT_P03_INSURANCE" => {
            DFT_P03_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "PEX_P07_PEX_CAUSE" => {
            PEX_P07_PEX_CAUSE messageInstance = {pcr: {}};
            return messageInstance;
        }
        "RGR_RGR_DEFINITION" => {
            RGR_RGR_DEFINITION messageInstance = {qrd: {}};
            return messageInstance;
        }
        "PPV_PCA_GOAL_PATHWAY" => {
            PPV_PCA_GOAL_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "PPV_PCA_GOAL" => {
            PPV_PCA_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "RDE_O01_PATIENT" => {
            RDE_O01_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPR_PC1_PATHWAY" => {
            PPR_PC1_PATHWAY messageInstance = {pth: {}};
            return messageInstance;
        }
        "ARD_A19_PROCEDURE" => {
            ARD_A19_PROCEDURE messageInstance = {pr1: {}};
            return messageInstance;
        }
        "ORR_O02_PATIENT" => {
            ORR_O02_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "RRD_O02_DISPENSE" => {
            RRD_O02_DISPENSE messageInstance = {rxd: {}};
            return messageInstance;
        }
        "RER_RER_PATIENT" => {
            RER_RER_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PGL_PC6_PROBLEM" => {
            PGL_PC6_PROBLEM messageInstance = {prb: {}};
            return messageInstance;
        }
        "RQA_I08_RESULTS" => {
            RQA_I08_RESULTS messageInstance = {obx: {}};
            return messageInstance;
        }
        "PTR_PCF_PATIENT_VISIT" => {
            PTR_PCF_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "PTR_PCF_PROBLEM_ROLE" => {
            PTR_PCF_PROBLEM_ROLE messageInstance = {rol: {}};
            return messageInstance;
        }
        "ORM_O01_CHOICE" => {
            ORM_O01_CHOICE messageInstance = {};
            return messageInstance;
        }
        "SQR_S25_PATIENT" => {
            SQR_S25_PATIENT messageInstance = {pid: {}};
            return messageInstance;
        }
        "PPV_PCA_PROBLEM_OBSERVATION" => {
            PPV_PCA_PROBLEM_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "ORU_R01_OBSERVATION" => {
            ORU_R01_OBSERVATION messageInstance = {};
            return messageInstance;
        }
        "PEX_P07_ASSOCIATED_RX_ADMIN" => {
            PEX_P07_ASSOCIATED_RX_ADMIN messageInstance = {rxa: {}};
            return messageInstance;
        }
        "RDO_O01_COMPONENT" => {
            RDO_O01_COMPONENT messageInstance = {};
            return messageInstance;
        }
        "RDS_O01_ORDER_DETAIL_SUPPLEMENT" => {
            RDS_O01_ORDER_DETAIL_SUPPLEMENT messageInstance = {};
            return messageInstance;
        }
        "MFN_M09_MF_TEST_CAT_DETAIL" => {
            MFN_M09_MF_TEST_CAT_DETAIL messageInstance = {om3: {}};
            return messageInstance;
        }
        "RQI_I01_INSURANCE" => {
            RQI_I01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "VXU_V04_OBSERVATION" => {
            VXU_V04_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "SIU_S12_PERSONNEL_RESOURCE" => {
            SIU_S12_PERSONNEL_RESOURCE messageInstance = {aip: {}};
            return messageInstance;
        }
        "MFN_M11_MF_TEST_CALC_DETAIL" => {
            MFN_M11_MF_TEST_CALC_DETAIL messageInstance = {om2: {}, om6: {}};
            return messageInstance;
        }
        "VXU_V04_INSURANCE" => {
            VXU_V04_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "ORD_O02_ORDER_DIET" => {
            ORD_O02_ORDER_DIET messageInstance = {orc: {}};
            return messageInstance;
        }
        "OMD_O01_INSURANCE" => {
            OMD_O01_INSURANCE messageInstance = {in1: {}};
            return messageInstance;
        }
        "SUR_P09_PRODUCT" => {
            SUR_P09_PRODUCT messageInstance = {psh: {}, pdc: {}};
            return messageInstance;
        }
        "RAS_O01_COMPONENTS" => {
            RAS_O01_COMPONENTS messageInstance = {};
            return messageInstance;
        }
        "RPA_I08_RESULTS" => {
            RPA_I08_RESULTS messageInstance = {obx: {}};
            return messageInstance;
        }
        "RDS_O01_PATIENT_VISIT" => {
            RDS_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "PPV_PCA_PATIENT_VISIT" => {
            PPV_PCA_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "SQM_S25_GENERAL_RESOURCE" => {
            SQM_S25_GENERAL_RESOURCE messageInstance = {aig: {}};
            return messageInstance;
        }
        "PRR_PC5_ORDER" => {
            PRR_PC5_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "OMS_O01_PATIENT_VISIT" => {
            OMS_O01_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "RAS_O01_OBSERVATION" => {
            RAS_O01_OBSERVATION messageInstance = {obx: {}};
            return messageInstance;
        }
        "ORF_R04_ORDER" => {
            ORF_R04_ORDER messageInstance = {obr: {}};
            return messageInstance;
        }
        "PPT_PCL_GOAL" => {
            PPT_PCL_GOAL messageInstance = {gol: {}};
            return messageInstance;
        }
        "PPT_PCL_PATIENT_VISIT" => {
            PPT_PCL_PATIENT_VISIT messageInstance = {pv1: {}};
            return messageInstance;
        }
        "SIU_S12_SERVICE" => {
            SIU_S12_SERVICE messageInstance = {ais: {}};
            return messageInstance;
        }
        "PGL_PC6_ORDER" => {
            PGL_PC6_ORDER messageInstance = {orc: {}};
            return messageInstance;
        }
        "ORR_O02_CHOICE" => {
            ORR_O02_CHOICE messageInstance = {};
            return messageInstance;
        }
        _ => {
            return getSegmentComponent3(segmentComponentName);
        }
    }
}

isolated function getSegmentComponent3(string segmentComponentName) returns hl7v2:SegmentComponent? {
    match segmentComponentName {

        "CSU_C12_PATIENT" => {
            CSU_C12_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "RAS_O02_PATIENT" => {
            RAS_O02_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "RAS_O02_ORDER" => {
            RAS_O02_ORDER segmentInstance = {orc: {}, rxr: {}};
            return segmentInstance;
        }
        "MFR_M01_MF_QUERY" => {
            MFR_M01_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "ADT_A07_PROCEDURE" => {
            ADT_A07_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A07_INSURANCE" => {
            ADT_A07_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "CRM_C08_PATIENT" => {
            CRM_C08_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "PPG_PCJ_PATIENT_VISIT" => {
            PPG_PCJ_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPG_PCJ_PATHWAY" => {
            PPG_PCJ_PATHWAY segmentInstance = {pth: {}};
            return segmentInstance;
        }
        "ADT_A31_PROCEDURE" => {
            ADT_A31_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A31_INSURANCE" => {
            ADT_A31_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "CRM_C04_PATIENT" => {
            CRM_C04_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "SIU_S24_PATIENT" => {
            SIU_S24_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S24_RESOURCES" => {
            SIU_S24_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "RPA_I11_AUTHORIZATION" => {
            RPA_I11_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RPA_I11_PROVIDER" => {
            RPA_I11_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RPA_I11_INSURANCE" => {
            RPA_I11_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "RPA_I11_PROCEDURE" => {
            RPA_I11_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RPA_I11_OBSERVATION" => {
            RPA_I11_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RPA_I11_VISIT" => {
            RPA_I11_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "RPA_I10_AUTHORIZATION" => {
            RPA_I10_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RPA_I10_PROVIDER" => {
            RPA_I10_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RPA_I10_INSURANCE" => {
            RPA_I10_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "RPA_I10_PROCEDURE" => {
            RPA_I10_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RPA_I10_OBSERVATION" => {
            RPA_I10_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RPA_I10_VISIT" => {
            RPA_I10_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPP_PCC_PATIENT_VISIT" => {
            PPP_PCC_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPP_PCC_PATHWAY" => {
            PPP_PCC_PATHWAY segmentInstance = {pth: {}};
            return segmentInstance;
        }
        "CRM_C05_PATIENT" => {
            CRM_C05_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "PGL_PC8_PATIENT_VISIT" => {
            PGL_PC8_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PGL_PC8_GOAL" => {
            PGL_PC8_GOAL segmentInstance = {gol: {}};
            return segmentInstance;
        }
        "MFN_M04_MF_CDM" => {
            MFN_M04_MF_CDM segmentInstance = {mfe: {}, cdm: {}};
            return segmentInstance;
        }
        "SIU_S13_PATIENT" => {
            SIU_S13_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S13_RESOURCES" => {
            SIU_S13_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SIU_S18_PATIENT" => {
            SIU_S18_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S18_RESOURCES" => {
            SIU_S18_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRM_S10_PATIENT" => {
            SRM_S10_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S10_RESOURCES" => {
            SRM_S10_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S07_SCHEDULE" => {
            SRR_S07_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRR_S11_SCHEDULE" => {
            SRR_S11_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRM_S06_PATIENT" => {
            SRM_S06_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S06_RESOURCES" => {
            SRM_S06_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "CRM_C02_PATIENT" => {
            CRM_C02_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "SIU_S22_PATIENT" => {
            SIU_S22_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S22_RESOURCES" => {
            SIU_S22_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "RPI_I04_PROVIDER" => {
            RPI_I04_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RPI_I04_GUARANTOR_INSURANCE" => {
            RPI_I04_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "PPP_PCD_PATIENT_VISIT" => {
            PPP_PCD_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPP_PCD_PATHWAY" => {
            PPP_PCD_PATHWAY segmentInstance = {pth: {}};
            return segmentInstance;
        }
        "SIU_S14_PATIENT" => {
            SIU_S14_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S14_RESOURCES" => {
            SIU_S14_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "MFR_M11_MF_QUERY" => {
            MFR_M11_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "BAR_P05_VISIT" => {
            BAR_P05_VISIT segmentInstance = {};
            return segmentInstance;
        }
        "MFR_M07_MF_QUERY" => {
            MFR_M07_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "RQI_I02_PROVIDER" => {
            RQI_I02_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RQI_I02_GUARANTOR_INSURANCE" => {
            RQI_I02_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "RQA_I11_AUTHORIZATION" => {
            RQA_I11_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RQA_I11_PROVIDER" => {
            RQA_I11_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RQA_I11_GUARANTOR_INSURANCE" => {
            RQA_I11_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "RQA_I11_PROCEDURE" => {
            RQA_I11_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RQA_I11_OBSERVATION" => {
            RQA_I11_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RQA_I11_VISIT" => {
            RQA_I11_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "ADT_A40_PATIENT" => {
            ADT_A40_PATIENT segmentInstance = {pid: {}, mrg: {}};
            return segmentInstance;
        }
        "ADT_A41_PATIENT" => {
            ADT_A41_PATIENT segmentInstance = {pid: {}, mrg: {}};
            return segmentInstance;
        }
        "RQI_I03_PROVIDER" => {
            RQI_I03_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RQI_I03_GUARANTOR_INSURANCE" => {
            RQI_I03_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "RQA_I10_AUTHORIZATION" => {
            RQA_I10_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RQA_I10_PROVIDER" => {
            RQA_I10_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RQA_I10_GUARANTOR_INSURANCE" => {
            RQA_I10_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "RQA_I10_PROCEDURE" => {
            RQA_I10_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RQA_I10_OBSERVATION" => {
            RQA_I10_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RQA_I10_VISIT" => {
            RQA_I10_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "MFR_M06_MF_QUERY" => {
            MFR_M06_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "SIU_S15_PATIENT" => {
            SIU_S15_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S15_RESOURCES" => {
            SIU_S15_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "MFR_M10_MF_QUERY" => {
            MFR_M10_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "CRM_C03_PATIENT" => {
            CRM_C03_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "SIU_S23_PATIENT" => {
            SIU_S23_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S23_RESOURCES" => {
            SIU_S23_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "PEX_P08_VISIT" => {
            PEX_P08_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PEX_P08_EXPERIENCE" => {
            PEX_P08_EXPERIENCE segmentInstance = {pes: {}};
            return segmentInstance;
        }
        "SRR_S10_SCHEDULE" => {
            SRR_S10_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRM_S07_PATIENT" => {
            SRM_S07_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S07_RESOURCES" => {
            SRM_S07_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT" => {
            NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT segmentInstance = {};
            return segmentInstance;
        }
        "SRM_S11_PATIENT" => {
            SRM_S11_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S11_RESOURCES" => {
            SRM_S11_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S06_SCHEDULE" => {
            SRR_S06_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SIU_S19_PATIENT" => {
            SIU_S19_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S19_RESOURCES" => {
            SIU_S19_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "RQA_I09_AUTHORIZATION" => {
            RQA_I09_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RQA_I09_PROVIDER" => {
            RQA_I09_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RQA_I09_GUARANTOR_INSURANCE" => {
            RQA_I09_GUARANTOR_INSURANCE segmentInstance = {};
            return segmentInstance;
        }
        "RQA_I09_PROCEDURE" => {
            RQA_I09_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RQA_I09_OBSERVATION" => {
            RQA_I09_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RQA_I09_VISIT" => {
            RQA_I09_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "SIU_S20_PATIENT" => {
            SIU_S20_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S20_RESOURCES" => {
            SIU_S20_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "MFR_M09_MF_QUERY" => {
            MFR_M09_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "SRM_S04_PATIENT" => {
            SRM_S04_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S04_RESOURCES" => {
            SRM_S04_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S05_SCHEDULE" => {
            SRR_S05_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "RRI_I14_AUTHORIZATION_CONTACT" => {
            RRI_I14_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RRI_I14_PROVIDER_CONTACT" => {
            RRI_I14_PROVIDER_CONTACT segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RRI_I14_PROCEDURE" => {
            RRI_I14_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RRI_I14_OBSERVATION" => {
            RRI_I14_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RRI_I14_PATIENT_VISIT" => {
            RRI_I14_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "ADT_A42_PATIENT" => {
            ADT_A42_PATIENT segmentInstance = {pid: {}, mrg: {}};
            return segmentInstance;
        }
        "MFR_M05_MF_QUERY" => {
            MFR_M05_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "SRM_S08_PATIENT" => {
            SRM_S08_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S08_RESOURCES" => {
            SRM_S08_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S09_SCHEDULE" => {
            SRR_S09_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SIU_S16_PATIENT" => {
            SIU_S16_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S16_RESOURCES" => {
            SIU_S16_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SIU_S17_PATIENT" => {
            SIU_S17_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S17_RESOURCES" => {
            SIU_S17_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S08_SCHEDULE" => {
            SRR_S08_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRM_S09_PATIENT" => {
            SRM_S09_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S09_RESOURCES" => {
            SRM_S09_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "MFR_M04_MF_QUERY" => {
            MFR_M04_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "RRI_I15_AUTHORIZATION_CONTACT" => {
            RRI_I15_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RRI_I15_PROVIDER_CONTACT" => {
            RRI_I15_PROVIDER_CONTACT segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RRI_I15_PROCEDURE" => {
            RRI_I15_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RRI_I15_OBSERVATION" => {
            RRI_I15_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RRI_I15_PATIENT_VISIT" => {
            RRI_I15_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "ADT_A14_PROCEDURE" => {
            ADT_A14_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A14_INSURANCE" => {
            ADT_A14_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "SRR_S04_SCHEDULE" => {
            SRR_S04_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRM_S05_PATIENT" => {
            SRM_S05_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S05_RESOURCES" => {
            SRM_S05_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "MFR_M08_MF_QUERY" => {
            MFR_M08_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "REF_I13_AUTHORIZATION_CONTACT" => {
            REF_I13_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "REF_I13_PROVIDER" => {
            REF_I13_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "REF_I13_INSURANCE" => {
            REF_I13_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "REF_I13_PROCEDURE" => {
            REF_I13_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "REF_I13_OBSERVATION" => {
            REF_I13_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "REF_I13_PATIENT_VISIT" => {
            REF_I13_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "SIU_S21_PATIENT" => {
            SIU_S21_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S21_RESOURCES" => {
            SIU_S21_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "ADT_A13_PROCEDURE" => {
            ADT_A13_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A13_INSURANCE" => {
            ADT_A13_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "PPG_PCH_PATIENT_VISIT" => {
            PPG_PCH_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPG_PCH_PATHWAY" => {
            PPG_PCH_PATHWAY segmentInstance = {pth: {}};
            return segmentInstance;
        }
        "ADT_A44_PATIENT" => {
            ADT_A44_PATIENT segmentInstance = {pid: {}, mrg: {}};
            return segmentInstance;
        }
        "ADT_A05_PROCEDURE" => {
            ADT_A05_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A05_INSURANCE" => {
            ADT_A05_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "RPA_I09_AUTHORIZATION" => {
            RPA_I09_AUTHORIZATION segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RPA_I09_PROVIDER" => {
            RPA_I09_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RPA_I09_INSURANCE" => {
            RPA_I09_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "RPA_I09_PROCEDURE" => {
            RPA_I09_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RPA_I09_OBSERVATION" => {
            RPA_I09_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RPA_I09_VISIT" => {
            RPA_I09_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "MFR_M03_MF_QUERY" => {
            MFR_M03_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "PGL_PC7_PATIENT_VISIT" => {
            PGL_PC7_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PGL_PC7_GOAL" => {
            PGL_PC7_GOAL segmentInstance = {gol: {}};
            return segmentInstance;
        }
        "RPR_I03_PROVIDER" => {
            RPR_I03_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "NMQ_N01_QRY_WITH_DETAIL" => {
            NMQ_N01_QRY_WITH_DETAIL segmentInstance = {qrd: {}};
            return segmentInstance;
        }
        "NMQ_N01_CLOCK_AND_STATISTICS" => {
            NMQ_N01_CLOCK_AND_STATISTICS segmentInstance = {};
            return segmentInstance;
        }
        "CSU_C10_PATIENT" => {
            CSU_C10_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "PPR_PC2_PATIENT_VISIT" => {
            PPR_PC2_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPR_PC2_PROBLEM" => {
            PPR_PC2_PROBLEM segmentInstance = {prb: {}};
            return segmentInstance;
        }
        "SIU_S26_PATIENT" => {
            SIU_S26_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SIU_S26_RESOURCES" => {
            SIU_S26_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "CRM_C06_PATIENT" => {
            CRM_C06_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "REF_I14_AUTHORIZATION_CONTACT" => {
            REF_I14_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "REF_I14_PROVIDER" => {
            REF_I14_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "REF_I14_INSURANCE" => {
            REF_I14_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "REF_I14_PROCEDURE" => {
            REF_I14_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "REF_I14_OBSERVATION" => {
            REF_I14_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "REF_I14_PATIENT_VISIT" => {
            REF_I14_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "SRM_S02_PATIENT" => {
            SRM_S02_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S02_RESOURCES" => {
            SRM_S02_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "SRR_S03_SCHEDULE" => {
            SRR_S03_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRR_S02_SCHEDULE" => {
            SRR_S02_SCHEDULE segmentInstance = {sch: {}};
            return segmentInstance;
        }
        "SRM_S03_PATIENT" => {
            SRM_S03_PATIENT segmentInstance = {pid: {}};
            return segmentInstance;
        }
        "SRM_S03_RESOURCES" => {
            SRM_S03_RESOURCES segmentInstance = {rgs: {}};
            return segmentInstance;
        }
        "ADT_A08_PROCEDURE" => {
            ADT_A08_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A08_INSURANCE" => {
            ADT_A08_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "REF_I15_AUTHORIZATION_CONTACT" => {
            REF_I15_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "REF_I15_PROVIDER" => {
            REF_I15_PROVIDER segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "REF_I15_INSURANCE" => {
            REF_I15_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "REF_I15_PROCEDURE" => {
            REF_I15_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "REF_I15_OBSERVATION" => {
            REF_I15_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "REF_I15_PATIENT_VISIT" => {
            REF_I15_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "CRM_C07_PATIENT" => {
            CRM_C07_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "PPR_PC3_PATIENT_VISIT" => {
            PPR_PC3_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
        }
        "PPR_PC3_PROBLEM" => {
            PPR_PC3_PROBLEM segmentInstance = {prb: {}};
            return segmentInstance;
        }
        "CSU_C11_PATIENT" => {
            CSU_C11_PATIENT segmentInstance = {pid: {}, csr: {}};
            return segmentInstance;
        }
        "ADT_A28_PROCEDURE" => {
            ADT_A28_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A28_INSURANCE" => {
            ADT_A28_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "MFR_M02_MF_QUERY" => {
            MFR_M02_MF_QUERY segmentInstance = {mfe: {}};
            return segmentInstance;
        }
        "ADT_A04_PROCEDURE" => {
            ADT_A04_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "ADT_A04_INSURANCE" => {
            ADT_A04_INSURANCE segmentInstance = {in1: {}};
            return segmentInstance;
        }
        "RRI_I13_AUTHORIZATION_CONTACT" => {
            RRI_I13_AUTHORIZATION_CONTACT segmentInstance = {aut: {}};
            return segmentInstance;
        }
        "RRI_I13_PROVIDER_CONTACT" => {
            RRI_I13_PROVIDER_CONTACT segmentInstance = {prd: {}};
            return segmentInstance;
        }
        "RRI_I13_PROCEDURE" => {
            RRI_I13_PROCEDURE segmentInstance = {pr1: {}};
            return segmentInstance;
        }
        "RRI_I13_OBSERVATION" => {
            RRI_I13_OBSERVATION segmentInstance = {obr: {}};
            return segmentInstance;
        }
        "RRI_I13_PATIENT_VISIT" => {
            RRI_I13_PATIENT_VISIT segmentInstance = {pv1: {}};
            return segmentInstance;
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
            return getSubComponent(<Type>val, subComponentposition, 0);
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
        } else if key != "name" && key != "isEmtpy" {
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
