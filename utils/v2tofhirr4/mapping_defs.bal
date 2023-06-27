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

import ballerinax/health.fhir.r4;

# ####################################################################################################
# Mapping function definitions for V2 to FHIR
# ####################################################################################################

# Mapping function type for PV1 segment to Patient FHIR resource.
public type Pv1ToPatient function (Pv1 pv1) returns r4:Patient;

# Mapping function type for PV1 segment to Encounter FHIR resource.
public type Pv1ToEncounter function (Pv1 pv1) returns r4:Encounter;

# Mapping function type for NK1 segment to Patient FHIR resource.
public type Nk1ToPatient function (Nk1 nk1) returns r4:Patient;

# Mapping function type for PD1 segment to Patient FHIR resource.
public type Pd1ToPatient function (Pd1 pd1) returns r4:Patient;

# Mapping function type for PID segment to Patient FHIR resource.
public type PidToPatient function (Pid pid) returns r4:Patient;

# Mapping function type for DG1 segment to Condition FHIR resource.
public type Dg1ToCondition function (Dg1 dg1) returns r4:Condition;

# Mapping function type for OBX segment to Observation FHIR resource.
public type ObxToObservation function (Obx obx) returns r4:Observation;

# Mapping function type for OBR segment to DiagnosticReport FHIR resource.
public type ObrToDiagnosticReport function (Obr obr) returns r4:DiagnosticReport;

# Mapping function type for AL1 segment to AllergyIntolerance FHIR resource.
public type Al1ToAllerygyIntolerance function (Al1 al1) returns r4:AllergyIntolerance;

# Mapping function type for EVN segment to Provenance FHIR resource.
public type EvnToProvenance function (Evn evn) returns r4:Provenance;

# Mapping function type for MSH segment to MessageHeader FHIR resource.
public type MshToMessageHeader function (Msh msh) returns r4:MessageHeader;

# Mapping function type for PV2 segment to Encounter FHIR resource.
public type Pv2ToEncounter function (Pv2 pv2) returns r4:Encounter;

# Mapping function type for ORC segment to Immunization FHIR resource.
public type OrcToImmunization function (Orc orc) returns r4:Immunization;

# V2toFHIR Mapper function implementation holder record.
#
# + pv1ToPatient - PV1 segment to Patient FHIR resource mapping function  
# + pv1ToEncounter - PV1 segment to Encounter FHIR resource mapping function  
# + nk1ToPatient - NK1 segment to Patient FHIR resource mapping function 
# + pd1ToPatient - PD1 segment to Patient FHIR resource mapping function  
# + pidToPatient - PID segment to Patient FHIR resource mapping function  
# + dg1ToCondition - DG1 segment to Condition FHIR resource mapping function  
# + obxToObservation - OBX segment to Observation FHIR resource mapping function  
# + obrToDiagnosticReport - OBR segment to DiagnosticReport FHIR resource mapping function  
# + al1ToAllerygyIntolerance - AL1 segment to AllergyIntolerance FHIR resource mapping function  
# + evnToProvenance - EVN segment to Provenance FHIR resource mapping function  
# + mshToMessageHeader - MSH segment to MessageHeader FHIR resource mapping function  
# + pv2ToEncounter - PV2 segment to Encounter FHIR resource mapping function  
# + orcToImmunization - ORC segment to Immunization FHIR resource mapping function
public type SegmentToFhir record {
    Pv1ToPatient pv1ToPatient?;
    Pv1ToEncounter pv1ToEncounter?;
    Nk1ToPatient nk1ToPatient?;
    Pd1ToPatient pd1ToPatient?;
    PidToPatient pidToPatient?;
    Dg1ToCondition dg1ToCondition?;
    ObxToObservation obxToObservation?;
    ObrToDiagnosticReport obrToDiagnosticReport?;
    Al1ToAllerygyIntolerance al1ToAllerygyIntolerance?;
    EvnToProvenance evnToProvenance?;
    MshToMessageHeader mshToMessageHeader?;
    Pv2ToEncounter pv2ToEncounter?;
    OrcToImmunization orcToImmunization?;
};

# Context class to hold v2tofhir mapper related context information.
public class V2ToFhirMapperContext {
    private SegmentToFhir mapperImpl = {
        pv1ToPatient: pv1ToPatient,
        pv1ToEncounter: pv1ToEncounter,
        nk1ToPatient: nk1ToPatient,
        pd1ToPatient: pd1ToPatient,
        pidToPatient: pidToPatient,
        dg1ToCondition: dg1ToCondition,
        obxToObservation: obxToObservation,
        obrToDiagnosticReport: obrToDiagnosticReport,
        al1ToAllerygyIntolerance: al1ToAllerygyIntolerance,
        evnToProvenance: evnToProvenance,
        mshToMessageHeader: mshToMessageHeader,
        pv2ToEncounter: pv2ToEncounter,
        orcToImmunization: orcToImmunization
    };

    function getDefaultImpl() returns SegmentToFhir => self.mapperImpl;
}
