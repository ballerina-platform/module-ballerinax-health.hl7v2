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

import ballerinax/health.fhir.r4;
import ballerinax/health.hl7v23;
import ballerinax/health.hl7v231;
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v25;
import ballerinax/health.hl7v251;
import ballerinax/health.hl7v26;
import ballerinax/health.hl7v27;
import ballerinax/health.hl7v28;

// --------------------------------------------------------------------------------------------#
// Source HL7 Version 2 to FHIR - Datatype Maps
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/datatype_maps.html
// --------------------------------------------------------------------------------------------#

public function ceToCodings(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE|hl7v27:CWE|hl7v28:CWE ce) returns r4:Coding[] {
    r4:Coding[] codings = [];
    if ce is hl7v26:CWE|hl7v27:CWE|hl7v28:CWE {
        codings.push(cweToCoding(ce));
    } else if ce is hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE {
        codings.push(ceToCoding(ce));
    }
    return codings;
}

public function ceToCodeableConcept(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE ce) returns r4:CodeableConcept => {
    coding: ceToCodings(ce)
};

public function cweToCodeableConcept(hl7v231:CWE|hl7v24:CWE|hl7v25:CWE|hl7v251:CWE|hl7v26:CWE|hl7v27:CWE|hl7v28:CWE cwe) returns r4:CodeableConcept => {
    coding: ceToCodings(cwe)
};

public function ceToCoding(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE ce) returns r4:Coding => {
    code: (ce.ce1 != "") ? ce.ce1 : (),
    display: (ce.ce2 != "") ? ce.ce2 : (),
    system: (ce.ce3 != "") ? ce.ce3 : ()
};

public function cweToCoding(hl7v231:CWE|hl7v24:CWE|hl7v25:CWE|hl7v251:CWE|hl7v26:CWE|hl7v27:CWE|hl7v28:CWE cwe) returns r4:Coding => {
    code: (cwe.cwe1 != "") ? cwe.cwe1 : (),
    display: (cwe.cwe2 != "") ? cwe.cwe2 : (),
    system: (cwe.cwe3 != "") ? cwe.cwe3 : ()
};

public function xadToAddress(hl7v23:XAD|hl7v231:XAD|hl7v24:XAD|hl7v25:XAD|hl7v251:XAD|hl7v26:XAD|hl7v27:XAD|hl7v28:XAD xad) returns r4:Address {
    r4:Extension[] extension = [];
    string district = "";

    if xad is hl7v23:XAD|hl7v231:XAD|hl7v24:XAD|hl7v25:XAD|hl7v251:XAD|hl7v26:XAD {
        extension = getStringExtension([xad.xad7, <string>xad.xad10]);
        district = xad.xad9;
    } else if xad is hl7v27:XAD|hl7v28:XAD {
        extension = getStringExtension([xad.xad7, xad.xad10.cwe1]);
        district = xad.xad9.cwe1;
    }

    r4:Address address = {
        city: (xad.xad3 != "") ? xad.xad3 : (),
        state: (xad.xad4 != "") ? xad.xad4 : (),
        postalCode: (xad.xad5 != "") ? xad.xad5 : (),
        country: (xad.xad6 != "") ? xad.xad6 : (),
        'type: checkComputableAntlr([{identifier: xad.xad7, comparisonOperator: "IN", valueList: ["M", "SH"]}]) ? idToAddressType(xad.xad7) : (),
        use: checkComputableAntlr([{identifier: xad.xad7, comparisonOperator: "IN", valueList: ["BA", "BI", "C", "B", "H", "O"]}]) ? idToAddressUse(xad.xad7) : (),
        extension: extension,
        district: (district != "") ? district : ()
    };
    if xad is hl7v23:XAD {
        address.line = [xad.xad1, xad.xad2];
    } else if xad is hl7v24:XAD|hl7v25:XAD {
        address.line = [xad.xad1.sad1, xad.xad2];
    }
    return address;
};

public function xonToOrganization(hl7v23:XON|hl7v231:XON|hl7v24:XON|hl7v25:XON|hl7v251:XON|hl7v26:XON|hl7v27:XON|hl7v28:XON xon) returns r4:Organization {
    r4:Coding coding = {
        code: xon.xon7,
        system: xon.xon7
    };

    r4:CodeableConcept codeableConcept = {
        coding: [
            coding
        ]
    };

    r4:Identifier identifier = {
        value: xon.xon3.toString(),
        'type: codeableConcept
    };

    r4:Organization organization = {
        name: xon.xon1,
        identifier: [identifier]
    };

    return organization;
};

