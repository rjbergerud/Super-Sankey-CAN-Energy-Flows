import sys
import pandas as pd
import holoviews as hv
import panel as pn
from bokeh.resources import INLINE

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
sankey.opts(label_position='left', edge_color='target', node_color='index', cmap='tab20', height=800, node_padding=20)
panel_object = pn.pane.HoloViews(sankey)
pn.pane.HoloViews(sankey).save('build/sankey.html', embed=True, resources=INLINE)
