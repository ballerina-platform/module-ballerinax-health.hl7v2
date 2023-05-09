
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
# + dsp1 - Segment Record Field
# + dsp2 - Segment Record Field
# + dsp3 - Segment Record Field
# + dsp4 - Segment Record Field
# + dsp5 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "DSP",
    required: false,
    maxReps: 0,
    fields: {
        "dsp1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "dsp2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "dsp3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "dsp4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "dsp5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        }
    }
}
public type DSP record {
    *hl7v2:Segment;
    string name = DSP_SEGMENT_NAME;
    SI dsp1 = -1;
    SI dsp2 = -1;
    TX dsp3 = "";
    ST dsp4 = "";
    TX dsp5 = "";
};

public const DSP_SEGMENT_NAME = "DSP";
