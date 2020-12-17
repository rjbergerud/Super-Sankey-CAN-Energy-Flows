import pandas as pd
import holoviews as hv
import panel as pn
from bokeh.resources import INLINE
import sys

if len(sys.argv) == 2:
    file_path = sys.argv[1]
    df = pd.read_csv(file_path)
    edges = df[['source', 'target', 'value']]
    edges = edges.dropna(how="any")
    edges = edges.fillna(0)
    edges = edges[edges['value'] != 0]
else:
    file_path = "data/sankey_example.csv"

hv.extension('bokeh')

sankey = hv.Sankey(edges, label='Energy Diagram')
sankey.opts(label_position='left', height=1400, width=2000, edge_color='target', node_color='index', cmap='tab20', node_padding=4)
panel_object = pn.pane.HoloViews(sankey)
pn.pane.HoloViews(sankey).save('build/sankey.html', embed=True, resources=INLINE)
