# Raw Data Directory

## 🛑 Critical Rule: Immutable Data
Data in this folder must **never** be edited, renamed, or deleted. Any data cleaning or transformation must be performed via scripts located in the `/code` directory, with results saved to `/data/processed`.

---

## FAIR Metadata

### 1. Findability & Provenance
*   **Origin:** [Insert Source Name, e.g., name of meteorologicla or statistical institues, or Lab Experiment]
*   **Date Accessed:** YYYY-MM-DD
*   **Persistent Identifier (DOI/URL):** [Link to original data source]
*   **License:** [e.g., CC-BY-4.0]

### 2. Accessibility
List all data files that contains sensitive or private information or are too large for GitHub ( >50MB).
Each file should indicate their location and access protocol.

*Note: Make sure that private and sensitive data files are included in your .gitignore file.*

*   **Location:** [e.g., "Stored on University Secure Drive" or "DOI: Available on Zenodo"]
*   **Access Protocol:** [e.g., "Request access via Principal Investigator"]

### 3. Interoperability & Reusability (Data Dictionary)

| File Name | Format | Description | Variables/Columns |
| :--- | :--- | :--- | :--- |
| `raw_survey_v1.csv` | CSV | Initial respondent data | `id`, `age`, `score` |
| `sensor_logs.json` | JSON | Machine output logs | Timestamp, Voltage |

---

*This directory structure follows the FAIR4RS guidelines for Open Science in the Netherlands.*
