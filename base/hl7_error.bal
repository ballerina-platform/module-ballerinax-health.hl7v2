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

# Error flag used for HL7 event parsing errors.
public const HL7_V2_PARSER_ERROR = "HL7ParserError";
# Error flag used for errors occur in HL7 client side.
public const HL7_V2_CLIENT_ERROR = "HL7ClientError";
# Error flag used when HL7 validation errors occur.
public const HL7_V2_MSG_VALIDATION_ERROR = "HL7MessageValidationError";

# HL7Error detail.
#
# + message - Descriptive message about the error
# + cause - Cause of the error
public type HL7ErrorData record {
    string message?;
    error cause?;
};

# Base HL7 error.
public type HL7Error error<HL7ErrorData>;
