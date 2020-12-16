// Add all lh nodes
//skip null values
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MERGE (c:Category {name: row.source, level: toInteger(row.level)});

// Add all rh nodes
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MERGE (c:Category {name: row.target, level: toInteger(row.level) - toInteger(1)});

// Add edges
LOAD CSV WITH HEADERS FROM 'file:///energy_sankey_current.csv' AS row
WITH row WHERE row.value IS NOT NULL
MATCH (s:Category {name: row.source})
MATCH (t:Category {name: row.target})
CREATE (s)-[:FEEDS {value: row.value}]->(t);

// MATCH o=(n)-[:FEEDS]->(d) WHERE n.level is not null and d.level is not null RETURN n,o,d ORDER BY n.level DESC
