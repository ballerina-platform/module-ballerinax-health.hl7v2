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
# + obr1 - OBR-Segmentnummer
# + obr2 - Auftragsnummer des Auftraggebers / der auftraggebenden Stelle
# + obr3 - Bearbeitungsnummer der Leistungsstelle
# + obr4 - Leistungsidentifikation
# + obr5 - Withdrawn field
# + obr6 - Withdrawn field
# + obr7 - Zeitpunkt der Probenentnahme / Beobachtung / Untersuchung
# + obr8 - Zeitpunkt, an dem die Untersuchungsperiode endete
# + obr9 - Probenmenge
# + obr10 - Name und Kennzeichen des Entnehmenden
# + obr11 - Weitere Angaben zur Untersuchung
# + obr12 - Warnhinweise bei ansteckenden Materialien
# + obr13 - wichtige klinische Information
# + obr14 - Withdrawn field
# + obr15 - Withdrawn field
# + obr16 - Verantwortlicher Auftraggeber
# + obr17 - Telefonnummer für Rückrufe
# + obr18 - Freitext 1 für Auftraggeber
# + obr19 - Freitext 2 für Auftraggeber
# + obr20 - Freitext 1 für Leistungsstelle
# + obr21 - Freitext 2 für Leistungsstelle
# + obr22 - Zeitpunkt eines Berichts bzw. einer Änderung des Auftragsstatus
# + obr23 - Leistungsbetrag / Leistungsziffer
# + obr24 - Detailspezifikation der erbringenden Stelle
# + obr25 - Ergebnisstatus dieses (Teil-) Auftrags (OBR-2)
# + obr26 - Ergebnis des Hauptauftrags
# + obr27 - Withdrawn field
# + obr28 - Ergebnisberichte an
# + obr29 - Verweis auf Hauptauftrag
# + obr30 - Transportart (Patient)
# + obr31 - Grund für Untersuchung (z.B. Wissenschaft, Studie, rechtfertigende Indikation)
# + obr32 - Für den Befund verantwortlicher Arzt
# + obr33 - Weiterer befundender Arzt
# + obr34 - MTA
# + obr35 - Erfassungs- / Schreibkraft
# + obr36 - Geplanter Untersuchungszeitpunkt
# + obr37 - Anzahl der Probenbehälter
# + obr38 - Transportlogistik der gesammelten Proben
# + obr39 - Kommentar des Probenehmenden
# + obr40 - Verantwortlichkeit für den Transport
# + obr41 - Transport arrangiert
# + obr42 - Begleitung erforderlich
# + obr43 - Kommentar zum geplanten Patiententransport
# + obr44 - Maßnahmen- / Operationsschlüssel
# + obr45 - Modifikator zum Prozedurcode
# + obr46 - Zusatzinformation Leistungen/Logistik des Auftraggebers
# + obr47 - Zusatzinformation Leistungen/Logistik des Leistungstelle
# + obr48 - Begründung für mehrfache Durchführung einer Maßnahme
# + obr49 - Umgang mit Untersuchungsergebnis
# + obr50 - Leistungsidentifikation des Hauptauftrags
# + obr51 - 2307EIHL7Observation Group ID
# + obr52 - 2308EIHL7Parent Observation Group ID
# + obr53 - 3303CXHL7Alternate Placer Order Number
# + obr54 - Verweis auf Hauptauftrag
@hl7v2:SegmentDefinition {
    name: "OBR",
    required: false,
    maxReps: 0,
    fields: {
        "obr1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "obr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obr8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obr9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "obr10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr17": {
            required: false,
            length: 1,
            maxReps: 2,
            dataType: XTN
        },
        "obr18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obr23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MOC
        },
        "obr24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PRL
        },
        "obr27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obr28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obr29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        },
        "obr30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr31": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NDL
        },
        "obr33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr34": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr35": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NDL
        },
        "obr36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obr37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "obr38": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obr43": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "obr45": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "obr46": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr47": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obr48": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr49": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr50": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obr51": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr52": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obr53": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "obr54": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        }
    }
}
public type OBR record {
    *hl7v2:Segment;
    string name = OBR_SEGMENT_NAME;
    SI obr1 = "";
    EI obr2 = {};
    EI obr3 = {};
    CWE obr4 = {};
    ST obr5 = "";
    ST obr6 = "";
    DTM obr7 = "";
    DTM obr8 = "";
    CQ obr9 = {};
    XCN[] obr10 = [{}];
    ID obr11 = "";
    CWE obr12 = {};
    CWE[] obr13 = [{}];
    ST obr14 = "";
    ST obr15 = "";
    XCN[] obr16 = [{}];
    XTN obr17 = {};
    ST obr18 = "";
    ST obr19 = "";
    ST obr20 = "";
    ST obr21 = "";
    DTM obr22 = "";
    MOC obr23 = {};
    ID obr24 = "";
    ID obr25 = "";
    PRL obr26 = {};
    ST obr27 = "";
    XCN[] obr28 = [{}];
    EIP obr29 = {};
    ID obr30 = "";
    CWE[] obr31 = [{}];
    NDL obr32 = {};
    NDL[] obr33 = [{}];
    NDL[] obr34 = [{}];
    NDL[] obr35 = [{}];
    DTM obr36 = "";
    NM obr37 = "";
    CWE[] obr38 = [{}];
    CWE[] obr39 = [{}];
    CWE obr40 = {};
    ID obr41 = "";
    ID obr42 = "";
    CWE[] obr43 = [{}];
    CNE obr44 = {};
    CNE[] obr45 = [{}];
    CWE[] obr46 = [{}];
    CWE[] obr47 = [{}];
    CWE obr48 = {};
    CWE obr49 = {};
    CWE obr50 = {};
    EI obr51 = {};
    EI obr52 = {};
    CX[] obr53 = [{}];
    EIP obr54 = {};
};

public const OBR_SEGMENT_NAME = "OBR";
