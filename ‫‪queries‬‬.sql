SELECT * FROM drivers WHERE ‫‪first_name‬‬ = 'parham';


SELECT * FROM drivers WHERE (SELECT count(id) FROM ‫‪rides‬‬ WHERE  ‫‪rides‬‬.‫‪driver‬‬ = drivers.id) > 20;


SELECT * FROM drivers WHERE (SELECT count(id) FROM  ‫‪rides‬‬ WHERE ‫‪rides‬‬.‫‪driver‬‬ = drivers.id and ‫‪rides‬‬.‫‪passenger‬‬ = 2) > 2;

SELECT * FROM ‫‪passengers‬‬ WHERE (SELECT count(id) FROM  ‫‪rides‬‬ WHERE ‫‪passenger‬‬ = ‫‪passengers‬‬.id and ‫‪driver‬‬ = 2) > 1;

DELETE FROM ‫‪discounts‬‬ WHERE ‫‪available‬s‬ = 0;

SELECT avg(‫‪score‬‬) FROM ‫‪rides‬‬ WHERE ‫‪driver‬‬ = 1;

SELECT d FROM drivers d natural join ‫‪rides‬‬ r WHERE r.‫‪score‬‬ = (SELECT max(‫‪score‬‬) FROM ‫‪rides‬‬);

SELECT * FROM ‫‪rides‬‬ WHERE ‫‪discount‬‬ = 'asdD';

SELECT * FROM ‫‪rides‬‬ WHERE ‫‪source_lat‬‬ = 100 and ‫‪source_lng‬‬ = 110;

SELECT * FROM ‫‪rides‬‬ WHERE ‫‪start_time‬‬ = '2016-06-22 19:10:25-07';

SELECT * FROM ‫‪rides‬‬ WHERE ‫‪finish_time‬‬ = '2016-06-22 19:10:25-07';

UPDATE ‫‪discounts‬‬
    set ‫‪available‬s‬ = ‫‪available‬s‬ - 1
WHERE ‫‪passenger‬‬ = 1;

SELECT * FROM ‫‪rides‬‬ WHERE extract(DAY FROM ‫‪start_time‬‬) = 10 AND extract(DAY FROM ‫‪finish_time‬‬) = 10
AND ‫‪final_price‬‬ > (SELECT avg(‫‪final_price‬‬) FROM ‫‪rides‬‬  WHERE extract(DAY FROM ‫‪start_time‬‬) = 10 AND extract(DAY FROM ‫‪finish_time‬‬) = 10);

SELECT d FROM drivers d natural join ‫‪rides‬‬ r
WHERE extract(DAY FROM r.‫‪start_time‬‬) = 10 AND extract(DAY FROM r.‫‪finish_time‬‬) = 10 AND (SELECT avg(‫‪score‬‬) FROM ‫‪rides‬‬ WHERE extract(DAY FROM r.‫‪start_time‬‬) = 10 AND extract(DAY FROM r.‫‪finish_time‬‬) = 10) > 4;