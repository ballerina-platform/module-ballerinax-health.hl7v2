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

# Holds encoding characters used in the HL7 message.
public class EncodingCharacters {
    string fieldSeparator;
    string[] encodingChars;

    public isolated function init(string? fieldSeparator, string[]? encodingChars) {
        if fieldSeparator is string {
            self.fieldSeparator = fieldSeparator;
        } else {
            self.fieldSeparator = "|";
        }

        if encodingChars is string[] {
            //todo: validate the custom encoding charaters
            self.encodingChars = encodingChars;
        } else {
            self.encodingChars = ["^", "~", "\\", "&", "#"];
        }
    }

    public isolated function getFieldSeparator() returns string {
        return self.fieldSeparator;
    }

    public isolated function getFieldSeparatorWithEscapeChars() returns string {
        return "\\" + self.fieldSeparator;
    }

    public isolated function getComponentSeparator() returns string {
        return self.encodingChars[0];
    }

    public isolated function getComponentSeparatorWithEscapeChars() returns string {
        return "\\" + self.encodingChars[0];
    }

    public isolated function getRepetitionSeperator() returns string {
        return self.encodingChars[1];
    }

    public isolated function getEscapeCharacter() returns string {
        return self.encodingChars[2];
    }

    public isolated function getSubcomponentSeparator() returns string {
        return self.encodingChars[3];
    }

    public isolated function getTruncationCharacter() returns string {
        return self.encodingChars[4];
    }
}
