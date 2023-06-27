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
import ballerina/lang.array;

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
