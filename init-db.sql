CREATE DATABASE IF NOT EXISTS pdjd_db;

DO
$do$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_catalog.pg_user
      WHERE  usename = 'pdjd_user') THEN

      CREATE USER pdjd_user WITH PASSWORD 'pdjd_password';
   END IF;
END
$do$;

GRANT ALL PRIVILEGES ON DATABASE pdjd_db TO pdjd_user;
