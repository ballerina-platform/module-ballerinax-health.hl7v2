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
public const OSQ_Q06_MESSAGE_TYPE = "OSQ_Q06";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "QRF": [{name: "QRF", maxReps: 1, required: false}],
        "DSC": [{name: "DSC", maxReps: 1, required: false}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type OSQ_Q06 record {
    *hl7v2:Message;
    string name = OSQ_Q06_MESSAGE_TYPE;
    MSH msh;
    QRD qrd;
    QRF qrf?;
    DSC dsc?;
};