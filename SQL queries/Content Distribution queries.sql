

/*Content Distribution:
 Q1. How many movies and TV shows are there in total?*/

 select count(*) from netflix_titles

 /*Content Distribution:
 Q2. What is the breakdown of movies vs. TV shows in the data? */

 SELECT TOP 1 
 (select count(*) from netflix_titles where type = 'movie') as total_movies,
 (select count(*) from netflix_titles where type = 'TV show') as Total_shows
 from netflix_titles 
 
 /*Content Distribution:
 Q3. Total TV showes and movies marked under comedy genres? */
 
 select count(*) from netflix_titles where listed_in like '%Comed%'

  /*Content Distribution:
 Q4. Total TV showes and movies marked under comedy Romantic? */

 select count(*) from netflix_titles where listed_in like '%Roman%'

/*Content Distribution:
 Q5. Compare the number of titles released per year, arrrange it in ascending order */

 select release_year, count(*) as total_release from netflix_titles
 group by release_year
 order by release_year

 /*Content Distribution:
 Q5.Select year where there was maximum release and count to release*/

 select  top 1 release_year, count(*) as total_release from netflix_titles
 group by release_year
 order by release_year desc

 select * from netflix_titles
