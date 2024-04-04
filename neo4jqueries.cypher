match (a:Actor)-[r:ACTED_IN]->(m:Movie) where a.firstname="Tom" return a, r, m;
