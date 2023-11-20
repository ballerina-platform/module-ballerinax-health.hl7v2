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
public const OSM_R26_MESSAGE_TYPE = "OSM_R26";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + shipment - OSM_R26_SHIPMENT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC}
    }
    ,groups: {
        "OSM_R26_SHIPMENT": {
            maxReps: -1,
            required: true,
            segments: {
                "SHP": {name: "SHP", maxReps: 1, required: true, segmentType: typeof SHP},
                "PRT": {name: "PRT", maxReps: -1, required: true, segmentType: typeof PRT},
                "OSM_R26_SHIPPING_OBSERVATION": {name: "OSM_R26_SHIPPING_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OSM_R26_SHIPPING_OBSERVATION},
                "OSM_R26_PACKAGE": {name: "OSM_R26_PACKAGE", maxReps: -1, required: true, segmentType: typeof OSM_R26_PACKAGE}
            }
        }
    }
}
public type OSM_R26 record {
    *hl7v2:Message;
    string name = OSM_R26_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    OSM_R26_SHIPMENT[] shipment = [{shp:{}}];
};