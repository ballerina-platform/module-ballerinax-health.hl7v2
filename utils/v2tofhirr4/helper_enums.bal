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
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v23;
import ballerinax/health.hl7v25;

public function idToHumanNameUse(hl7v23:ID|hl7v24:ID|hl7v25:ID id) returns r4:HumanNameUse {
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

public function idToAddressType(hl7v23:ID|hl7v24:ID|hl7v25:ID id) returns r4:AddressType => id is r4:AddressType ? id : "postal";

public function idToAddressUse(hl7v23:ID|hl7v24:ID|hl7v25:ID id) returns r4:AddressUse? {
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

public function idToContactPointUse(hl7v23:ID|hl7v24:ID|hl7v25:ID id) returns r4:ContactPointUse => id is r4:ContactPointUse ? id : "home";

public function idToContactPointSystem(hl7v23:ID|hl7v24:ID|hl7v25:ID id) returns r4:ContactPointSystem => id is r4:ContactPointSystem ? id : "phone";

public function isToAllergyIntoleranceCategory(hl7v23:IS|hl7v24:IS|hl7v25:IS 'is) returns r4:AllergyIntoleranceCategory => 'is is r4:AllergyIntoleranceCategory ? 'is : "environment";

public function isToAllergyIntoleranceType(string 'is) returns r4:AllergyIntoleranceType => 'is is r4:AllergyIntoleranceType ? 'is : "intolerance";

public function isToAllergyIntoleranceCriticality(hl7v23:IS|hl7v24:IS|hl7v25:IS 'is) returns r4:AllergyIntoleranceCriticality => 'is is r4:AllergyIntoleranceCriticality ? 'is : "high";

public function idToDiagnosticReportStatus(hl7v23:ID id) returns r4:DiagnosticReportStatus => id is r4:DiagnosticReportStatus ? id : "final";

public function nameToServiceRequestIntent(string name) returns r4:ServiceRequestIntent => name is r4:ServiceRequestIntent ? name : "proposal";

public function idToServiceRequestPriority(hl7v23:ID id) returns r4:ServiceRequestPriority => id is r4:ServiceRequestPriority ? id : "stat";

public enum ComparisonOperator {
    EQ, // Matches values that are equal to a specified value.
    GT, // Matches values that are greater than a specified value.
    GTE, // Matches values that are greater than or equal to a specified value.
    IN, // Matches any of the values specified in an array.
    LT, // Matches values that are less than a specified value.
    LTE, // Matches values that are less than or equal to a specified value.
    NE, // Matches all values that are not equal to a specified value.
    NIN // Matches none of the values specified in an array.
}

public enum LogicalOperator {
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
public type ANTLR record {|
    string identifier;
    ComparisonOperator comparisonOperator;
    string[] valueList;
|};
