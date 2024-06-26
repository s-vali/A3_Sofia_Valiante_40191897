match (a:Actor)-[r:ACTED_IN]->(m:Movie) where a.firstname="Tom" return a, r, m;
match (m1:Movie) where m1.watchmodeId is null return count(*) as nb_of_movies union match (m2:Movie) where m2:watchmodeId is not null return count(*) as nb_of_movies;
match (m:Movie) where m.releaseYear > 2023 and m.rating >= 5 return m;
create (c:Country {movieId:50, countryId:51, countryName:"United States", shortcode:"US"});
match (c:Country) match (m:Movie) where c.countryId=51 and m.movieId=50 merge (c)-[h:HOSTS]->(m) return *;
match (c:Country)-[h:HOSTS]->(m:Movie) where c.countryName = 'Canada' and c.countryName = 'United States' return c, h, m;
match (k:Keyword)-[d:DESCRIBES]->(m:Movie) return m.title, m.description, m.releaseYear, m.watchmodeId, count(*) as count order by(count) desc limit 2;
match (m:Movie) where m.language="English" return m order by(m.rating) desc limit 5;
match (m:Movie) where m.description="Batman faces off against the Joker in this intense crime thriller." return m;
