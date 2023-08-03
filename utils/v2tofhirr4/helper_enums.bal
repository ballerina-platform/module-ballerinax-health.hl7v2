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
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

public isolated function idToHumanNameUse(Id id) returns r4:HumanNameUse {
    match id {
        "L" => {
            return "official";
        }
        "A" => {
            return "old";
        }
        "D" => {
            return "usual";
        }
        "M" => {
            return "maiden";
        }
        "O" => {
            return "nickname";
        }
        _ => {
            return "usual";
        }
    }
}

public isolated function idToAddressType(Id id) returns r4:AddressType => id is r4:AddressType ? id : "postal";

public isolated function idToAddressUse(Id id) returns r4:AddressUse? {
    match id {
        "O" => {
            return "work";
        }
        "H" => {
            return "home";
        }
        "M" => {
            return "home";
        }
        "P" => {
            return "billing";
        }
        "B" => {
            return "work";
        }
    }
    return ();
}

public isolated function idToContactPointUse(Id id) returns r4:ContactPointUse => id is r4:ContactPointUse ? id : "home";

public isolated function idToContactPointSystem(Id id) returns r4:ContactPointSystem => id is r4:ContactPointSystem ? id : "phone";

public isolated function isToAllergyIntoleranceCategory(Is 'is) returns international401:AllergyIntoleranceCategory => 'is is international401:AllergyIntoleranceCategory ? 'is : "environment";

public isolated function isToAllergyIntoleranceType(string 'is) returns international401:AllergyIntoleranceType => 'is is international401:AllergyIntoleranceType ? 'is : "intolerance";

public isolated function isToAllergyIntoleranceCriticality(Is 'is) returns international401:AllergyIntoleranceCriticality => 'is is international401:AllergyIntoleranceCriticality ? 'is : "high";

public isolated function idToDiagnosticReportStatus(hl7v23:ID id) returns international401:DiagnosticReportStatus => id is international401:DiagnosticReportStatus ? id : "final";

public isolated function nameToServiceRequestIntent(string name) returns international401:ServiceRequestIntent => name is international401:ServiceRequestIntent ? name : "proposal";

public isolated function idToServiceRequestPriority(hl7v23:ID id) returns international401:ServiceRequestPriority => id is international401:ServiceRequestPriority ? id : "stat";

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
