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

import ballerina/lang.array;
import ballerinax/health.fhir.r4;

# Computable ANTLR checker
#
# Parameter list: (identifier, comparisonOperator, value list)
# + antlrList - ANTLR expressions list
# + return - Return Value Description# 
isolated function checkComputableAntlr(ANTLR[] antlrList) returns boolean {
    boolean finalResult = true;

    foreach ANTLR antlr in antlrList {
        match antlr.comparisonOperator {
            EQ => {
                finalResult = finalResult && contains(antlr.identifier, antlr.valueList);
            }
            IN => {
                finalResult = finalResult && contains(antlr.identifier, antlr.valueList);
            }
            NE => {
                finalResult = finalResult && !contains(antlr.identifier, antlr.valueList);
            }
            NIN => {
                finalResult = finalResult && !contains(antlr.identifier, antlr.valueList);
            }
        }
    }

    return finalResult;
}

// Comparison Operaions
isolated function contains(string x, string[] valueList) returns boolean => array:some(valueList, n => n == x);

// This utility function is used to construct the OperationOutcome resource for error scenarios.
isolated function getOperationOutcome(string detail) returns json {

    r4:OperationOutcome operationOutcome = {
        resourceType: "OperationOutcome",
        issue: [
            {
                severity: "error",
                code: "error",
                details: {
                    text: detail
                }
            }
        ]
    };
    return operationOutcome.toJson();
}

# Checks whether an HL7 segment carries any data (ignoring its name and parser bookkeeping fields).
#
# + segment - HL7 segment
# + return - true when at least one field is valued
isolated function hasSegmentContent(map<anydata> segment) returns boolean {
    foreach [string, anydata] [key, value] in segment.entries() {
        if key == "name" || key == "isRequired" {
            continue;
        }
        if hasValue(value) {
            return true;
        }
    }
    return false;
}

isolated function hasValue(anydata value) returns boolean {
    if value is () {
        return false;
    }
    if value is string {
        return value != "";
    }
    if value is anydata[] {
        return value.some(v => hasValue(v));
    }
    if value is map<anydata> {
        return value.toArray().some(v => hasValue(v));
    }
    // numeric/boolean defaults (e.g. -1.0 placeholders) are not treated as content
    return false;
}
