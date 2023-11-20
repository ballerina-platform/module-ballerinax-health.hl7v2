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

# Data type description
#
# + cm_ndl1 - name
# + cm_ndl2 - start date/time
# + cm_ndl3 - end date/time
# + cm_ndl4 - point of care (IS)
# + cm_ndl5 - room
# + cm_ndl6 - bed
# + cm_ndl7 - facility (HD)
# + cm_ndl8 - location status
# + cm_ndl9 - person location type
# + cm_ndl10 - building
# + cm_ndl11 - floor
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_NDL record {
    *hl7v2:CompositeType;
    CN cm_ndl1 = {};
    TS cm_ndl2 = {};
    TS cm_ndl3 = {};
    IS cm_ndl4 = "";
    IS cm_ndl5 = "";
    IS cm_ndl6 = "";
    HD cm_ndl7 = {};
    IS cm_ndl8 = "";
    IS cm_ndl9 = "";
    IS cm_ndl10 = "";
    ST cm_ndl11 = "";
};
