create table owner(
    owner_id    serial  primary key,
    first_name  varchar(50),
    last_name   varchar(50),
    phone_number varchar(50) unique
);

create table url(
    url_id  serial  primary key,
    owner_id    serial  references owner(owner_id),
    context     varchar(100),
    short_context   varchar(50),
    service_status  varchar(20),
    created_at      timestamp,
    expired_at      timestamp,
    is_valid        boolean,
    internal_access_count   int,
    external_access_count   int

);

create table request(
    request_id  serial  primary key,
    status      varchar(20),
    url_id      serial references url(url_id),
    owner_id    serial references owner(owner_id)
);

create table factor(
    factor_id   serial  primary key,
    url_id  serial references request(url_id),
    amount  int
);

create table comment(
    comment_id  serial  primary key,
    context    varchar(50)
);

create table apply(
    url_id  serial references request(url_id)
);

