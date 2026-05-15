// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# DSP segment. Display Data The DSP segment is used to contain data that has been preformatted by the sender for display. The semantic content of the data is lost; the data is simply treated as lines of text.
# + name - Segment Name
# + dsp1 - Set Id - Display Data
# + dsp2 - Display Level
# + dsp3 - Data Line
# + dsp4 - Logical Break Point
# + dsp5 - Result Id

@hl7v2:SegmentDefinition {
    name: "DSP",
    required: false,
    maxReps: 0,
    fields: {
        "dsp1": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "dsp2": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "dsp3": {
            required: true,
            length: 300,
            maxReps: 1,
            dataType: TX
        },
        "dsp4": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ST
        },
        "dsp5": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: TX
        }

    }
}
public type DSP record {
    *hl7v2:Segment;
    string name = DSP_SEGMENT_NAME;
    SI dsp1 = "";
    SI dsp2 = "";
    TX dsp3 = "";
    ST dsp4 = "";
    TX dsp5 = "";
};

public const DSP_SEGMENT_NAME = "DSP";
