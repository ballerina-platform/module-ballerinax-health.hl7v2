
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
# + sac1 - Segment Record Field
# + sac2 - Segment Record Field
# + sac3 - Segment Record Field
# + sac4 - Segment Record Field
# + sac5 - Segment Record Field
# + sac6 - Segment Record Field
# + sac7 - Segment Record Field
# + sac8 - Segment Record Field
# + sac9 - Segment Record Field
# + sac10 - Segment Record Field
# + sac11 - Segment Record Field
# + sac12 - Segment Record Field
# + sac13 - Segment Record Field
# + sac14 - Segment Record Field
# + sac15 - Segment Record Field
# + sac16 - Segment Record Field
# + sac17 - Segment Record Field
# + sac18 - Segment Record Field
# + sac19 - Segment Record Field
# + sac20 - Segment Record Field
# + sac21 - Segment Record Field
# + sac22 - Segment Record Field
# + sac23 - Segment Record Field
# + sac24 - Segment Record Field
# + sac25 - Segment Record Field
# + sac26 - Segment Record Field
# + sac27 - Segment Record Field
# + sac28 - Segment Record Field
# + sac29 - Segment Record Field
# + sac30 - Segment Record Field
# + sac31 - Segment Record Field
# + sac32 - Segment Record Field
# + sac33 - Segment Record Field
# + sac34 - Segment Record Field
# + sac35 - Segment Record Field
# + sac36 - Segment Record Field
# + sac37 - Segment Record Field
# + sac38 - Segment Record Field
# + sac39 - Segment Record Field
# + sac40 - Segment Record Field
# + sac41 - Segment Record Field
# + sac42 - Segment Record Field
# + sac43 - Segment Record Field
# + sac44 - Segment Record Field
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
            dataType: SPS
        },
        "sac7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "sac8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "sac9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: CE
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
            dataType: CE
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
            dataType: CE
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
            dataType: CE
        },
        "sac25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "sac26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "sac27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "sac28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: CE
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
            dataType: CE
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
            dataType: CE
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
            dataType: CE
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
            dataType: CE
        },
        "sac40": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "sac41": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "sac42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "sac43": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "sac44": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
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
    SPS sac6 = {};
    TS sac7 = {};
    CE sac8 = {};
    CE sac9 = {};
    EI sac10 = {};
    NA sac11 = {};
    CE sac12 = {};
    EI sac13 = {};
    NA sac14 = {};
    CE[] sac15 = [{}];
    NM sac16 = "";
    NM sac17 = "";
    NM sac18 = "";
    NM sac19 = "";
    CE sac20 = {};
    NM sac21 = "";
    NM sac22 = "";
    NM sac23 = "";
    CE sac24 = {};
    CE sac25 = {};
    CE sac26 = {};
    CE[] sac27 = [{}];
    CE sac28 = {};
    SN sac29 = {};
    CE sac30 = {};
    SN sac31 = {};
    NM sac32 = "";
    CE sac33 = {};
    NM sac34 = "";
    CE sac35 = {};
    NM sac36 = "";
    CE sac37 = {};
    NM sac38 = "";
    CE sac39 = {};
    CE[] sac40 = [{}];
    CE[] sac41 = [{}];
    CE sac42 = {};
    CE[] sac43 = [{}];
    CE[] sac44 = [{}];
};

public const SAC_SEGMENT_NAME = "SAC";