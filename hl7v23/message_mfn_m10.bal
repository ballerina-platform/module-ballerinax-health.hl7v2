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
public const MFN_M10_MESSAGE_TYPE = "MFN_M10";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + mfi - MFI Segment
# + mf_test_batteries - MFN_M10_MF_TEST_BATTERIES Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MFI": [{name: "MFI", maxReps: 1, required: false}],
        "OM5": [{name: "OM5", maxReps: 1, required: false, segmentComponentName: "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL"}],
        "OM4": [{name: "OM4", maxReps: -1, required: false, segmentComponentName: "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MFI": {name: "MFI", maxReps: 1, required: true, segmentType: MFI}
    }
    ,groups: {
        "MFN_M10_MF_TEST_BATTERIES": {
            maxReps: -1,
            required: true,
            segments: {
                "MFN_M10_MF_TEST_BATT_DETAIL": {name: "MFN_M10_MF_TEST_BATT_DETAIL", maxReps: 1, required: false, segmentType: typeof MFN_M10_MF_TEST_BATT_DETAIL}
            }
        },
        "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL": {
		   maxReps: 1,
		   required: false
		}
    }
}
public type MFN_M10 record {
    *hl7v2:Message;
    string name = MFN_M10_MESSAGE_TYPE;
    MSH msh;
    MFI mfi;
    MFN_M10_MF_TEST_BATTERIES[] mf_test_batteries = [{}];
};