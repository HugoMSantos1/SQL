/* These are exercises from the SQLZOO website.  The purpose is to serve 
as a refresher */

-- SUM and COUNT --


/* Total world population

1.
Show the total population of the world.

world(name, continent, area, population, gdp)*/

SELECT SUM(population)
FROM world;


/* List of continents

2.
List all the continents - just once each.*/

Select DISTINCT continent
FROM world;


/* GDP of Africa

3.
Give the total GDP of Africa*/

Select SUM(gdp)
FROM world
WHERE continent = 'Africa';


/* Count the big countries

4.
How many countries have an area of at least 1000000*/

Select COUNT(name)
FROM world
WHERE area > 1000000;


/* Baltic states population

5.
What is the total population of ('Estonia', 'Latvia', 'Lithuania')*/

Select SUM(population)
FROM world
WHERE name IN('Estonia', 'Latvia', 'Lithuania');


/* Using GROUP BY and HAVING
You may want to look at these examples: Using GROUP BY and HAVING.

Counting the countries of each continent

6.
For each continent show the continent and number of countries.*/

Select continent, COUNT(continent)
FROM world
GROUP BY continent;


/* Counting big countries in each continent

7.
For each continent show the continent and number of countries with populations of at least 10 million.*/

Select continent, COUNT(name) AS Countries
FROM world
WHERE population > 10000000
GROUP BY continent;


/* Counting big continents
8.

List the continents that have a total population of at least 100 million.*/

Select continent
FROM world
WHERE population >= 100000000
GROUP By Continent;

