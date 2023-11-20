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
public const NMQ_N01_MESSAGE_TYPE = "NMQ_N01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qry_with_detail - NMQ_N01_QRY_WITH_DETAIL Segment Group
# + clock_and_statistics - NMQ_N01_CLOCK_AND_STATISTICS Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH}
    }
    ,groups: {
        "NMQ_N01_QRY_WITH_DETAIL": {
            maxReps: 1,
            required: false,
            segments: {
                "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: typeof QRD},
                "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: typeof QRF}
            }
        },
        "NMQ_N01_CLOCK_AND_STATISTICS": {
            maxReps: -1,
            required: true,
            segments: {
                "NCK": {name: "NCK", maxReps: 1, required: false, segmentType: typeof NCK},
                "NST": {name: "NST", maxReps: 1, required: false, segmentType: typeof NST},
                "NSC": {name: "NSC", maxReps: 1, required: false, segmentType: typeof NSC}
            }
        }
    }
}
public type NMQ_N01 record {
    *hl7v2:Message;
    string name = NMQ_N01_MESSAGE_TYPE;
    MSH msh;
    NMQ_N01_QRY_WITH_DETAIL[] qry_with_detail = [{qrd:{}}];
    NMQ_N01_CLOCK_AND_STATISTICS[] clock_and_statistics = [{}];
};