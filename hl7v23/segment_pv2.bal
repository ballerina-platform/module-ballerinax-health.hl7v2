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

# Patient visit - additional information.
#
# + name - Segment name 
# + pv21 - Prior Pending Location  
# + pv22 - Accommodation Code  
# + pv23 - Admit Reason  
# + pv24 - Transfer Reason  
# + pv25 - Patient Valuables  
# + pv26 - Patient Valuables Location  
# + pv27 - Visit User Code  
# + pv28 - Expected Admit Date  
# + pv29 - Expected Discharge Date  
# + pv210 - Estimated Length of Inpatient Stay  
# + pv211 - Actual Length of Inpatient Stay  
# + pv212 - Visit Description  
# + pv213 - Referral Source Code  
# + pv214 - Previous Service Date  
# + pv215 - Employment Illness Related Indicator  
# + pv216 - Purge Status Code  
# + pv217 - Purge Status Date  
# + pv218 - Special Program Code  
# + pv219 - Retention Indicator  
# + pv220 - Expected Number of Insurance Plans  
# + pv221 - Visit Publicity Code  
# + pv222 - Visit Protection Indicator  
# + pv223 - Clinic Organization Name  
# + pv224 - Patient Status Code  
# + pv225 - Visit Priority Code  
# + pv226 - Previous Treatment Date  
# + pv227 - Expected Discharge Disposition  
# + pv228 - Signature on File Date  
# + pv229 - First Similar Illness Date  
# + pv230 - Patient Charge Adjustment Code  
# + pv231 - Recurring Service Code  
# + pv232 - Billing Media Code  
# + pv233 - Expected Surgery Date & Time  
# + pv234 - Military Partnership Code  
# + pv235 - Military Non-Availabiltiy Code  
# + pv236 - Newborn Baby Indicator  
# + pv237 - Baby Detained Indicator
public type PV2 record {
    *hl7v2:Segment;
    string name = PV2_SEGMENT_NAME;
    PL pv21 = {};
    CE pv22 = {};
    CE pv23 = {};
    CE pv24 = {};
    ST pv25 = "";
    ST pv26 = "";
    IS pv27 = "";
    TS pv28 = {};
    TS pv29 = {};
    NM pv210 = -1;
    NM pv211 = -1;
    ST pv212 = "";
    XCN pv213 = {};
    DT pv214 = "";
    ID pv215 = "";
    IS pv216 = "";
    DT pv217 = "";
    IS pv218 = "";
    ID pv219 = "";
    NM pv220 = -1;
    IS pv221 = "";
    ID pv222 = "";
    XON pv223 = {};
    IS pv224 = "";
    IS pv225 = "";
    DT pv226 = "";
    IS pv227 = "";
    DT pv228 = "";
    DT pv229 = "";
    IS pv230 = "";
    IS pv231 = "";
    ID pv232 = "";
    TS pv233 = {};
    ID pv234 = "";
    ID pv235 = "";
    ID pv236 = "";
    ID pv237 = "";
};

public const PV2_SEGMENT_NAME = "PV2";