public function xpnToHumanName(hl7v23:XPN|hl7v231:XPN|hl7v24:XPN|hl7v25:XPN|hl7v251:XPN|hl7v26:XPN|hl7v27:XPN|hl7v28:XPN xpn) returns r4:HumanName {
    r4:HumanName humanName = {
        use: (xpn.xpn7 != "") ? idToHumanNameUse(xpn.xpn7) : ()
    };
    if xpn is hl7v23:XPN {
        humanName.family = (xpn.xpn1 != "") ? xpn.xpn1 : ();
    } else if xpn is hl7v231:XPN|hl7v24:XPN|hl7v25:XPN|hl7v251:XPN|hl7v26:XPN|hl7v27:XPN|hl7v28:XPN {
        humanName.family = (xpn.xpn1.fn1 != "") ? xpn.xpn1.fn1 : ();
    }
    //given
    if xpn.xpn2 != "" && xpn.xpn3 != "" {
        humanName.given = [xpn.xpn2, xpn.xpn3];
    } else if xpn.xpn2 != "" {
        humanName.given = [xpn.xpn2];
    } else if xpn.xpn3 != "" {
        humanName.given = [xpn.xpn3];
    }
    //suffix
    string[] suffix = [];
    if xpn is hl7v27:XPN|hl7v28:XPN {
        suffix = [xpn.xpn4, xpn.xpn14];
    } else if xpn is hl7v23:XPN|hl7v231:XPN|hl7v24:XPN|hl7v25:XPN|hl7v251:XPN|hl7v26:XPN {
        suffix = [xpn.xpn4, xpn.xpn6];
    }
    if suffix[0] != "" && suffix[1] != "" {
        humanName.suffix = suffix;
    } else if suffix[0] != "" {
        humanName.suffix = [suffix[0]];
    } else if suffix[1] != "" {
        humanName.suffix = [suffix[1]];
    }
    //prefix
    if xpn.xpn5 != "" {
        humanName.prefix = [xpn.xpn5];
    }
    return humanName;
};

public function xtnToContactPoint(hl7v23:XTN|hl7v231:XTN|hl7v24:XTN|hl7v25:XTN|hl7v251:XTN|hl7v26:XTN|hl7v27:XTN|hl7v28:XTN xtn) returns r4:ContactPoint {
    string telephone = "";
    if xtn is hl7v26:XTN {
        telephone = xtn.xtn12;
    } else if xtn is hl7v23:XTN|hl7v231:XTN|hl7v24:XTN|hl7v25:XTN|hl7v251:XTN|hl7v27:XTN|hl7v28:XTN {
        telephone = xtn.xtn1;
    }
    r4:ContactPoint contactPoint = {
        value: checkComputableAntlr([
                {identifier: xtn.xtn3, comparisonOperator: "NIN", valueList: ["Internet", "X.400"]},
                {identifier: xtn.xtn7.toString(), comparisonOperator: "IN", valueList: []}
                //, {identifier: xtn.xtn12, comparisonOperator: "IN", valueList: []}                    //TODO: xtn12 is not defined yet
            ]) ? telephone :
                (checkComputableAntlr([{identifier: xtn.xtn3, comparisonOperator: "NIN", valueList: ["Internet", "X.400"]}])) ? (xtn.xtn4) : (),
        use: idToContactPointUse(xtn.xtn2),
        system: idToContactPointSystem(xtn.xtn3),
        extension: getStringExtension([xtn.xtn5.toString(), xtn.xtn6.toString(), xtn.xtn7.toString(), xtn.xtn8.toString()])
    };
    if contactPoint.value == "" {
        return {};
    }
    return contactPoint;
};

public function hdToMessageHeaderSource(hl7v23:HD|hl7v231:HD|hl7v24:HD|hl7v25:HD|hl7v251:HD|hl7v26:HD|hl7v27:HD|hl7v28:HD hd) returns r4:MessageHeaderSource => {
    name: hd.hd1,
    endpoint: hd.hd2,
    extension: getStringExtension([hd.hd3])
};

