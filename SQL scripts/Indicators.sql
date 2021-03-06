CREATE TABLE INDICATORS_NAMES(
    id INTEGER PRIMARY KEY,
    indicator_title TEXT NOT NULL,
    indicator_type TEXT,
    sub_aim TEXT REFERENCES strategy_sub_aim(id)
);

CREATE TABLE INDICATORS(
    id INTEGER PRIMARY KEY,
    title_id INTEGER REFERENCES INDICATORS_NAMES(id),
    year_id INTEGER REFERENCES YEARS(id),
    indicator REAL,
    may_be_less BOOLEAN NOT NULL,
    may_be_more BOOLEAN NOT NULL
);

CREATE TABLE INDICATORS_AND_RESPONSE_OBJ(
    id_ind INTEGER REFERENCES INDICATORS_NAMES(id),
    id_resp_obj INTEGER REFERENCES RESPONSE_OBJ(id)
);