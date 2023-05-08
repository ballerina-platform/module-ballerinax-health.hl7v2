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

# QUERY_RESPONSE Segment Group
#
# + name - Segment Group Name 
# + isRequired - Is Segment Group Required
# + evn - ENV Segment
# + pid - PID Segment 
# + pd1 - PD1 Segment
# + nk1 - NK1 Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment 
# + db1 - DB1 Segment
# + obx - OBX Segment 
# + al1 - AL1 Segment
# + dg1 - DG1 Segment
# + drg - DRG Segment
# + procedure - PROCEDURE Segment
# + acc - ACC Segment
@hl7v2:SegmentComponentDefinition {
    required: true,
    maxReps: -1
}
public type QUERY_RESPONSE record {
    *hl7v2:SegmentComponent;
    string name = QUERY_RESPONSE_SEGMENT_COMPONENT;
    boolean isRequired = true;
    EVN evn?;
    PID pid?;
    PD1 pd1?;
    NK1[] nk1 = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    PROCEDURE[] procedure = [];
    ACC acc?;
};

public const QUERY_RESPONSE_SEGMENT_COMPONENT = "QUERY_RESPONSE";
