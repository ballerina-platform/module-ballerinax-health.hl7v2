
// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

@hl7v2:SegmentComponentDefinition {
    required: true,
    maxReps: -1
}
public type RRE_O26_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RRE_O26_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    PRT[] prt = [{}];
    RRE_O26_TIMING[] rre_o26_timing = [{tq1: {}}];
    RRE_O26_ENCODING rre_o26_encoding?;
};

public const RRE_O26_ORDER_SEGMENT_COMPONENT = "RRE_O26_ORDER";
