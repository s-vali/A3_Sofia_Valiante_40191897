LOAD CSV WITH HEADERS FROM 'file:///movie_table.csv' AS row merge (m:Movie {movieId: toInteger(row.movie_id)}) set m.title = row.title, m.description = row.description, m.rating = toInteger(row.rating), m.releaseYear = toInteger(row.release_year), m.runtime = toInteger(row.runtime), m.watchmodeId = row.watchmode_id, m.genre = row.genre, m.language = row.language
load csv with headers from 'file:///actors-good.csv' as row merge (a:Actor {actorId: toInteger(row.movie_id)}) set a.firstname = row.firstname, a.lastname = row.lastname
load csv with headers from 'file:///actors-good.csv' as row match (a:Actor {actorId: toInteger(row.movie_id)}) match (m:Movie {movieId: toInteger(row.movie_id)}) merge (a)-[r:ACTED_IN]->(m)
load csv with headers from 'file:///country_table.csv' as row merge (c:Country {countryId: toInteger(row.country_id)}) set c.movieId = toInteger(row.movie_id), c.countryName = row.country_name, c.shortcode = row.shortcode
load csv with headers from 'file:///keyword_table.csv' as row merge (k:Keyword {keywordId: toInteger(row.keyword_id)}) set k.movieId = row.movie_id, k.keyword = row.keyword
load csv with headers from 'file:///actors-good.csv' as row match (c:Country {countryId: toInteger(row.country_id)}) match (m:Movie {movieId: toInteger(row.movie_id)}) merge (c)-[h:HOSTS]->(m)
