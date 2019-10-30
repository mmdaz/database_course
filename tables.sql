create table if not exists drivers
(
    id             serial PRIMARY KEY,
    ‫‪first_name‬‬ varchar(20) NOT NULL,
    last_name      varchar(20) NOT NULL,
    status         INTEGER     NOT NULL,
    phone          varchar     NOT NULL
);

create table if not exists ‫‪passengers‬‬
(
    id             serial PRIMARY KEY,
    ‫‪first_name‬‬ varchar(20) NOT NULL,
    last_name      varchar(20) NOT NULL,
    phone          varchar     NOT NULL
);

create table if not exists ‫‪discounts‬‬
(

    ‫‪code‬‬       varchar(20) NOT NULL PRIMARY KEY  ,
    ‫‪passenger‬‬  INTEGER REFERENCES ‫‪passengers‬‬ (id),
    ‫‪available‬s‬ INTEGER     NOT NULL,
    ‫‪discount‬‬   INTEGER     NOT NULL check ( ‫‪discount‬‬ > 0 and ‫‪discount‬‬ < 100 )

);

create table if not exists ‫‪rides‬‬
(
    id                           serial PRIMARY KEY,
    ‫‪passenger‬‬                INTEGER REFERENCES ‫‪passengers‬‬ (id),
    ‫‪driver‬‬                   INTEGER references drivers (id),
    ‫‪source_lat‬‬               float     NOT NULL,
    ‫‪source_lng‬‬               float     NOT NULL,
    ‫‪destination‬‬_lat‬‬        float     NOT NULL,
    ‫‪destination‬‬_lng‬‬        float     NOT NULL,
    ‫‪second_destination‬‬_lat‬‬ float     NOT NULL,
    ‫‪second_destination‬‬_lng‬‬ float     NOT NULL,
    ‫‪‫‪total_price‬‬            INTEGER   NOT NULL,
    ‫‪final_price‬‬              INTEGER   NOT NULL,
    ‫‪discount‬‬                 varchar(20)   REFERENCES ‫‪discounts‬‬(‫‪code‬‬) ,
    ‫‪start_time‬‬               timestamp NOT NULL,
    ‫‪finish_time‬‬              timestamp NOT NULL,
    ‫‪score‬‬                    INTEGER   NOT NULL check ( ‫‪score‬‬ > 0 and ‫‪score‬‬ < 6 )

);



