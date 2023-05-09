// Copyright (c) 2022, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.

import ballerinax/health.hl7v2;

# Data type description
#
# + cd1 - Data type field
# + cd2 - Data type field
# + cd3 - Data type field
# + cd4 - Data type field
# + cd5 - Data type field
# + cd6 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CD record {
    *hl7v2:CompositeType;
    CM_WVI cd1 = {};
    CM_CD_ELECTRODE cd2 = "";
    CM_CSU cd3 = "";
    CM_CCP cd4 = "";
    NM cd5 = -1;
    CM_MDV cd6 = "";
};
