# Canadian Energy Flows Super Sankey

Inspired by the work of Otherlabs who created a detailed sankey diagram of [US energy flows](http://departmentof.energy/).

## Setup

To setup your environment, either run
```
conda config --add channels conda-forge
conda config --set channel_priority strict
conda env create --file environment.yaml
conda activate supersankey
python -m ipykernel install --user --name=supersankey
```

Make sure to activate the environment whenever working on the project
```
conda activate supersankey
```

The required datasets can be downloaded by running the script from the root directory of the project
```
cd data
bash download_data.sh
```

Any required datasets should be added to this list.

## Tools
For nice diff's of notebook's, you can change your git configuration with `nbdime config-git --enable`

[qgrid](https://github.com/quantopian/qgrid) allows easy interactive exploration of pandas dataframes


## Guide & Troubleshooting
- If packages are missing, try installing using `conda` (preferred over pip since some packages are jupyter extensions, and conda takes care of their setup).
- Make sure to add newly required packages to environment.yml (conda doesn't add them automatically):w

