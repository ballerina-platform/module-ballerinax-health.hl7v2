// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

import ballerinax/health.fhir.r4.international401;

# ####################################################################################################
# Mapping function definitions for V2 to FHIR
# ####################################################################################################

# Mapping function type for PV1 segment to Patient FHIR resource.
public type Pv1ToPatient isolated function (Pv1 pv1) returns international401:Patient;

# Mapping function type for PV1 segment to Encounter FHIR resource.
public type Pv1ToEncounter isolated function (Pv1 pv1) returns international401:Encounter;

# Mapping function type for NK1 segment to Patient FHIR resource.
public type Nk1ToPatient isolated function (Nk1 nk1) returns international401:Patient;

# Mapping function type for PD1 segment to Patient FHIR resource.
public type Pd1ToPatient isolated function (Pd1 pd1) returns international401:Patient;

# Mapping function type for PID segment to Patient FHIR resource.
public type PidToPatient isolated function (Pid pid) returns international401:Patient;

# Mapping function type for DG1 segment to Condition FHIR resource.
public type Dg1ToCondition isolated function (Dg1 dg1) returns international401:Condition;

# Mapping function type for DG1 segment to Encounter FHIR resource.
public type Dg1ToEncounter isolated function (Dg1 dg1, string? conditionId) returns international401:Encounter;

# Mapping function type for DG1 segment to EpisodeOfCare FHIR resource.
public type Dg1ToEpisodeOfCare isolated function (Dg1 dg1, string? conditionId, string? patientId) returns international401:EpisodeOfCare;

# Mapping function type for OBX segment to Observation FHIR resource.
public type ObxToObservation isolated function (Obx obx) returns international401:Observation;

# Mapping function type for OBR segment to DiagnosticReport FHIR resource.
public type ObrToDiagnosticReport isolated function (Obr obr) returns international401:DiagnosticReport;

# Mapping function type for AL1 segment to AllergyIntolerance FHIR resource.
public type Al1ToAllerygyIntolerance isolated function (Al1 al1) returns international401:AllergyIntolerance;

# Mapping function type for EVN segment to Provenance FHIR resource.
public type EvnToProvenance isolated function (Evn evn) returns international401:Provenance;

# Mapping function type for MSH segment to MessageHeader FHIR resource.
public type MshToMessageHeader isolated function (Msh msh) returns international401:MessageHeader;

# Mapping function type for PV2 segment to Encounter FHIR resource.
public type Pv2ToEncounter isolated function (Pv2 pv2) returns international401:Encounter;

# Mapping function type for ORC segment to Immunization FHIR resource.
public type OrcToImmunization isolated function (Orc orc) returns international401:Immunization;

# Mapping function type for NK1 segment to RelatedPerson FHIR resource.
public type Nk1ToRelatedPerson isolated function (Nk1 nk1) returns international401:RelatedPerson;

# Mapping function type for NTE segment to Observation FHIR resource.
public type NteToObservation isolated function (Nte nte) returns international401:Observation;

# Mapping function type for ORC segment to ServiceRequest FHIR resource.
public type OrcToServiceRequest isolated function (Orc orc) returns international401:ServiceRequest;

# Mapping function type for OBR segment to ServiceRequest FHIR resource.
public type ObrToServiceRequest isolated function (Obr obr) returns international401:ServiceRequest;

# Mapping function type for PR1 segment to Procedure FHIR resource.
public type Pr1ToProcedure isolated function (Pr1 pr1) returns international401:Procedure;

# Mapping function type for RXA segment to Immunization FHIR resource.
public type RxaToImmunization isolated function (Rxa rxa) returns international401:Immunization;

# Mapping function type for RXO segment to MedicationRequest FHIR resource.
public type RxoToMedicationRequest isolated function (Rxo rxo) returns international401:MedicationRequest;

# Mapping function type for RXR segment to Immunization FHIR resource.
public type RxrToImmunization isolated function (Rxr rxr) returns international401:Immunization;

# Mapping function type for RXR segment to MedicationRequest FHIR resource.
public type RxrToMedicationRequest isolated function (Rxr rxr) returns international401:MedicationRequest;

