
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
public type MFR_M05_MF_QUERY record {
    *hl7v2:SegmentComponent;
    string name = MFR_M05_MF_QUERY_SEGMENT_COMPONENT;
    boolean isRequired = true;
    MFE mfe;
    LOC loc;
    LCH[] lch = [{}];
    LRL[] lrl = [{}];
    LDP[] ldp = [{}];
    LCC[] lcc = [{}];
};

public const MFR_M05_MF_QUERY_SEGMENT_COMPONENT = "MFR_M05_MF_QUERY";
