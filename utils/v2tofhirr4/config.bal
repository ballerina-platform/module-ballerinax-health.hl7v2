public type V2ToFhirCustomServiceConfig record {
    string baseUrl;
    map<FhirEndpointConfig> segmentToFhirEndpointConfigs;
};

public type FhirEndpointConfig record {
    string url;
    boolean overrideResult = false;
};
