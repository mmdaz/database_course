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
    request_id  serial references request(request_id),
    amount  int
);

create table comment(
    comment_id  serial  primary key,
    owner_id    serial references owner(owner_id),
    context    varchar(50),
    reply_to    serial references comment(comment_id)
);


CREATE OR REPLACE FUNCTION update_time()
  RETURNS trigger AS
$BODY$
BEGIN
    UPDATE url SET created_at = CURRENT_TIMESTAMP;
   RETURN NEW;
END;
$BODY$;

CREATE OR REPLACE FUNCTION update_status()
  RETURNS trigger AS
$BODY$
BEGIN
   UPDATE url SET service_status = 0;
   RETURN NEW;
END;
$BODY$;


CREATE TRIGGER update_url_time
  AFTER INSERT
  ON url
  FOR EACH ROW
  EXECUTE PROCEDURE update_time();

CREATE TRIGGER update_url_status
    BEFORE DELETE ON url
        FOR EACH ROW
            EXECUTE PROCEDURE update_status();
