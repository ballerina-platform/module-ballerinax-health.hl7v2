## Overview

The `health.hl7v2.utils.v2tofhirr4` package provides pre-built HL7 v2.x to FHIR R4 mapping functionality. It implements the [HL7 version 2 to FHIR implementation guide](https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/datatype_maps.html).

### Key Features

- Transform HL7 v2 messages into FHIR R4 Bundles
- Pre-built mappings for HL7 v2 segments and data types to FHIR R4 resources
- Low-level helper functions for working directly with HL7 v2 segments
- Based on the official HL7 v2 to FHIR implementation guide

### Note: 
From Ballerina Swan Lake Update 10 upwards, `--optimize-dependency-compilation` flag is
introduced to optimize the memory usage during the compilation time. 
Use the flag in the build command as follows,

`bal build --optimize-dependency-compilation`

or add as a config in the `Ballerina.toml` file.

```
[build-options]
optimizeDependencyCompilation = true
```
