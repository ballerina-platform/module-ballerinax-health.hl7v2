import ballerinax/health.hl7v2;
public const ACK_MESSAGE_TYPE = "ACK"; 

# General acknowledgment message.
#
# + name - Message name  
# + msh - Message header segment  
# + msa - Message acknowledgement segment  
# + err - Error segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR}
    }
}
public type ACK record {
    *hl7v2:Message;
    string name = ACK_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
};