public function hdToMessageHeaderDestination(hl7v23:HD|hl7v231:HD|hl7v24:HD|hl7v25:HD|hl7v251:HD|hl7v26:HD|hl7v27:HD|hl7v28:HD hd) returns r4:MessageHeaderDestination => {
    name: hd.hd1,
    endpoint: hd.hd2,
    extension: getStringExtension([hd.hd3])
};

public function msgToCoding(hl7v23:CM_MSG msg) returns r4:Coding => {
    code: msg.cm_msg1,
    system: msg.cm_msg2
};

public function ptToMeta(hl7v23:PT|hl7v231:PT|hl7v24:PT|hl7v25:PT|hl7v251:PT|hl7v26:PT|hl7v27:PT|hl7v28:PT pt) returns r4:Meta {
    r4:Coding[] coding = [
        {
            code: pt.pt1,
            system: pt.pt2
        }
    ];
    r4:Meta meta = {
        tag: coding
    };
    return meta;
};

public function ceToCode(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE ce) returns r4:code {
    r4:code code = ce.ce1;
    return code;
};

public function cweToCode(hl7v26:CWE|hl7v27:CWE|hl7v28:CWE cwe) returns r4:code {
    r4:code code = cwe.cwe1;
    return code;
};

public function eiToIdentifier(hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI ei) returns r4:Identifier => {
    value: (ei.ei1 != "") ? ei.ei1 : ()
};

public function idToCodeableConceptArray(hl7v23:ID|hl7v231:ID|hl7v24:ID|hl7v25:ID|hl7v251:ID|hl7v26:ID|hl7v27:ID|hl7v28:ID id) returns r4:CodeableConcept[] {
    r4:CodeableConcept[] codeableConcept = [];
    codeableConcept.push(idToCodeableConcept(id));
    return codeableConcept;
}

public function eiToCoding(hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI ei) returns r4:Coding => {
    code: (ei.ei1 != "") ? ei.ei1 : (),
    system: (ei.ei2 != "") ? ei.ei2 : ()
};

public function ceToUri(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE ce) returns r4:uri {
    return ce.ce1;
};

public function cweToUri(hl7v231:CWE|hl7v24:CWE|hl7v25:CWE|hl7v251:CWE|hl7v26:CWE|hl7v27:CWE|hl7v28:CWE cwe) returns r4:uri {
    return cwe.cwe1;
};

public function xcnToCodeableConcept(hl7v23:XCN|hl7v231:XCN|hl7v24:XCN|hl7v25:XCN|hl7v251:XCN|hl7v26:XCN|hl7v27:XCN|hl7v28:XCN xcn) returns r4:CodeableConcept => {
    id: xcn.xcn1
};

public function xcnToReference(hl7v23:XCN|hl7v231:XCN|hl7v24:XCN|hl7v25:XCN|hl7v251:XCN|hl7v26:XCN|hl7v27:XCN|hl7v28:XCN xcn) returns r4:Reference => {
    reference: xcn.xcn1
};

public function idToCoding(hl7v23:ID id) returns r4:Coding => {
    id: id
};

public function ceToCodeableConcepts(hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE|hl7v26:CWE ce) returns r4:CodeableConcept[] {
    r4:CodeableConcept[] codeableConcept = [];
    if ce is hl7v26:CWE {
        codeableConcept.push(cweToCodeableConcept(ce));
    } else {
        codeableConcept.push(ceToCodeableConcept(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>ce));
    }
    return codeableConcept;
}

public function dtmToDateTime(hl7v23:DTM|hl7v25:DTM|hl7v251:DTM|hl7v26:DTM ts) returns r4:dateTime {
    return ts;
};

public function tsToDateTime(hl7v23:TS|hl7v231:TS|hl7v24:TS|hl7v25:TS|hl7v251:TS ts) returns r4:dateTime {
    return ts.ts1;
};

public function idToCodeableConcept(hl7v23:ID id) returns r4:CodeableConcept {
    r4:Coding[] coding = [
        {
            code: id
        }
    ];

    r4:CodeableConcept codeableConcept = {
        coding: coding
    };
    return codeableConcept;
};

public function dtmToInstant(hl7v23:DTM|hl7v25:DTM|hl7v251:DTM|hl7v26:DTM ts) returns r4:instant {
    return ts;
};

public function tsToInstant(hl7v23:TS|hl7v231:TS|hl7v24:TS|hl7v25:TS|hl7v251:TS ts) returns r4:instant {
    return ts.ts1;
};