# Mapping function type for SCH segment to Appointment FHIR resource.
public type SchToAppointment isolated function (Sch sch) returns international401:Appointment;

# Mapping function type for TXA segment to DocumentReference FHIR resource.
public type TxaToDocumentReference isolated function (Txa txa) returns international401:DocumentReference;

# Mapping function type for ROL segment to RelatedPerson FHIR resource.
public type RolToRelatedPerson isolated function (Rol rol) returns international401:RelatedPerson;

# Mapping function type for MSA segment to MessageHeader FHIR resource.
public type MsaToMessageHeader isolated function (Msa msa) returns international401:MessageHeader;

# Mapping function type for MRG segment to Account FHIR resource.
public type MrgToAccount isolated function (Mrg mrg) returns international401:Account;

# Mapping function type for IN1 segment to Coverage FHIR resource.
public type In1ToCoverage isolated function (In1 in1) returns international401:Coverage;

# Mapping function type for IN3 segment to CareTeam FHIR resource.
public type In3ToCareTeam isolated function (In3 in3) returns international401:CareTeam;

# Mapping function type for PV1 segment to Coverage FHIR resource.
public type Pv1ToCoverage isolated function (Pv1 pv1) returns international401:Coverage;

# Mapping function type for AIG segment to Appointment FHIR resource.
public type AigToAppointment isolated function (Aig aig) returns international401:Appointment;

# Mapping function type for AIL segment to Appointment FHIR resource.
public type AilToAppointment isolated function (Ail ail) returns international401:Appointment;

# Mapping function type for AIP segment to Appointment FHIR resource.
public type AipToAppointment isolated function (Aip aip) returns international401:Appointment;

# Mapping function type for AIS segment to Appointment FHIR resource.
public type AisToAppointment isolated function (Ais ais) returns international401:Appointment;

