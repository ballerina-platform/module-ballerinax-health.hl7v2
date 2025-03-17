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

isolated function getStringExtension(string[] itemList) returns r4:StringExtension[]? {
    r4:StringExtension[] stringExtensions = [];

    foreach string item in itemList {
        if item != "" {
            stringExtensions.push({
                url: "http://hl7.org/fhir/StructureDefinition/contactpoint-country",
                valueString: item
            });
        }
    }

    return (stringExtensions.length() > 0) ? stringExtensions : ();
}

function getIntegerExtension(string[] itemList) returns r4:IntegerExtension[]|error {
    r4:IntegerExtension[] integerExtensions = [];

    foreach string item in itemList {
        if item != "-1" && item != "" {
            integerExtensions.push({
                url: item.toString(),
                valueInteger: check int:fromHexString(item)
            });
        }
    }

    return integerExtensions;
}
