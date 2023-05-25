import ballerinax/health.hl7v2;

public const ADT_A04_MESSAGE_TYPE = "ADT_A04";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + evn - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + rol - Message Record Field
# + nk1 - Message Record Field
# + pv1 - Message Record Field
# + pv2 - Message Record Field
# + db1 - Message Record Field
# + obx - Message Record Field
# + al1 - Message Record Field
# + dg1 - Message Record Field
# + drg - Message Record Field
# + gt1 - Message Record Field
# + acc - Message Record Field
# + ub1 - Message Record Field
# + ub2 - Message Record Field
# + pda - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: ROL},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "DB1": {name: "DB1", maxReps: -1, required: false, segmentType: DB1},
        "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: OBX},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: 1, required: false, segmentType: DRG},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC},
        "UB1": {name: "UB1", maxReps: 1, required: false, segmentType: UB1},
        "UB2": {name: "UB2", maxReps: 1, required: false, segmentType: UB2},
        "PDA": {name: "PDA", maxReps: 1, required: false, segmentType: PDA}
    }
}
public type ADT_A04 record {
    *hl7v2:Message;
    string name = ADT_A01_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    EVN evn?;
    PID pid?;
    PD1 pd1?;
    ROL[] rol = [];
    NK1[] nk1 = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    UB1 ub1?;
    UB2 ub2?;
    PDA pda?;
};