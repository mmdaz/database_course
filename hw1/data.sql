INSERT INTO drivers (id, ‫‪first_name‬‬, last_name, status, phone) VALUES (1, 'f_driver_1', 'l_driver_1', 2, '123456789');
INSERT INTO drivers (id, ‫‪first_name‬‬, last_name, status, phone) VALUES (2, 'f_driver_2', 'l_driver_2', 5, '321456987');
INSERT INTO drivers (id, ‫‪first_name‬‬, last_name, status, phone) VALUES (3, 'f_driver_3', 'l_driver_3', 7, '123547896');

INSERT INTO ‫‪passengers‬‬ (id, ‫‪first_name‬‬, last_name, phone) VALUES (1, 'f_passenger_1', 'l_passenger_1', '123465489');
INSERT INTO ‫‪passengers‬‬ (id, ‫‪first_name‬‬, last_name, phone) VALUES (2, 'f_passenger_2', 'l_passenger_2', '1239879789');
INSERT INTO ‫‪passengers‬‬ (id, ‫‪first_name‬‬, last_name, phone) VALUES (3, 'f_passenger_3', 'l_passenger_3', '546456789');

INSERT INTO ‫‪discounts‬‬ (‫‪code‬‬, ‫‪passenger‬‬, ‫‪available‬s‬, ‫‪discount‬‬) VALUES ('asdf', 1, 3, 50);
INSERT INTO ‫‪discounts‬‬ (‫‪code‬‬, ‫‪passenger‬‬, ‫‪available‬s‬, ‫‪discount‬‬) VALUES ('asdD', 2, 2, 40);
INSERT INTO ‫‪discounts‬‬ (‫‪code‬‬, ‫‪passenger‬‬, ‫‪available‬s‬, ‫‪discount‬‬) VALUES ('asssd', 3, 4, 30);

INSERT INTO ‫‪rides‬‬ (id, ‫‪passenger‬‬, ‫‪driver‬‬, ‫‪source_lat‬‬, ‫‪source_lng‬‬, ‫‪destination‬‬_lat‬‬, ‫‪destination‬‬_lng‬‬,
                       ‫‪second_destination‬‬_lat‬‬, ‫‪second_destination‬‬_lng‬‬, ‫‪‫‪total_price‬‬, ‫‪final_price‬‬, ‫‪discount‬‬,
                       ‫‪start_time‬‬, ‫‪finish_time‬‬, ‫‪score‬‬) VALUES (1, 1, 1, 100.4, 100.4, 98.6, 98.6, 97, 97, 10000, 150000,
                                                                           'asdf', '2016-06-22 19:10:25-07',
                                                                           '2016-06-22 21:10:25-07', 3);


INSERT INTO ‫‪rides‬‬ (id, ‫‪passenger‬‬, ‫‪driver‬‬, ‫‪source_lat‬‬, ‫‪source_lng‬‬, ‫‪destination‬‬_lat‬‬, ‫‪destination‬‬_lng‬‬,
                       ‫‪second_destination‬‬_lat‬‬, ‫‪second_destination‬‬_lng‬‬, ‫‪‫‪total_price‬‬, ‫‪final_price‬‬, ‫‪discount‬‬,
                       ‫‪start_time‬‬, ‫‪finish_time‬‬, ‫‪score‬‬) VALUES (2, 2, 2, 102.4, 98.4, 95.6, 93.6, 96, 100, 100000, 1500000,
                                                                           'asdD', '2016-07-22 19:10:25-07',
                                                                           '2016-07-22 21:10:25-07', 3);


INSERT INTO ‫‪rides‬‬ (id, ‫‪passenger‬‬, ‫‪driver‬‬, ‫‪source_lat‬‬, ‫‪source_lng‬‬, ‫‪destination‬‬_lat‬‬, ‫‪destination‬‬_lng‬‬,
                       ‫‪second_destination‬‬_lat‬‬, ‫‪second_destination‬‬_lng‬‬, ‫‪‫‪total_price‬‬, ‫‪final_price‬‬, ‫‪discount‬‬,
                       ‫‪start_time‬‬, ‫‪finish_time‬‬, ‫‪score‬‬) VALUES (3, 3, 3, 100.4, 100.4, 98.6, 98.6, 97, 97, 120000, 200000,
                                                                           'asssd', '2016-06-23 19:10:25-07',
                                                                           '2016-06-23 21:10:26-07', 3);