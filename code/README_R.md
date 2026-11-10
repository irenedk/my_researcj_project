# Research Software & Analysis Code

## 🛠️ Software Architecture
This directory contains the modular R code and analysis scripts. To ensure **Reusability (R in FAIR)**, the code is split into functional components and execution steps.

### 📂 Directory Map
*   **`code/`**: Contains pure R functions (tools). These files should only define functions, not execute them.
*   **`code/`**: Also contains the linear analysis pipeline. Scripts are numbered to indicate the order of execution (e.g., `01_clean.R`, `02_analyze.R`).

---

## 🚀 Execution Workflow
To reproduce the analysis from scratch, run the scripts in the following order:

1.  `code/01_data_import.R` - Fetches and validates raw data.
2.  `code/02_preprocessing.R` - Cleans and exports to `data/processed/`.
3.  `code/03_statistical_analysis.R` - Generates models and tests.
4.  `code/04_visualization.R` - Saves plots to `outputs/figures/`.

---

## 📦 Dependency Management
To ensure **Interoperability**, this project uses [renv](https://rstudio.github.io/renv/) to lock package versions.
*   **Restore environment:** Run `renv::restore()` in the R console before running any scripts.
*   **Requirements:** R version `>= 4.1.0`.

---

## 📜 Coding Standards & Open Science
*   **Style:** Follows the [tidyverse style guide](https://style.tidyverse.org).
*   **Documentation:** All functions in `/R` must be documented using `roxygen2` comments.
*   **Testing:** Critical functions are verified using the `testthat` framework in the `/tests` directory.
*   **License:** This code is licensed under the **MIT License** (see root `LICENSE`).

---

## 🏷️ Metadata & Citation
This software is described in the root `codemetadata.json` and `CITATION.cff` files. 
*   **Cite this code:** Use the "Cite this repository" sidebar on GitHub or see the `CITATION.cff` file for DOI details.

---
*Maintained by: [Your Name/ORCID]*  
*Adhering to FAIR4RS guidelines for the Netherlands.*
