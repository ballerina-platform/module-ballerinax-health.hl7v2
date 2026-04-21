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
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

// --------------------------------------------------------------------------------------------#
// Source HL7 Version 2 to FHIR - Datatype Maps
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/datatype_maps.html
// --------------------------------------------------------------------------------------------#

public isolated function ceToCodings(Ce ce) returns r4:Coding[]? {
    r4:Coding[] codings = [];
    r4:Coding ceToCodingResult = ceToCoding(ce);
    if ceToCodingResult != {} {
        codings.push(ceToCodingResult);
    }
    return (codings.length() > 0) ? codings : ();
};

public isolated function ceToCodeableConcept(Ce ce) returns r4:CodeableConcept => {
    coding: ceToCodings(ce)
};

public isolated function ceToCoding(Ce ce) returns r4:Coding => {
    code: (ce.ce1 != "") ? ce.ce1 : (),
    display: (ce.ce2 != "") ? ce.ce2 : (),
    system: (ce.ce3 != "") ? ce.ce3 : ()
};

public isolated function xadToAddress(Xad xad) returns r4:Address? {
    r4:Extension[]? extension = [];
    string district = "";

    extension = getStringExtension([xad.xad7, <string>xad.xad10]);
    district = xad.xad9;

    r4:Address address = {
        city: (xad.xad3 != "") ? xad.xad3 : (),
        state: (xad.xad4 != "") ? xad.xad4 : (),
        postalCode: (xad.xad5 != "") ? xad.xad5 : (),
        country: (xad.xad6 != "") ? xad.xad6 : (),
        'type: checkComputableAntlr([{identifier: xad.xad7, comparisonOperator: "IN", valueList: ["M", "SH"]}]) ? idToAddressType(xad.xad7) : (),
        use: checkComputableAntlr([{identifier: xad.xad7, comparisonOperator: "IN", valueList: ["BA", "BI", "C", "B", "H", "O"]}]) ? idToAddressUse(xad.xad7) : (),
        district: (district != "") ? district : ()
    };
    address.extension = extension;
    if xad.xad1 != "" && xad.xad2 != "" {
        address.line = [xad.xad1, xad.xad2];
    } else if xad.xad1 != "" {
        address.line = [xad.xad1];
    } else if xad.xad2 != "" {
        address.line = [xad.xad2];
    }
    return (address != {}) ? address : ();
};

public isolated function xonToOrganization(Xon xon) returns international401:Organization {
    string? xon3 = ();
    xon3 = (xon.xon3 != "") ? xon.xon3.toString() : ();
    r4:Identifier identifier = {
        value: xon3,
        'type: (xon.xon7 != "") ? {
                coding: [
                    {
                        code: xon.xon7,
                        system: string `urn:oid: ${xon.xon7}`
                    }
                ]
            } : ()
    };

    international401:Organization organization = {
        name: (xon.xon1 != "") ? xon.xon1 : (),
        identifier: (identifier != {}) ? [identifier] : ()
    };

    return organization;
};

public isolated function xonToReference(Xon xon) returns r4:Reference? {
    string? xon3 = ();
    xon3 = (xon.xon3 != "") ? xon.xon3.toString() : ();
    r4:Identifier identifier = {
        value: xon3,
        'type: (xon.xon7 != "") ? {
                coding: [
                    {
                        code: xon.xon7,
                        system: string `urn:oid: ${xon.xon7}`
                    }
                ]
            } : ()
    };
    r4:Reference reference = {
        identifier: (identifier != {}) ? identifier : ()
    };
    return (reference != {}) ? reference : ();
};

