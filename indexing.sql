
DROP DATABASE IF EXISTS indexed_cars;

DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing

SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';
--37.419 ms
--2.400 MS

SELECT DISTINCT model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--36.819 ms
--3.539 MS

SELECT DISTINCT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';
--55.030 ms
--3.303

SELECT DISTINCT * FROM car_models
WHERE year BETWEEN 2010 AND  2015;
--175.879 ms

SELECT DISTINCT * FROM car_models
WHERE year = 2010;
--63.658 ms

\timing


\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;


\c apple;
