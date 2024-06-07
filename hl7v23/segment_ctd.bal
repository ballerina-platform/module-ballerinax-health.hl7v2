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
import ballerinax/health.hl7v2;

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + ctd1 - Contact Role
# + ctd2 - Contact Name
# + ctd3 - Contact Address
# + ctd4 - Contact Location
# + ctd5 - Contact Communication Information
# + ctd6 - Preferred Method of Contact
# + ctd7 - Contact Identifiers
@hl7v2:SegmentDefinition {
    name: "CTD",
    required: false,
    maxReps: 0,
    fields: {
        "ctd1": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ctd2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "ctd3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "ctd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "ctd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "ctd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ctd7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_PI
        }
    }
}
public type CTD record {
    *hl7v2:Segment;
    string name = CTD_SEGMENT_NAME;
    CE[] ctd1 = [{}];
    XPN[] ctd2 = [{}];
    XAD[] ctd3 = [{}];
    PL ctd4 = {};
    XTN[] ctd5 = [{}];
    CE ctd6 = {};
    CM_PI[] ctd7 = [{}];
};

public const CTD_SEGMENT_NAME = "CTD";