public isolated function xpnToHumanName(Xpn xpn) returns r4:HumanName {
    r4:HumanName humanName = {
        use: (xpn.xpn7 != "") ? idToHumanNameUse(xpn.xpn7) : ()
    };
    humanName.family = (xpn.xpn1 != "") ? xpn.xpn1 : ();
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
    suffix = [xpn.xpn4, xpn.xpn6];
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

public isolated function xtnToContactPoint(Xtn xtn) returns r4:ContactPoint? {
    string xtn5 = xtn.xtn5.toString();
    string xtn6 = xtn.xtn6.toString();
    string xtn7 = xtn.xtn7.toString();
    string xtn8 = xtn.xtn8.toString();
    boolean isInternetOrX400 = xtn.xtn3 == "Internet" || xtn.xtn3 == "X.400";

    r4:StringExtension[] extensions = [];
    if xtn5 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/contactpoint-country",
            valueString: xtn5
        });
    }
    if xtn6 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/contactpoint-area",
            valueString: xtn6
        });
    }
    if !isInternetOrX400 && xtn7 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/contactpoint-local",
            valueString: xtn7
        });
    }
    if xtn8 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/contactpoint-extension",
            valueString: xtn8
        });
    }

    r4:ContactPoint contactPoint = {
        use: idToContactPointUse(xtn.xtn2),
        system: (xtn.xtn3 == "" && xtn.xtn4 != "") ? "email" : idToContactPointSystem(xtn.xtn3),
        extension: (extensions.length() > 0) ? extensions : (),
        value: ()
    };

    if isInternetOrX400 && xtn.xtn4 != "" {
        contactPoint.value = xtn.xtn4;
    } else if !isInternetOrX400 && xtn7 == "" && xtn.xtn1 != "" {
        contactPoint.value = xtn.xtn1;
    } else if !isInternetOrX400 && xtn7 != "" {
        if xtn5 != "" && xtn6 != "" && xtn8 != "" {
            contactPoint.value = string `+${xtn5} ${xtn6} ${xtn7} X${xtn8}`;
        } else if xtn5 != "" && xtn6 != "" {
            contactPoint.value = string `+${xtn5} ${xtn6} ${xtn7}`;
        } else if xtn6 != "" && xtn8 != "" {
            contactPoint.value = string `${xtn6} ${xtn7} X${xtn8}`;
        } else if xtn6 != "" {
            contactPoint.value = string `${xtn6} ${xtn7}`;
        }
    }
    if contactPoint.value == "" {
        return ();
    }
    return contactPoint;
};

public isolated function hdToMessageHeaderSource(Hd hd) returns international401:MessageHeaderSource {
    return {
        name: (hd.hd1 != "") ? hd.hd1 : (),
        endpoint: hd.hd2,
        extension: getStringExtension([hd.hd3])
    };
};

public isolated function hdToMessageHeaderDestination(Hd hd) returns international401:MessageHeaderDestination => {
    name: (hd.hd1 != "") ? hd.hd1 : (),
    endpoint: hd.hd2,
    extension: getStringExtension([hd.hd3])
};

public isolated function msgToCoding(hl7v23:CM_MSG msg) returns r4:Coding => {
    code: (msg.cm_msg1 != "") ? msg.cm_msg1 : (),
    system: (msg.cm_msg2 != "") ? msg.cm_msg2 : ()
};

public isolated function ptToMeta(Pt pt) returns r4:Meta {
    return {
        tag: [
            {
                code: (pt.pt1 != "") ? pt.pt1 : (),
                system: (pt.pt2 != "") ? pt.pt2 : ()
            }
        ]
    };
};

public isolated function ceToCode(Ce ce) returns r4:code? {
    return (ce.ce1 != "") ? ce.ce1 : ();
};

public isolated function eiToIdentifier(Ei ei) returns r4:Identifier => {
    value: (ei.ei1 != "") ? ei.ei1 : ()
};

public isolated function eiToReferenceWithType(Ei ei, string resourceType) returns r4:Reference {
    return {
        reference: (ei.ei1 != "") ? string `${resourceType}/${ei.ei1}` : ()
    };
};

public isolated function idToCodeableConceptArray(Id id) returns r4:CodeableConcept[] {
    r4:CodeableConcept[] codeableConcept = [];
    r4:CodeableConcept? idToCodeableConceptResult = idToCodeableConcept(id);
    if idToCodeableConceptResult is r4:CodeableConcept {
        codeableConcept.push(idToCodeableConceptResult);
    }
    return codeableConcept;
}

public isolated function eiToCoding(Ei ei) returns r4:Coding => {
    code: (ei.ei1 != "") ? ei.ei1 : (),
    system: (ei.ei2 != "") ? ei.ei2 : ()
};

public isolated function ceToUri(Ce ce) returns r4:uri? {
    return (ce.ce1 != "") ? ce.ce1 : ();
};

public isolated function xcnToCodeableConcept(Xcn xcn) returns r4:CodeableConcept {
    return {
        id: (xcn.xcn1 != "") ? xcn.xcn1 : ()
    };
};

