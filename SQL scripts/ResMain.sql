SET search_path TO "Industrial";
CREATE TABLE RESPONSE_MAIN2016 (
    id INTEGER NOT NULL PRIMARY KEY REFERENCES RESPONSE_OBJ(id)
);
SET search_path TO public;