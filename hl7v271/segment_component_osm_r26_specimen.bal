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

@hl7v2:SegmentComponentDefinition {
    required: false,
    maxReps: 0
}
public type OSM_R26_SPECIMEN record {
    *hl7v2:SegmentComponent;
    string name = OSM_R26_SPECIMEN_SEGMENT_COMPONENT;
    boolean isRequired = true;
    SPM spm;
    PRT[] prt = [{}];
    OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION osm_r26_subject_person_animal_identification?;
    OSM_R26_CONTAINER[] osm_r26_container = [{sac:{}}];
    OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION osm_r26_subject_population_location_identification?;
    OSM_R26_SPECIMEN_OBSERVATION[] osm_r26_specimen_observation = [{obx:{}}];
};

public const OSM_R26_SPECIMEN_SEGMENT_COMPONENT = "OSM_R26_SPECIMEN";