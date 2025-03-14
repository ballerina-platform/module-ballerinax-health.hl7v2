
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
import ballerinax/health.hl7v2;

@hl7v2:SegmentComponentDefinition {
    required: true,
    maxReps: -1
}
public type OPL_O37_ORDER record {
    *hl7v2:SegmentComponent;
    string name = OPL_O37_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    NK1[] nk1 = [{}];
    FT1[] ft1 = [{}];
    CTI[] cti = [{}];
    BLG blg?;
    OPL_O37_PATIENT opl_o37_patient?;
    OPL_O37_SPECIMEN[] opl_o37_specimen = [{spm: {}}];
    OPL_O37_PRIOR_RESULT opl_o37_prior_result?;
};

public const OPL_O37_ORDER_SEGMENT_COMPONENT = "OPL_O37_ORDER";
