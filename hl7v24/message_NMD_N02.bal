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
public const NMD_N02_MESSAGE_TYPE = "NMD_N02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + clock_and_stats_with_notes - NMD_N02_CLOCK_AND_STATS_WITH_NOTES Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH}
    }
    ,groups: {
        "NMD_N02_CLOCK_AND_STATS_WITH_NOTES": {
            maxReps: -1,
            required: true,
            segments: {
                "NMD_N02_CLOCK": {name: "NMD_N02_CLOCK", maxReps: 1, required: false, segmentType: typeof NMD_N02_CLOCK},
                "NMD_N02_APP_STATS": {name: "NMD_N02_APP_STATS", maxReps: 1, required: false, segmentType: typeof NMD_N02_APP_STATS},
                "NMD_N02_APP_STATUS": {name: "NMD_N02_APP_STATUS", maxReps: 1, required: false, segmentType: typeof NMD_N02_APP_STATUS}
            }
        }
    }
}
public type NMD_N02 record {
    *hl7v2:Message;
    string name = NMD_N02_MESSAGE_TYPE;
    MSH msh;
    NMD_N02_CLOCK_AND_STATS_WITH_NOTES[] clock_and_stats_with_notes = [{}];
};