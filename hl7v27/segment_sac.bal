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
# + sac1 - External Accession Identifier
# + sac2 - Accession Identifier
# + sac3 - Container Identifier
# + sac4 - Primary (Parent) Container Identifier
# + sac5 - Equipment Container Identifier
# + sac6 - Withdrawn field
# + sac7 - Registration Date/Time
# + sac8 - Container Status
# + sac9 - Carrier Type
# + sac10 - Carrier Identifier
# + sac11 - Position in Carrier
# + sac12 - Tray Type - SAC
# + sac13 - Tray Identifier
# + sac14 - Position in Tray
# + sac15 - Location
# + sac16 - Container Height
# + sac17 - Container Diameter
# + sac18 - Barrier Delta
# + sac19 - Bottom Delta
# + sac20 - Container Height/Diameter/Delta Units
# + sac21 - Container Volume
# + sac22 - Available Specimen Volume
# + sac23 - Initial Specimen Volume
# + sac24 - Volume Units
# + sac25 - Separator Type
# + sac26 - Cap Type
# + sac27 - Additive
# + sac28 - Specimen Component
# + sac29 - Dilution Factor
# + sac30 - Treatment
# + sac31 - Temperature
# + sac32 - Hemolysis Index
# + sac33 - Hemolysis Index Units
# + sac34 - Lipemia Index
# + sac35 - Lipemia Index Units
# + sac36 - Icterus Index
# + sac37 - Icterus Index Units
# + sac38 - Fibrin Index
# + sac39 - Fibrin Index Units
# + sac40 - System Induced Contaminants
# + sac41 - Drug Interference
# + sac42 - Artificial Blood
# + sac43 - Special Handling Code
# + sac44 - Other Environmental Factors
@hl7v2:SegmentDefinition {
    name: "SAC",
    required: false,
    maxReps: 0,
    fields: {
        "sac1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sac7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "sac8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NA
        },
        "sac12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sac14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NA
        },
        "sac15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "sac16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "sac28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "sac30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "sac32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sac39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac40": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "sac41": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "sac42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sac43": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "sac44": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type SAC record {
    *hl7v2:Segment;
    string name = SAC_SEGMENT_NAME;
    EI sac1 = {};
    EI sac2 = {};
    EI sac3 = {};
    EI sac4 = {};
    EI sac5 = {};
    ST sac6 = "";
    DTM sac7 = "";
    CWE sac8 = {};
    CWE sac9 = {};
    EI sac10 = {};
    NA sac11 = {};
    CWE sac12 = {};
    EI sac13 = {};
    NA sac14 = {};
    CWE[] sac15 = [{}];
    NM sac16 = "";
    NM sac17 = "";
    NM sac18 = "";
    NM sac19 = "";
    CWE sac20 = {};
    NM sac21 = "";
    NM sac22 = "";
    NM sac23 = "";
    CWE sac24 = {};
    CWE sac25 = {};
    CWE sac26 = {};
    CWE[] sac27 = [{}];
    CWE sac28 = {};
    SN sac29 = {};
    CWE sac30 = {};
    SN sac31 = {};
    NM sac32 = "";
    CWE sac33 = {};
    NM sac34 = "";
    CWE sac35 = {};
    NM sac36 = "";
    CWE sac37 = {};
    NM sac38 = "";
    CWE sac39 = {};
    CWE[] sac40 = [{}];
    CWE[] sac41 = [{}];
    CWE sac42 = {};
    CWE[] sac43 = [{}];
    CWE[] sac44 = [{}];
};

public const SAC_SEGMENT_NAME = "SAC";
