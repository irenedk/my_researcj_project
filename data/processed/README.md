# Processed Data Directory

## ⚡ Reproducibility Rule
All files in this directory are **derived products**. They must be generated exclusively by running the scripts located in the `/scripts` directory. 

> **Warning:** Never manually edit files in this folder. Any manual changes will be overwritten the next time the processing pipeline is executed.

---

## Data Provenance (Lineage)

This folder contains data that has been cleaned, transformed, or aggregated for analysis.

| Processed File | Source Script | Description of Transformation |
| :--- | :--- | :--- |
| `clean_survey.csv` | `code/01_cleaning.R` | Handles missing values, renames columns to snake_case. |
| `aggregated_metrics.rds` | `code/02_analysis.R` | Calculated means and SDs grouped by category. |

---

## Interoperability Standards
To maintain **FAIR Interoperability**, data in this folder follows these standards:
*   **Format:** Preferred open formats (e.g., `.csv`, or `.rds` for R-specific performance).
*   **Encoding:** UTF-8.
*   **Naming:** [ISO 8601](https://www.iso.org) for dates (YYYY-MM-DD) and `snake_case` for variables.
*   **Unit System:** SI Units (e.g., meters, kilograms) unless otherwise specified.

---

## Storage & Git Strategy
*   **Large Files:** Files exceeding 50MB are ignored by Git and should be managed via [Git LFS](https://git-lfs.github.com) or stored on a persistent research repository (e.g., [SURF Drive](https://www.surf.nl) or [DataverseNL](https://dataverse.nl)).
*   **Temporary Files:** Cache files or intermediate joins should be excluded via `.gitignore`.

---
*Maintained by: [Your Name/ORCID]*  
*Part of the FAIR4RS Workflow for Open Science.*
