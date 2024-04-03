// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).

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

import health.hl7v2;

import ballerina/test;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.fhir.r4;

final string msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

@test:Config {}
function hlStringMessageParseTest() {
    hl7:Message|error parsedMsg = stringToHl7(msg);
    if parsedMsg is hl7v2:Message {
        test:assertEquals(parsedMsg.name, "ADT_A01", "Parsing issue occurred with the message");
    } else {
        test:assertFail("Parsing failed.");
    }
}

@test:Config {}
function v2toFhirTransformTest() {
    json|error adtToFhirBundle = v2ToFhir(msg);
    if adtToFhirBundle is json {
        r4:Bundle|error resultantBundle = adtToFhirBundle.cloneWithType(r4:Bundle);
        if resultantBundle is r4:Bundle {
            r4:BundleEntry[] entries = resultantBundle.entry ?: [];
            test:assertEquals(entries.length(), 5, "Transforming issue occurred with the message");
            
        } else {
            test:assertFail("ADT_A01 msg to FHIR transforming failed.");
        }
    } else {
        test:assertFail("ADT_A01 msg to FHIR transforming failed.");
    }
}
