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

# The role segment contains the data necessary to add, update, correct, and delete from the record persons involved
#
# + name - Segment name  
# + rol1 - Role Instance ID 
# + rol2 - Action Code  
# + rol3 - Role  
# + rol4 - Role Person  
# + rol5 - Role Begin Date/Time  
# + rol6 - Role End Date/Time  
# + rol7 - Role Duration  
# + rol8 - Role Action
public type ROL record {
    *hl7v2:Segment;
    string name = ROL_SEGMENT_NAME;
    EI rol1 = {};
    ID rol2 = "";
    CE rol3 = {};
    XCN rol4 = {};
    TS rol5 = {};
    TS rol6 = {};
    CE rol7 = {};
    CE rol8 = {};
};

public const ROL_SEGMENT_NAME = "ROL";
