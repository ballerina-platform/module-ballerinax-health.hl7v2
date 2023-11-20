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
public const QVR_Q17_MESSAGE_TYPE = "QVR_Q17";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + qpd - QPD Segment
# + anyzsegment - anyZSegment Segment
# + rcp - RCP Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "QPD": {name: "QPD", maxReps: 1, required: true, segmentType: QPD},
        "anydata": {name: "anydata", maxReps: 1, required: false, segmentType: anydata},
        "RCP": {name: "RCP", maxReps: 1, required: true, segmentType: RCP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type QVR_Q17 record {
    *hl7v2:Message;
    string name = QVR_Q17_MESSAGE_TYPE;
    MSH msh;
    QPD qpd;
    anydata anyzsegment?;
    RCP rcp;
    DSC dsc?;
};