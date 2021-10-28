CREATE TABLE quality_of_life_index (
  country_name VARCHAR PRIMARY KEY,
  quality_of_life_index DECIMAL,
  rank  DECIMAL
);

CREATE TABLE happiness (
	country_name VARCHAR,
  	ladder_score DECIMAL,
  	ladder_score_rank DECIMAL,
  	gdp_per_capita DECIMAL,
  	social_support DECIMAL,
  	healthy_life_expectancy DECIMAL,
  	freedom_to_make_life_choices DECIMAL,
  	generosity DECIMAL,
  	perceptions_of_corruption DECIMAL,
  	FOREIGN KEY (country_name) REFERENCES quality_of_life_index(country_name)
);

CREATE TABLE corruption_perp (
  	country_name VARCHAR,
  	cpi_2020 INT,
  	cpi_2020_rank DECIMAL,
	FOREIGN KEY (country_name) REFERENCES quality_of_life_index(country_name)
);


SELECT * FROM quality_of_life_index;
SELECT * FROM happiness;
SELECT * FROM corruption_perp;

