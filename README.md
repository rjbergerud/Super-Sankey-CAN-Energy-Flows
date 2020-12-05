# Canadian Energy Flows Super Sankey

Inspired by the work of Otherlabs who created a detailed sankey diagram of [US energy flows](http://departmentof.energy/).

## Setup

To setup your environment, either run
```
conda env create --file environment.yaml
conda activate supersankey
python -m ipykernel install --user --name=supersankey
```


The required datasets can be downloaded by running the script from the root directory of the project
```
cd data
bash download_data.sh
```

Any required datasets should be added to this list.
