# Code

This folder contains the analysis code for the Python research-software example.

## Notebooks

| File | Purpose |
| --- | --- |
| `00_sample_analysis.ipynb` | Load and clean Palmer Penguins data, fit a linear regression, produce a figure, and export the results. |
| `00_sample_analysis.R` | Original R script, kept temporarily as a reference for the Python conversion. |

## How to run the notebook

1. Follow the **Installation and execution** instructions in the [main README](../README.md) to create a Python environment and install `requirements.txt`.
2. Open the repository folder in VS Code, then open `code/00_sample_analysis.ipynb`.
3. Select the Python kernel from the newly created `.venv` environment in the upper-right corner.
4. Choose **Run All** to execute the cells in order.

Run from the repository root or its `code/` folder. The notebook locates the project root and creates missing output directories automatically. If you launch it from elsewhere, change the working directory to the repository root first.

## Input data and processing

The notebook loads the Palmer Penguins dataset using the Python `palmerpenguins` package. It does not require a separate input CSV. Rows with missing `bill_length_mm` or `body_mass_g` are excluded, matching the original R script.

It fits the ordinary least-squares model:

```text
body_mass_g ~ bill_length_mm
```

`species` is used to color and shape points in the figure, but is **not** included as a regression predictor. The overall fitted line includes a 95% confidence interval for the mean estimate.

## Generated outputs

| Path (relative to repository root) | Contents |
| --- | --- |
| `data/processed/cleaned_penguins.csv` | Cleaned table used for regression |
| `outputs/reports/regression_results.txt` | OLS model summary |
| `outputs/figures/fig-01-penguin-regression.png` | High-resolution plot (300 dpi) |
| `outputs/figures/fig-01-penguin-regression.pdf` | Vector version of the same plot |

These are generated outputs and can be recreated by running the notebook again. Avoid committing large or changing generated files unless they are intentional research deliverables.

## Reproducibility notes

- The analysis contains no random sampling, so a random seed is not needed.
- Package dependencies are specified in [`../requirements.txt`](../requirements.txt).
- Use a fresh environment and execute the notebook from top to bottom to verify the workflow.
- Compatible dependency ranges make installation easier, but do **not** guarantee identical versions across machines; for exact computational reproducibility, pin and test exact dependency versions in a dedicated lockfile.