public isolated function xcnToReference(Xcn xcn) returns r4:Reference {
    return {
        reference: (xcn.xcn1 != "") ? xcn.xcn1 : ()
    };
};

public isolated function xcnToReferenceWithType(Xcn xcn, string resourceType) returns r4:Reference {
    return {
        reference: (xcn.xcn1 != "") ? string `${resourceType}/${xcn.xcn1}` : ()
    };
};

public isolated function idToCoding(hl7v23:ID id) returns r4:Coding {
    return {
        id: (id != "") ? id : ()
    };
};

public isolated function ceToCodeableConcepts(Ce ce) returns r4:CodeableConcept[] {
    r4:CodeableConcept[] codeableConcept = [];
    codeableConcept.push(ceToCodeableConcept(<Ce>ce));
    return codeableConcept;
}

public isolated function dtmToDateTime(Dtm ts) returns r4:dateTime? {
    return (ts != "") ? hl7DateToFhir(ts) : ();
};

public isolated function tsToDateTime(Ts ts) returns r4:dateTime? {
    return (ts.ts1 != "") ? hl7DateToFhir(ts.ts1) : ();
};

public isolated function idToCodeableConcept(hl7v23:ID id) returns r4:CodeableConcept? {

    r4:CodeableConcept codeableConcept = {
        coding: [
            {
                code: id
            }
        ]
    };
    return id != "" ? codeableConcept : ();
};

public isolated function dtmToInstant(Dtm ts) returns r4:instant {
    return ts;
};

public isolated function tsToInstant(Ts ts) returns r4:instant? {
    return (ts.ts1 != "") ? ts.ts1 : ();
};

# Union type for CE data type for all supported hl7 versions.
public type Ce hl7v23:CE;

# Union type for XAD data type for all supported hl7 versions.
public type Xad hl7v23:XAD;

# Union type for XON data type for all supported hl7 versions.
public type Xon hl7v23:XON;

# Union type for XPN data type for all supported hl7 versions.
public type Xpn hl7v23:XPN;

# Union type for XTN data type for all supported hl7 versions.
public type Xtn hl7v23:XTN;

# Union type for HD data type for all supported hl7 versions.
public type Hd hl7v23:HD;

# Union type for PT data type for all supported hl7 versions.
public type Pt hl7v23:PT;

# Union type for EI data type for all supported hl7 versions.
public type Ei hl7v23:EI;

# Union type for ID data type for all supported hl7 versions.
public type Id hl7v23:ID;

# Union type for XCN data type for all supported hl7 versions.
public type Xcn hl7v23:XCN;

# Union type for DTM data type for all supported hl7 versions.
public type Dtm hl7v23:DTM;

# Union type for TS data type for all supported hl7 versions.
public type Ts hl7v23:TS;

# Union type for IS data type for all supported hl7 versions.
public type Is hl7v23:IS;

public isolated function cxToIdentifier(Cx cx) returns r4:Identifier {
    return {
        value: (cx.cx1 != "") ? cx.cx1 : (),
        'type: (cx.cx5 != "") ? {
            coding: [{code: cx.cx5}]
        } : ()
    };
};

public isolated function xcnToHumanName(Xcn xcn) returns r4:HumanName {
    r4:HumanName humanName = {};
    humanName.family = (xcn.xcn2 != "") ? xcn.xcn2 : ();
    if xcn.xcn3 != "" {
        humanName.given = [xcn.xcn3];
    }
    if xcn.xcn5 != "" {
        humanName.prefix = [xcn.xcn5];
    }
    return humanName;
};

public isolated function xcnToReferenceWithName(Xcn xcn, string resourceType) returns r4:Reference {
    string? display = ();
    if xcn.xcn2 != "" || xcn.xcn3 != "" {
        string[] nameParts = [];
        if xcn.xcn3 != "" {
            nameParts.push(xcn.xcn3);
        }
        if xcn.xcn2 != "" {
            nameParts.push(xcn.xcn2);
        }
        display = string:'join(" ", ...nameParts);
    } else if xcn.xcn1 != "" {
        display = xcn.xcn1;
    }
    return {
        reference: (xcn.xcn1 != "") ? string `${resourceType}/${xcn.xcn1}` : (),
        display: display
    };
};