# V2toFHIR Mapper function implementation holder record.
#
# + pv1ToPatient - PV1 segment to Patient FHIR resource mapping function
# + pv1ToEncounter - PV1 segment to Encounter FHIR resource mapping function
# + pv1ToCoverage - PV1 segment to Coverage FHIR resource mapping function
# + nk1ToPatient - NK1 segment to Patient FHIR resource mapping function
# + nk1ToRelatedPerson - NK1 segment to RelatedPerson FHIR resource mapping function
# + pd1ToPatient - PD1 segment to Patient FHIR resource mapping function
# + pidToPatient - PID segment to Patient FHIR resource mapping function
# + dg1ToCondition - DG1 segment to Condition FHIR resource mapping function
# + dg1ToEncounter - DG1 segment to Encounter FHIR resource mapping function
# + dg1ToEpisodeOfCare - DG1 segment to EpisodeOfCare FHIR resource mapping function
# + obxToObservation - OBX segment to Observation FHIR resource mapping function
# + obrToDiagnosticReport - OBR segment to DiagnosticReport FHIR resource mapping function
# + obrToServiceRequest - OBR segment to ServiceRequest FHIR resource mapping function
# + al1ToAllerygyIntolerance - AL1 segment to AllergyIntolerance FHIR resource mapping function
# + evnToProvenance - EVN segment to Provenance FHIR resource mapping function
# + mshToMessageHeader - MSH segment to MessageHeader FHIR resource mapping function
# + pv2ToEncounter - PV2 segment to Encounter FHIR resource mapping function
# + orcToImmunization - ORC segment to Immunization FHIR resource mapping function
# + orcToServiceRequest - ORC segment to ServiceRequest FHIR resource mapping function
# + nteToObservation - NTE segment to Observation FHIR resource mapping function
# + pr1ToProcedure - PR1 segment to Procedure FHIR resource mapping function
# + rxaToImmunization - RXA segment to Immunization FHIR resource mapping function
# + rxoToMedicationRequest - RXO segment to MedicationRequest FHIR resource mapping function
# + rxrToImmunization - RXR segment to Immunization FHIR resource mapping function
# + rxrToMedicationRequest - RXR segment to MedicationRequest FHIR resource mapping function
# + schToAppointment - SCH segment to Appointment FHIR resource mapping function
# + txaToDocumentReference - TXA segment to DocumentReference FHIR resource mapping function
# + rolToRelatedPerson - ROL segment to RelatedPerson FHIR resource mapping function
# + msaToMessageHeader - MSA segment to MessageHeader FHIR resource mapping function
# + mrgToAccount - MRG segment to Account FHIR resource mapping function
# + in1ToCoverage - IN1 segment to Coverage FHIR resource mapping function
# + in3ToCareTeam - IN3 segment to CareTeam FHIR resource mapping function
# + aigToAppointment - AIG segment to Appointment FHIR resource mapping function
# + ailToAppointment - AIL segment to Appointment FHIR resource mapping function
# + aipToAppointment - AIP segment to Appointment FHIR resource mapping function
# + aisToAppointment - AIS segment to Appointment FHIR resource mapping function
public type V2SegmentToFhirMapper record {
    Pv1ToPatient pv1ToPatient?;
    Pv1ToEncounter pv1ToEncounter?;
    Pv1ToCoverage pv1ToCoverage?;
    Nk1ToPatient nk1ToPatient?;
    Nk1ToRelatedPerson nk1ToRelatedPerson?;
    Pd1ToPatient pd1ToPatient?;
    PidToPatient pidToPatient?;
    Dg1ToCondition dg1ToCondition?;
    Dg1ToEncounter dg1ToEncounter?;
    Dg1ToEpisodeOfCare dg1ToEpisodeOfCare?;
    ObxToObservation obxToObservation?;
    ObrToDiagnosticReport obrToDiagnosticReport?;
    ObrToServiceRequest obrToServiceRequest?;
    Al1ToAllerygyIntolerance al1ToAllerygyIntolerance?;
    EvnToProvenance evnToProvenance?;
    MshToMessageHeader mshToMessageHeader?;
    Pv2ToEncounter pv2ToEncounter?;
    OrcToImmunization orcToImmunization?;
    OrcToServiceRequest orcToServiceRequest?;
    NteToObservation nteToObservation?;
    Pr1ToProcedure pr1ToProcedure?;
    RxaToImmunization rxaToImmunization?;
    RxoToMedicationRequest rxoToMedicationRequest?;
    RxrToImmunization rxrToImmunization?;
    RxrToMedicationRequest rxrToMedicationRequest?;
    SchToAppointment schToAppointment?;
    TxaToDocumentReference txaToDocumentReference?;
    RolToRelatedPerson rolToRelatedPerson?;
    MsaToMessageHeader msaToMessageHeader?;
    MrgToAccount mrgToAccount?;
    In1ToCoverage in1ToCoverage?;
    In3ToCareTeam in3ToCareTeam?;
    AigToAppointment aigToAppointment?;
    AilToAppointment ailToAppointment?;
    AipToAppointment aipToAppointment?;
    AisToAppointment aisToAppointment?;
};

// Record initialized with the default mapping functions.
final readonly & V2SegmentToFhirMapper defaultMapper = {
    pv1ToPatient,
    pv1ToEncounter,
    pv1ToCoverage,
    nk1ToPatient,
    nk1ToRelatedPerson,
    pd1ToPatient,
    pidToPatient,
    dg1ToCondition,
    dg1ToEncounter,
    dg1ToEpisodeOfCare,
    obxToObservation,
    obrToDiagnosticReport,
    obrToServiceRequest,
    al1ToAllerygyIntolerance,
    evnToProvenance,
    mshToMessageHeader,
    pv2ToEncounter,
    orcToImmunization,
    orcToServiceRequest,
    nteToObservation,
    pr1ToProcedure,
    rxaToImmunization,
    rxoToMedicationRequest,
    rxrToImmunization,
    rxrToMedicationRequest,
    schToAppointment,
    txaToDocumentReference,
    rolToRelatedPerson,
    msaToMessageHeader,
    mrgToAccount,
    in1ToCoverage,
    in3ToCareTeam,
    aigToAppointment,
    ailToAppointment,
    aipToAppointment,
    aisToAppointment
};

