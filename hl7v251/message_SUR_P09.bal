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
public const SUR_P09_MESSAGE_TYPE = "SUR_P09";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + facpshpdcpshfacpdcnteed_suppgrp - SUR_P09_FACPSHPDCPSHFACPDCNTEED_SUPPGRP Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH}
    }
    ,groups: {
        "SUR_P09_FACPSHPDCPSHFACPDCNTEED_SUPPGRP": {
            maxReps: -1,
            required: true,
            segments: {
                "FAC": {name: "FAC", maxReps: 1, required: true, segmentType: typeof FAC},
                "SUR_P09_PSHPDC_SUPPGRP": {name: "SUR_P09_PSHPDC_SUPPGRP", maxReps: -1, required: true, segmentType: typeof SUR_P09_PSHPDC_SUPPGRP},
                "PSH": {name: "PSH", maxReps: 1, required: true, segmentType: typeof PSH},
                "SUR_P09_FACPDCNTE_SUPPGRP": {name: "SUR_P09_FACPDCNTE_SUPPGRP", maxReps: -1, required: true, segmentType: typeof SUR_P09_FACPDCNTE_SUPPGRP},
                "ED": {name: "ED", maxReps: 1, required: true, segmentType: typeof ED}
            }
        }
    }
}
public type SUR_P09 record {
    *hl7v2:Message;
    string name = SUR_P09_MESSAGE_TYPE;
    MSH msh;
    SUR_P09_FACPSHPDCPSHFACPDCNTEED_SUPPGRP[] facpshpdcpshfacpdcnteed_suppgrp = [{fac:{}, psh:{}, ed:{}}];
};