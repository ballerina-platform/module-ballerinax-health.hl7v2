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


# Contains information relative to various types of procedures that can be performed on a patient.
#
# + name - Segment name  
# + pr11 - Set ID - Procedure
# + pr12 - Procedure Coding Method 
# + pr13 - Procedure Code 
# + pr14 - Procedure Description  
# + pr15 - Procedure Date/Time  
# + pr16 - Procedure Type  
# + pr17 - Procedure Minutes  
# + pr18 - Anesthesiologist  
# + pr19 - Anesthesia Code  
# + pr110 - Anesthesia Minutes  
# + pr111 - Surgeon  
# + pr112 - Procedure Practitioner  
# + pr113 - Consent Code  
# + pr114 - Procedure Priority  
# + pr115 - Associated Diagnosis Code
public type PR1 record {
    *hl7v2:Segment;
    string name = PR1_SEGMENT_NAME;
    SI pr11 = -1;
    IS pr12 = "";
    CE pr13 = {};
    ST pr14 = "";
    TS pr15 = {};
    IS pr16 = "";
    NM pr17 = -1;
    XCN pr18 = {};
    IS pr19 = "";
    NM pr110 = -1;
    XCN pr111 = {};
    XCN pr112 = {};
    CE pr113 = {};
    NM pr114 = -1;
    CE pr115 = {};
};

public const PR1_SEGMENT_NAME = "PR1";
