// Add all lh nodes
//skip null values
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MERGE (c:Category {name: row.source});

// Add all rh nodes
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MERGE (c:Category {name: row.target});

// Add edges
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MATCH (s:Category {name: row.source})
MATCH (t:Category {name: row.target})
CREATE (s)-[:FLOW {value: row.value}]->(t);
