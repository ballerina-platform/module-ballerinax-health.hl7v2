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

# Annotation fields for HL7 field definition.
#
# + required - Whether the field is required, optional
# + length - Length of the field
# + maxReps - Maximum repetitions
# + dataType - Type of the field
public type HL7TypeDefinitionRecord record {
    boolean required;
    int? length;
    int? maxReps;
    typedesc dataType?;
};

# Annotation fields for HL7 segment definition.
#
# + name - Name of the segment
# + required - Whether the segment is required, optional
# + maxReps - Maximum repetitions
# + segmentType - Type of segment
# + fields - Field map
# + segmentComponentName - Segment component name
public type HL7SegmentDefinitionRecord record {
    string name;
    boolean required;
    int maxReps?;
    typedesc segmentType?;
    map<HL7TypeDefinitionRecord> fields?;
    string segmentComponentName?;
};

# Annotation fields for HL7 segment component definition.
#
# + required - Whether it is required, optional
# + maxReps - Maximum repetitions
# + segments - Segment map
public type HL7SegmentComponentDefinitionRecord record {
    boolean required;
    int? maxReps;
    map<HL7SegmentDefinitionRecord> segments?;
};

# Annotation fields for HL7 message definition.
#
# + segments - segment map of the HL7 message
# + groups - group map
public type HL7MessageDefinitionRecord record {
    map<HL7SegmentDefinitionRecord> segments;
    map<HL7SegmentComponentDefinitionRecord> groups?;
};

# Annotation type for HL7 data type definition.
public annotation HL7TypeDefinitionRecord TypeDefinition on type;
# Annotation type for HL7 segment definition.
public annotation HL7SegmentDefinitionRecord SegmentDefinition on type;
# Annotation type for HL7 segment component definition.
public annotation HL7SegmentComponentDefinitionRecord SegmentComponentDefinition on type;
# Annotation type for HL7 message definition.
public annotation HL7MessageDefinitionRecord MessageDefinition on type;
