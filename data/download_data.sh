#!/usr/bin/env bash
# Layer 1
wget -nc https://www.cer-rec.gc.ca/open/imports-exports/electricity-exports-and-imports-annual.csv
wget -nc https://www.cer-rec.gc.ca/open/imports-exports/electricity-exports-and-imports-data-dictionary.csv
wget -nc https://www.cer-rec.gc.ca/open/imports-exports/data/imports-exports-data-visualization.csv
wget -nc https://www.cer-rec.gc.ca/open/imports-exports/natural-gas-exports-and-imports-annual.csv
wget -nc https://www.cer-rec.gc.ca/open/imports-exports/natural-gas-exports-and-imports-data-dictionary.csv

# Layer 2
wget -nc https://www150.statcan.gc.ca/n1/tbl/csv/25100029-eng.zip
unzip 25100029-eng.zip
