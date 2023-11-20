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

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + adj1 - 2003EIHL7Provider Adjustment Number
# + adj2 - 2004EIHL7Payer Adjustment Number
# + adj3 - 2005SIHL7Adjustment Sequence Number
# + adj4 - 2006ISHL70564HL7Adjustment Category
# + adj5 - 2007CPHL7Adjustment Amount
# + adj6 - 2008CQHL70560HL7Adjustment Quantity
# + adj7 - 2009CWEHL70565HL7Adjustment Reason PA
# + adj8 - 2010STHL7Adjustment Description
# + adj9 - 2011NMHL7Original Value
# + adj10 - 2012NMHL7Substitute Value
# + adj11 - 2013ISHL70569HL7Adjustment Action
# + adj12 - 2014EIHL7Provider Adjustment Number Cross Reference
# + adj13 - 2015EIHL7Provider Product/Service Line Item Number Cross Reference
# + adj14 - 2016DTMHL7Adjustment Date
# + adj15 - 2017XONHL7Responsible Organization
@hl7v2:SegmentDefinition {
    name: "ADJ",
    required: false,
    maxReps: 0,
    fields: {
        "adj1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "adj2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "adj3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "adj4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "adj5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "adj6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "adj7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "adj8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "adj9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "adj10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "adj11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "adj12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "adj13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "adj14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "adj15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        }
    }
}
public type ADJ record {
    *hl7v2:Segment;
    string name = ADJ_SEGMENT_NAME;
    EI adj1 = {};
    EI adj2 = {};
    SI adj3 = "";
    IS adj4 = "";
    CP adj5 = {};
    CQ adj6 = {};
    CWE adj7 = {};
    ST adj8 = "";
    NM adj9 = "";
    NM adj10 = "";
    IS adj11 = "";
    EI adj12 = {};
    EI adj13 = {};
    DTM adj14 = "";
    XON adj15 = {};
};

public const ADJ_SEGMENT_NAME = "ADJ";