## Overview

The `health.hl7v2commons` package holds the common implementations shared across all HL7 v2 versions from 2.3 to 2.8, enabling HL7 v2 based integrations in Ballerina.

### Key Features

- Core HL7 v2 common type definitions shared across HL7 v2 versions 2.3 to 2.8
- Reusable building blocks for the version-specific HL7 v2 packages
- Foundation for HL7 v2 integrations in healthcare workflows

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
