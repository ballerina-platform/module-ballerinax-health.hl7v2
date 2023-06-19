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

# This file contains the definitions of the core HL7 data types.
 
# Composite HL7 datatype. This is constructed from composition of multiple other data types.
@TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CompositeType record {
};

# Primitive HL7 datatype.
#
# + value - data held by the data instance
@TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PrimitiveType record {
    any value;
};

# HL7 segment : A segment is a logical grouping of data fields.
#
# + name - Name of the segment
public type Segment record {
    string name;
};

# HL7 segment component which is a grouping of a set of segments.
#
# + name - Name of the component
# + isRequired - Is required
@SegmentComponentDefinition {
    required: false,
    maxReps: ()
}
public type SegmentComponent record {
    string name;
    boolean isRequired = false;
};

# HL7 message which is also called as trigger event.
#
# + name - Name of the HL7 message
@MessageDefinition {
    segments: {},
    groups: {}
}
public type Message record {
    string name;
};

# Generic HL7 message which use to parse/construct any custom HL7 message.
#
# + name - Name of the message
# + segments - Segments included in the message
public type GenericMessage record {
    *Message;
    string name?;
    [Segment...] segments;
};
