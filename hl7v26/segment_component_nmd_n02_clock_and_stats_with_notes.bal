
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
public type NMD_N02_CLOCK_AND_STATS_WITH_NOTES record {
    *hl7v2:SegmentComponent;
    string name = NMD_N02_CLOCK_AND_STATS_WITH_NOTES_SEGMENT_COMPONENT;
    boolean isRequired = true;
    NMD_N02_CLOCK nmd_n02_clock?;
    NMD_N02_APP_STATS nmd_n02_app_stats?;
    NMD_N02_APP_STATUS nmd_n02_app_status?;
};

public const NMD_N02_CLOCK_AND_STATS_WITH_NOTES_SEGMENT_COMPONENT = "NMD_N02_CLOCK_AND_STATS_WITH_NOTES";
