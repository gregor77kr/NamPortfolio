
show user

CREATE TABLESPACE blog
DATAFILE '/oradata/blog.dbf'
SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED;

COMMIT;

CREATE USER blog IDENTIFIED BY ehdgml90;
GRANT connect, resource, dba to blog;
COMMIT;

alter user blog DEFAULT TABLESPACE blog;
commit;