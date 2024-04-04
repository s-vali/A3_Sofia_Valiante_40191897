match (a:Actor)-[r:ACTED_IN]->(m:Movie) where a.firstname="Tom" return a, r, m;
match (m1:Movie) where m1.watchmodeId is null return count(*) as nb_of_movies union match (m2:Movie) where m2:watchmodeId is not null return count(*) as nb_of_movies;
match (m:Movie) where m.releaseYear > 2023 and m.rating >= 5 return m;
match (c:Country)-[h:HOSTS]->(m:Movie) where c.countryName = 'Canada' and c.countryName = 'United States' return c, h, m;
