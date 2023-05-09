import ballerinax/health.hl7v2;

public const ADT_A09_MESSAGE_TYPE = "ADT_A09";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + evn - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + pv1 - Message Record Field
# + pv2 - Message Record Field
# + db1 - Message Record Field
# + obx - Message Record Field
# + dg1 - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1}
    }
}
public type ADT_A09 record {
    *hl7v2:Message;
    string name = ADT_A09_MESSAGE_TYPE;
    MSH msh?;
    EVN evn?;
    PID pid?;
    PD1 pd1?;
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    DG1[] dg1 = [];
};
