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

import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

// Concept maps below follow the HL7 v2-to-FHIR IG ConceptMaps (codesystems/*.csv). Codes without a target in the
// concept map return nil so that no invented value is emitted.

// NameType (HL70200) -> HumanName.use
public isolated function idToHumanNameUse(Id id) returns r4:HumanNameUse? {
    match id {
        "L"|"R" => {
            return "official";
        }
        "D" => {
            return "usual";
        }
        "M" => {
            return "maiden";
        }
        "N" => {
            return "nickname";
        }
        "BAD" => {
            return "old";
        }
        "TEMP"|"NAV" => {
            return "temp";
        }
        "MSK" => {
            return "anonymous";
        }
    }
    return ();
}

// AddressType[Type] (HL70190) -> Address.type
public isolated function idToAddressType(Id id) returns r4:AddressType? {
    match id {
        "M"|"SH" => {
            return "postal";
        }
    }
    return id is r4:AddressType ? id : ();
}

// AddressType[Use] (HL70190) -> Address.use
public isolated function idToAddressUse(Id id) returns r4:AddressUse? {
    match id {
        "O"|"B" => {
            return "work";
        }
        "H" => {
            return "home";
        }
        "BA" => {
            return "old";
        }
        "BI" => {
            return "billing";
        }
        "C" => {
            return "temp";
        }
    }
    return ();
}

// TelecommunicationUseCode (HL70201) -> ContactPoint.use
public isolated function idToContactPointUse(Id id) returns r4:ContactPointUse? {
    match id {
        "PRN" => {
            return "home";
        }
        "WPN" => {
            return "work";
        }
        "PRS" => {
            return "mobile";
        }
    }
    return ();
}

// TelecommunicationEquipmentType (HL70202) -> ContactPoint.system
public isolated function idToContactPointSystem(Id id) returns r4:ContactPointSystem? {
    match id {
        "PH"|"CP" => {
            return "phone";
        }
        "FX" => {
            return "fax";
        }
        "BP" => {
            return "pager";
        }
        "Internet"|"X.400" => {
            return "email";
        }
        "MD"|"SAT"|"TDD"|"TTY" => {
            return "other";
        }
    }
    return ();
}

// AllergenType[AllergyIntoleranceCategory] (HL70127) -> AllergyIntolerance.category
public isolated function isToAllergyIntoleranceCategory(Is 'is) returns international401:AllergyIntoleranceCategory? {
    match 'is {
        "DA" => {
            return "medication";
        }
        "FA" => {
            return "food";
        }
        "EA"|"PA"|"LA" => {
            return "environment";
        }
        "AA" => {
            return "biologic";
        }
    }
    return ();
}

// AllergyType (HL70127) -> AllergyIntolerance.type
public isolated function isToAllergyIntoleranceType(string 'is) returns international401:AllergyIntoleranceType? {
    match 'is {
        "DA"|"FA"|"MA"|"EA"|"AA"|"PA"|"LA" => {
            return "allergy";
        }
    }
    return ();
}

// AllergySeverity[AllergyIntolerance.criticality] (HL70128) -> AllergyIntolerance.criticality
public isolated function isToAllergyIntoleranceCriticality(Is 'is) returns international401:AllergyIntoleranceCriticality? {
    match 'is {
        "SV" => {
            return "high";
        }
        "MI" => {
            return "low";
        }
    }
    return ();
}

// ResultStatus[Non-Queries] (HL70123) -> DiagnosticReport.status.
// NOTE: international401 restricts DiagnosticReportStatus to final|registered|preliminary|partial, so the concept-map
// targets corrected (C) and cancelled (X) cannot be represented; those and unmapped codes fall back to "final".
public isolated function idToDiagnosticReportStatus(hl7v23:ID id) returns international401:DiagnosticReportStatus {
    match id {
        "O"|"I"|"S" => {
            return international401:CODE_STATUS_REGISTERED;
        }
        "P" => {
            return international401:CODE_STATUS_PRELIMINARY;
        }
        "R" => {
            return international401:CODE_STATUS_PARTIAL;
        }
    }
    return international401:CODE_STATUS_FINAL;
}

// ObservationResultStatusCodesInterpretation (HL70085) -> Observation.status.
// NOTE: international401 restricts ObservationStatus to amended|final|registered|preliminary. C (corrected) maps to
// its parent status "amended"; D/W (entered-in-error) and X (cancelled) cannot be represented and, like unmapped
// codes, fall back to "preliminary".
public isolated function idToObservationStatus(hl7v23:ID id) returns international401:ObservationStatus {
    match id {
        "A"|"C" => {
            return "amended";
        }
        "F" => {
            return "final";
        }
    }
    return "preliminary";
}

public isolated function nameToServiceRequestIntent(string name) returns international401:ServiceRequestIntent => name is international401:ServiceRequestIntent ? name : "proposal";

// ExtendedPriorityCodes (HL70485) -> ServiceRequest.priority
public isolated function idToServiceRequestPriority(hl7v23:ID id) returns international401:ServiceRequestPriority? {
    match id {
        "S" => {
            return "stat";
        }
        "A" => {
            return "asap";
        }
        "R" => {
            return "routine";
        }
    }
    return ();
}

enum ComparisonOperator {
    EQ, // Matches values that are equal to a specified value.
    GT, // Matches values that are greater than a specified value.
    GTE, // Matches values that are greater than or equal to a specified value.
    IN, // Matches any of the values specified in an array.
    LT, // Matches values that are less than a specified value.
    LTE, // Matches values that are less than or equal to a specified value.
    NE, // Matches all values that are not equal to a specified value.
    NIN // Matches none of the values specified in an array.
}

enum LogicalOperator {
    AND,
    NOT,
    NOR,
    OR
}

# Standard ANTLR Record Definition
#
# + identifier - HL7 v2 Identifier(ID)
# + comparisonOperator - [EQ, GT, GTE, IN, LT, LTE, NE, NIN] - Comparison logic
# + valueList - Values to be applied with the logic to compare identifier
type ANTLR record {|
    string identifier;
    ComparisonOperator comparisonOperator;
    string[] valueList;
|};
